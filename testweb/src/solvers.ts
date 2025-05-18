import { crc16cgaeaf, crc16changgong } from "./algorithms";
import { decAsHex } from "./utils";
import deputy from "./deputy.wasm?init";

// Vitest + WASM is a PITA: using the dynamic imports below is a workaround to get Vitest to work, but will make prod builds bigger
// Comment the line above and uncomment the lines below when you need to run Vitest
// A workaround for workaround!
// See also: https://github.com/vitest-dev/vitest/discussions/4283

// const deputy: () => Promise<WebAssembly.Instance> = async () => {
//   if (import.meta.env.SSR) {
//     const fs = await import("node:fs");
//       const wasmBuffer = fs.readFileSync(new URL("./deputy.wasm", import.meta.url));
//       const wasmModule = new WebAssembly.Module(wasmBuffer);
//       const instance = await WebAssembly.instantiate(wasmModule);
//       return instance;
//   } else {
//     const module = await import("./deputy.wasm?init")
//     return await module.default();
//   }
// }

function makeRandomUserId(): Uint8Array {
  // explanation: XYZW (decimal) => [0xXY, 0xZW]
  const randomIdNumber = Math.floor(Math.random() * 9999) + 1;
  return new Uint8Array([randomIdNumber >> 8, randomIdNumber & 0xff]).map(decAsHex);
}

function makeDatetimeArray(): number[] {
  // explanation: 2013/1/11 12:34:56 => [0x13, 0x01, 0x11, 0x12, 0x34, 0x56]
  const now = new Date().toLocaleString("zh-CN", { timeZone: "Asia/Shanghai" });
  const date = now
    .split(" ")[0]
    .split("/")
    .map((x) => parseInt(x));
  const time = now
    .split(" ")[1]
    .split(":")
    .map((x) => parseInt(x));
  const datetimeArrayDecimal = [date[0] % 100, ...date.slice(1), ...time];
  return datetimeArrayDecimal.map(decAsHex);
}

interface Deputy {
  makeKey: ($0: number, $1: number, $2: number, $3: number) => void;
  memory: WebAssembly.Memory;
}

async function makeUnlockKey(array: Uint8Array): Promise<Uint8Array> {
  const { makeKey, memory } = (await deputy()).exports as unknown as Deputy;
  if (array.length !== 4) throw new Error("WATERCTL INTERNAL Bad unlock request");
  // @ts-expect-error: we have already checked the length
  makeKey(...array);
  const key = new Uint32Array(memory.buffer)[524];
  return new Uint8Array([(key >> 24) & 0xff, (key >> 16) & 0xff, (key >> 8) & 0xff, key & 0xff]);
}

export async function makeUnlockResponse(unlockRequestBuffer: ArrayBuffer, deviceName: string): Promise<Uint8Array> {
  const unlockRequest = new Uint8Array(unlockRequestBuffer);
  const unknownByte = unlockRequest[5]; // unknown, but we only need to echo it back
  const nonceBytes = unlockRequest.slice(6, 8); // not nonce in crypto sense, it's an auto-incrementing number and used for key calculation
  const mac = unlockRequest.slice(8, 10); // last 2 bytes of the MAC address

  // [0x00, 0x01] => 0x0001 => (add 1) => 0x0002 => [0x00, 0x02]
  const nonce = (nonceBytes[0] << 8) | nonceBytes[1];
  const newNonce = nonce + 1;
  const newNonceBytes = nonce === 0xffff ? new Uint8Array([0x01, 0x00]) : new Uint8Array([(newNonce >> 8) & 0xff, newNonce & 0xff]); // bug-for-bug compatible

  const rawKey = await makeUnlockKey(new Uint8Array([...nonceBytes, ...mac])); // 2 bytes of nonce, 2 bytes of MAC

  const mask = deviceName
    .slice(-4)
    .split("")
    .map((x) => x.charCodeAt(0) - 0x30);
  const key = rawKey.map((x, i) => x ^ mask[i]);

  // prettier-ignore
  const checksumInput = new Uint8Array([
    unknownByte,
    ...newNonceBytes, // 2 bytes of nonce
    ...key, // 4 bytes of key
    0xFE, 0x87, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00
  ]);

  const checksum = crc16cgaeaf(checksumInput);

  // prettier-ignore
  const finalPayload = new Uint8Array([
    0xFE, 0xFE, 0x09, 0xAF,
    checksum, ...checksumInput // 1 byte of checksum, 15 bytes of the rest
  ]);

  return finalPayload;
}

// the one true command to begin a session
export function makeStartEpilogue(deviceName: string, isKeyAuthPresent = false): Uint8Array {
  const checksum = crc16changgong(deviceName.slice(-5));
  const mn = isKeyAuthPresent ? 0x0b : 0xff; // magic number
  const ri = makeRandomUserId();
  const dt = makeDatetimeArray();
  // prettier-ignore
  return new Uint8Array([
    0xFE, 0xFE, 0x09, 0xB2,
    0x01, checksum & 0xFF, checksum >> 8, mn,
    0x00, ...ri, ...dt, // 2 bytes of random user id, 6 bytes of datetime
    0x0F, 0x27, 0x00
  ]);
}

// Offlinebomb exploit
// (deprecated, for reference only)
export function makeStartEpilogueOfflinebomb(): Uint8Array {
  const ri = makeRandomUserId();
  const dt = makeDatetimeArray();
  // prettier-ignore
  return new Uint8Array([
    0xFE, 0xFE, 0x09, 0xBB,
    0x01, 0x01, 0x0D, 0x00,
    0x50, ...ri, ...dt, // 2 bytes of random user id, 6 bytes of datetime
    0x00, 0x20, 0x00
  ]);
}

export function bufferToHexString(array: ArrayBuffer): string {
  // explanation: [0x12, 0x34, 0xAB, 0xCD] => "1234ABCD"
  return Array.from(new Uint8Array(array))
    .map((x) => x.toString(16).padStart(2, "0"))
    .join("")
    .toUpperCase();
}

export function decAsHex(n: number): number {
  // explanation: 42 => 0x42
  return n <= 0 ? 0 : n % 10 | (decAsHex((n / 10) | 0) << 4);
}

export function isMobileDevice() {
  // we confirmed that windows phone support is impossible
  const userAgent = navigator.userAgent.toLowerCase();
  return /android|iphone|ipod|ipad/i.test(userAgent);
}

// だって思考と錯誤のモンスター
// それ僕のこと？ いや皆のこと！
// 一緒になって踊ろうよ、さ！

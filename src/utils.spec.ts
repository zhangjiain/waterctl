import { expect, test } from "vitest";
import { bufferToHexString, decAsHex } from "./utils";

test("bufferToHexString", () => {
  expect(bufferToHexString(new Uint8Array([0x00, 0x01, 0x02, 0x03]).buffer)).toBe("00010203");
  expect(bufferToHexString(new Uint8Array([0x12, 0x34, 0xab, 0xcd]).buffer)).toBe("1234ABCD");
  expect(bufferToHexString(new Uint8Array([0xfe, 0xfe, 0x09, 0xaf]).buffer)).toBe("FEFE09AF");
  expect(bufferToHexString(new Uint8Array([0xcf, 0x75, 0x1b, 0x42]).buffer)).toBe("CF751B42");
});

test("decAsHex", () => {
  expect(decAsHex(0)).toBe(0x00);
  expect(decAsHex(1)).toBe(0x01);
  expect(decAsHex(9)).toBe(0x09);
  expect(decAsHex(10)).toBe(0x10);
  expect(decAsHex(11)).toBe(0x11);
  expect(decAsHex(19)).toBe(0x19);
  expect(decAsHex(99)).toBe(0x99);
});

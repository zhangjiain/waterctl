import { log } from "./logger";
import { bufferToHexString } from "./utils";

// .writeValue logging
// @ts-expect-error: BluetoothRemoteGATTCharacteristic is a function in browsers, but TypeScript has its own thought...
if (typeof BluetoothRemoteGATTCharacteristic !== "undefined") {
  // @ts-expect-error: same as above
  const originalWriteValue = BluetoothRemoteGATTCharacteristic.prototype.writeValue;
  // @ts-expect-error: same as above
  BluetoothRemoteGATTCharacteristic.prototype.writeValue = function (value: ArrayBuffer) {
    const msg = "TXD: " + bufferToHexString(value);
    log(msg);
    return originalWriteValue.apply(this, arguments);
  };
}

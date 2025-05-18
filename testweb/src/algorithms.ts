// CRC-16/ChangGong
// width=16 poly=0x8005 init=0xe808 refin=true refout=true xorout=0x0000
export function crc16changgong(str: string): number {
  let crc = 0x1017;
  for (let i = 0; i < str.length; i++) {
    crc ^= str.charCodeAt(i);
    for (let j = 0; j < 8; j++) {
      if ((crc & 0x0001) == 1) {
        crc >>= 1;
        crc ^= 0xa001;
      } else crc >>= 1;
    }
  }
  return crc;
}

// CRC-16/CGAEAF (abbrev for ChangGong AE/AF)
// width=16 poly=0x8005 init=0xf856 refin=true refout=true xorout=0x0075
// truncated to lower 8 bits
export function crc16cgaeaf(array: Uint8Array): number {
  let crc = 0x6a1f;
  for (let i = 0; i < array.length; i++) {
    crc ^= array[i];
    for (let j = 0; j < 8; j++) {
      if ((crc & 0x0001) == 1) {
        crc >>= 1;
        crc ^= 0xa001;
      } else crc >>= 1;
    }
  }
  crc = (crc ^ 0x75) & 0xff;
  return crc;
}

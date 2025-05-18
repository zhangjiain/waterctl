// send this first, then wait for B0, B1, or AE
// B0 and B1 contain the status of the previous session, AE is a key authentication request
// AE will only show up in new firmwares
// prettier-ignore
export const startPrologue = new Uint8Array([
  0xFE, 0xFE, 0x09, 0xB0,
  0x01, 0x01, 0x00, 0x00
]);

// when ending the session, send this then wait for B3
// B3 contains the status of this session
// prettier-ignore
export const endPrologue = new Uint8Array([
  0xFE, 0xFE, 0x09, 0xB3,
  0x00, 0x00
]);

// after receiving B3, send this then disconnect
// prettier-ignore
export const endEpilogue = new Uint8Array([
  0xFE, 0xFE, 0x09, 0xB4,
  0x00, 0x00
]);

// send this before startEpilogueOfflinebomb and before endEpilogue, or if BC is received
// used to clear the previous unfinished offline (BB) session
// receiving BC is a strong signal that sending this is necessary,
// but if Offlinebomb will be used it will be safer to send this before any other command
// (deprecated, for reference only)
// prettier-ignore
export const offlinebombFix = new Uint8Array([
  0xFE, 0xFE, 0x09, 0xBC,
  0x00, 0x00
]);

// send this if BA is received
// BA is related to user info uploading, but we will never actually upload anything
// prettier-ignore
export const baAck = new Uint8Array([
  0xFE, 0xFE, 0x09, 0xBA,
  0x00, 0x00
]);

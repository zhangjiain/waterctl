;;
;;  This file is part of waterctl
;;  Copyright (c) 2021-2024 celesWuff, Deputy
;;
;;  Permission is hereby granted, free of charge, to any person obtaining a copy
;;  of this software and associated documentation files (the "Software"), to deal
;;  in the Software without restriction, including without limitation the rights
;;  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
;;  copies of the Software, and to permit persons to whom the Software is
;;  furnished to do so, subject to the following conditions:
;;
;;  The above copyright notice and this permission notice shall be included in all
;;  copies or substantial portions of the Software.
;;
;;  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
;;  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
;;  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
;;  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
;;  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
;;  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
;;  SOFTWARE.
;;

;;
;;  To compile this file, you need to install the WebAssembly Binary Toolkit (wabt)
;;  You can install it using the following command:
;;    sudo apt install wabt
;;
;;  Then you can compile this file using the following command:
;;    wat2wasm deputy.wat
;;

(module
  (memory $BEYOND_THE_MEMORIES 1)
  (export "memory" (memory $BEYOND_THE_MEMORIES))
  ;; BPM 088

  (data (i32.const 0)
    "\00\04\05\00\01\05\04\00\01\05\04\01\00\04\05\00"
    "\01\05\04\01\00\04\05\01\00\04\05\00\01\05\04\00"
    "\01\05\04\01\00\04\05\01\00\04\05\00\01\05\04\01"
    "\00\04\05\00\01\05\04\00\01\05\04\01\00\04\05\00"
    "\01\05\04\01\00\04\05\01\00\04\05\00\01\05\04\01"
    "\00\04\05\00\01\05\04\00\01\05\04\01\00\04\05\01"
    "\00\04\05\00\01\05\04\00\01\05\04\01\00\04\05\00"
    "\01\05\04\01\00\04\05\01\00\04\05\00\01\05\04\00"
    "\01\05\04\01\00\04\05\01\00\04\05\00\01\05\04\01"
    "\00\04\05\00\01\05\04\00\01\05\04\01\00\04\05\01"
    "\00\04\05\00\01\05\04\00\01\05\04\01\00\04\05\00"
    "\01\05\04\01\00\04\05\01\00\04\05\00\01\05\04\01"
    "\00\04\05\00\01\05\04\00\01\05\04\01\00\04\05\00"
    "\01\05\04\01\00\04\05\01\00\04\05\00\01\05\04\00"
    "\01\05\04\01\00\04\05\01\00\04\05\00\01\05\04\01"
    "\00\04\05\00\01\05\04\00\01\05\04\01\00\04\05\00"
    "\00\40\81\c0\01\41\80\c0\01\41\80\c1\00\40\81\c0"
    "\01\41\80\c1\00\40\81\c1\00\40\81\c0\01\41\80\c0"
    "\01\41\80\c1\00\40\81\c1\00\40\81\c0\01\41\80\c1"
    "\00\40\81\c0\01\41\80\c0\01\41\80\c1\00\40\81\c0"
    "\01\41\80\c1\00\40\81\c1\00\40\81\c0\01\41\80\c1"
    "\00\40\81\c0\01\41\80\c0\01\41\80\c1\00\40\81\c1"
    "\00\40\81\c0\01\41\80\c0\01\41\80\c1\00\40\81\c0"
    "\01\41\80\c1\00\40\81\c1\00\40\81\c0\01\41\80\c0"
    "\01\41\80\c1\00\40\81\c1\00\40\81\c0\01\41\80\c1"
    "\00\40\81\c0\01\41\80\c0\01\41\80\c1\00\40\81\c1"
    "\00\40\81\c0\01\41\80\c0\01\41\80\c1\00\40\81\c0"
    "\01\41\80\c1\00\40\81\c1\00\40\81\c0\01\41\80\c1"
    "\00\40\81\c0\01\41\80\c0\01\41\80\c1\00\40\81\c0"
    "\01\41\80\c1\00\40\81\c1\00\40\81\c0\01\41\80\c0"
    "\01\41\80\c1\00\40\81\c1\00\40\81\c0\01\41\80\c1"
    "\00\40\81\c0\01\41\80\c0\01\41\80\c1\00\40\81\c0"
    "\00\01\01\00\02\03\03\02\07\06\06\07\05\04\04\05"
    "\0d\0c\0c\0d\0f\0e\0e\0f\0a\0b\0b\0a\08\09\09\08"
    "\19\18\18\19\1b\1a\1a\1b\1e\1f\1f\1e\1c\1d\1d\1c"
    "\14\15\15\14\16\17\17\16\13\12\12\13\11\10\10\11"
    "\31\30\30\31\33\32\32\33\36\37\37\36\34\35\35\34"
    "\3c\3d\3d\3c\3e\3f\3f\3e\3b\3a\3a\3b\39\38\38\39"
    "\28\29\29\28\2a\2b\2b\2a\2f\2e\2e\2f\2d\2c\2c\2d"
    "\25\24\24\25\27\26\26\27\22\23\23\22\20\21\21\20"
    "\61\60\60\61\63\62\62\63\66\67\67\66\64\65\65\64"
    "\6c\6d\6d\6c\6e\6f\6f\6e\6b\6a\6a\6b\69\68\68\69"
    "\78\79\79\78\7a\7b\7b\7a\7f\7e\7e\7f\7d\7c\7c\7d"
    "\75\74\74\75\77\76\76\77\72\73\73\72\70\71\71\70"
    "\50\51\51\50\52\53\53\52\57\56\56\57\55\54\54\55"
    "\5d\5c\5c\5d\5f\5e\5e\5f\5a\5b\5b\5a\58\59\59\58"
    "\49\48\48\49\4b\4a\4a\4b\4e\4f\4f\4e\4c\4d\4d\4c"
    "\44\45\45\44\46\47\47\46\43\42\42\43\41\40\40\41"
    "\00\01\01\03\03\02\02\06\06\07\07\05\05\04\04\00"
    "\00\01\c1\03\c3\c2\02\06\c6\c7\07\c5\05\04\c4\0c"
    "\cc\cd\0d\cf\0f\0e\ce\ca\0a\0b\cb\09\c9\c8\08\18"
    "\d8\d9\19\db\1b\1a\da\de\1e\1f\df\1d\dd\dc\1c\d4"
    "\14\15\d5\17\d7\d6\16\12\d2\d3\13\d1\11\10\d0\30"
    "\f0\f1\31\f3\33\32\f2\f6\36\37\f7\35\f5\f4\34\fc"
    "\3c\3d\fd\3f\ff\fe\3e\3a\fa\fb\3b\f9\39\38\f8\e8"
    "\28\29\e9\2b\eb\ea\2a\2e\ee\ef\2f\ed\2d\2c\ec\24"
    "\e4\e5\25\e7\27\26\e6\e2\22\23\e3\21\e1\e0\20\60"
    "\a0\a1\61\a3\63\62\a2\a6\66\67\a7\65\a5\a4\64\ac"
    "\6c\6d\ad\6f\af\ae\6e\6a\aa\ab\6b\a9\69\68\a8\b8"
    "\78\79\b9\7b\bb\ba\7a\7e\be\bf\7f\bd\7d\7c\bc\74"
    "\b4\b5\75\b7\77\76\b6\b2\72\73\b3\71\b1\b0\70\90"
    "\50\51\91\53\93\92\52\56\96\97\57\95\55\54\94\5c"
    "\9c\9d\5d\9f\5f\5e\9e\9a\5a\5b\9b\59\99\98\58\48"
    "\88\89\49\8b\4b\4a\8a\8e\4e\4f\8f\4d\8d\8c\4c\84"
    "\44\45\85\47\87\86\46\42\82\83\43\81\41\40\80\50"
    "\00\90\60\f0\c0\50\a0\30\c0\50\a0\30\00\90\60\f0"
    "\c0\50\a0\30\00\90\60\f0\00\90\60\f0\c0\50\a0\30"
    "\c0\50\a0\30\00\90\60\f0\00\90\60\f0\c0\50\a0\30"
    "\00\90\60\f0\c0\50\a0\30\c0\50\a0\30\00\90\60\f0"
    "\c0\50\a0\30\00\90\60\f0\00\90\60\f0\c0\50\a0\30"
    "\00\90\60\f0\c0\50\a0\30\c0\50\a0\30\00\90\60\f0"
    "\00\90\60\f0\c0\50\a0\30\c0\50\a0\30\00\90\60\f0"
    "\c0\50\a0\30\00\90\60\f0\00\90\60\f0\c0\50\a0\30"
    "\c0\50\a0\30\00\90\60\f0\00\90\60\f0\c0\50\a0\30"
    "\00\90\60\f0\c0\50\a0\30\c0\50\a0\30\00\90\60\f0"
    "\00\90\60\f0\c0\50\a0\30\c0\50\a0\30\00\90\60\f0"
    "\c0\50\a0\30\00\90\60\f0\00\90\60\f0\c0\50\a0\30"
    "\00\90\60\f0\c0\50\a0\30\c0\50\a0\30\00\90\60\f0"
    "\c0\50\a0\30\00\90\60\f0\00\90\60\f0\c0\50\a0\30"
    "\c0\50\a0\30\00\90\60\f0\00\90\60\f0\c0\50\a0\30"
    "\00\90\60\f0\c0\50\a0\30\c0\50\a0\30\00\90\60\f0"
    "\00\01\02\03\04\05\06\07\08\09\0a\0b\0c\0d\0e\0f"
    "\10\11\12\13\11\14\11\15\16\17\18\19\1a\1b\1c\1d"
    "\13\1e\1f\20\21\22\0f\23\18\21\24\10\23\25\26\1f"
    "\22\27\28\29\2a\2b\2c\2d\25\20\0f\0c\13\2e\2f\2a"
    "\30\17\31\32\33\34\35\36\37\38\03\39\3a\0d\24\39"
    "\27\22\25\06\3b\3c\3d\3e\3f\05\0f\40\41\42\43\3a"
    "\44\45\46\2f\1e\05\2b\47\13\48\49\4a\4b\1f\1b\3e"
    "\4c\4d\20\0e\4c\4e\4f\50\51\52\31\1e\49\53\22\54"
    "\18\55\56\10\57\58\59\5a\42\24\0d\5b\33\5c\5d\14"
    "\20\5e\43\5f\1d\56\55\0b\3a\60\61\41\62\39\37\63"
    "\64\04\06\65\08\66\67\68\11\20\69\17\61\1b\1e\6a"
    "\31\16\6b\36\6c\07\38\6d\6e\3c\52\6f\26\41\70\27"
    "\71\5a\34\44\72\73\01\4c\0a\6a\16\1c\74\19\16\2b"
    "\51\4e\75\12\5c\3d\15\5d\02\22\53\4f\11\69\76\29"
    "\09\59\77\1b\78\44\79\7a\7b\05\0f\7c\2b\01\7d\2c"
    "\55\06\05\7e\0c\7f\80\0f\00\1a\81\03\31\1e\3c\78"
    "\00\01\02\03\00\04\05\06\07\08\09\0a\0b\0c\0d\0e"
    "\03\0f\10\11\12\13\14\15\16\17\18\19\1a\1b\1c\1d"
    "\16\1e\1f\20\21\22\23\24\25\26\14\27\28\29\2a\2b"
    "\2c\1c\2d\22\27\0c\2e\2f\30\31\32\33\34\35\36\33"
    "\13\34\02\37\38\39\3a\3b\3c\1a\14\3d\04\3e\3f\40"
    "\41\42\1e\43\44\45\0d\46\47\48\49\48\24\4a\48\4b"
    "\1f\4c\1b\4d\4b\01\4e\45\4d\13\1c\4e\35\1f\27\24"
    "\4f\28\50\24\37\13\35\1b\51\52\26\4f\53\54\1d\1c"
    "\26\46\44\55\42\46\56\39\33\3f\57\58\2b\09\59\5a"
    "\53\5b\5c\48\31\2d\1c\3e\5d\47\17\5e\4a\5f\32\2f"
    "\52\60\3f\26\61\13\14\62\63\64\2b\65\1e\66\67\3a"
    "\65\18\27\0c\04\68\43\40\13\69\6a\37\6b\14\1a\6c"
    "\49\5d\5e\0a\6d\02\01\10\59\67\6e\6f\4b\70\6c\45"
    "\71\06\00\72\11\73\74\03\38\6c\70\41\75\0f\76\35"
    "\56\27\1e\73\0d\5c\35\48\77\78\79\3b\7a\1a\3d\7b"
    "\1d\7c\11\4c\7d\2e\18\7e\7f\05\3c\80\07\81\46\0c"
    "\75\37\52\21\f6\d5\48\d8\a0\b9\bc\cc\92\39\54\f3"
    "\f9\3e\e2\57\a3\5b\c6\55\d1\97\32\66\c5\64\c0\34"
    "\65\c9\51\bd\61\d7\12\45\72\6a\ac\59\20\ca\5f\30"
    "\c1\63\67\cd\58\35\23\5c\5a\d4\f2\5d\a7\14\f5\60"
    "\38\46\c4\a6\68\40\27\a2\1c\a9\d3\41\31\91\f8\d0"
    "\04\0c\c7\89\24\56\d2\42\18\43\f0\0a\a4\19\1b\36"
    "\b7\cf\22\6d\d9\f7\16\49\15\3d\a1\62\53\3a\13\a8"
    "\f4\c8\ba\eb\1e\44\6f\10\c3\0f\a5\50\d6\69\00\f1"
    "\77\e9\cf\f2\a2\d5\b7\46\c0\59\20\43\45\4C\45\53"
    "\d4\61\39\f2\21\5a\5c\23\35\58\cd\67\63\55\c1\a6"
    "\c4\46\38\f3\d5\60\f5\14\a7\5d\48\d7\51\45\66\34"
    "\41\d3\a9\1c\57\a2\59\c0\30\27\40\68\24\89\c7\0c"
    "\04\d0\f8\31\54\65\91\92\cc\bc\b9\a0\d8\f6\52\37"
    "\75\64\c5\32\97\d1\c6\5b\3e\a3\e2\f9\12\bd\c9\ac"
    "\5f\ca\20\6a\72\1e\a1\eb\ba\f0\c8\6f\3d\19\a4\44"
    "\69\d6\50\a5\0f\c3\10\43\e9\77\f1\00\56\0a\18\42"
    "\d2\6d\22\cf\b7\36\1b\15\49\16\f7\d9\f4\a8\13\3a"
    "\53\62\31\eb\f3\d7\ba\37\65\92\57\55\46\46\3C\33"
    ;; 2096 bytes (131 * 16 bytes)
  )

  (func $DEPUTY_EXTERNAL_SOMETHING_WHATEVER_PLEASE_USE_OR_CELESWUFF_WILL_CRY (param $a i32) (param $b i32) (param $c i32) (param $d i32)
    (local $iA i32)
    (local $iB i32)
    (local $iC i32)
    (local $iD i32)
    (local $m i32)

    (if (i32.and (i32.eq (local.get $b) (i32.const 255)) (i32.eq (i32.and (local.get $a) (i32.const 1)) (i32.const 1)))
      (then
        (local.set $a (i32.add (local.get $a) (i32.const 2)))
      )
    )
    (if (i32.eq (local.get $a) (i32.const 257))
      (then
        (local.set $a (i32.const 0))
      )
    )
    (local.set $iA (i32.and (local.get $d) (i32.const 7)))
    (local.set $m (i32.and (local.get $d) (i32.xor (i32.const -1) (i32.const 7))))
    (if (i32.and (local.get $m) (i32.shl (i32.const 1) (i32.const 3)))
      (then
        (local.set $iA (i32.xor (local.get $iA) (i32.const 4)))
      )
    )
    (if (i32.and (local.get $m) (i32.shl (i32.const 1) (i32.const 4)))
      (then
        (local.set $iA (i32.xor (local.get $iA) (i32.const 4)))
      )
    )
    (if (i32.and (local.get $m) (i32.shl (i32.const 1) (i32.const 5)))
      (then
        (local.set $iA (i32.xor (local.get $iA) (i32.const 4)))
      )
    )
    (if (i32.and (local.get $m) (i32.shl (i32.const 1) (i32.const 6))
      )
      (then
        (local.set $iA (i32.xor (local.get $iA) (i32.const 4)))
      )
    )
    (if (i32.and (local.get $m) (i32.shl (i32.const 1) (i32.const 7)))
      (then
        (local.set $iA (i32.xor (local.get $iA) (i32.const 4)))
      )
    )
    (local.set $iA (i32.xor (local.get $iA) (i32.load8_u (i32.add (i32.const 0) (local.get $b)))))
    (if (i32.and (local.get $a) (i32.shl (i32.const 1) (i32.const 0)))
      (then
        (local.set $iA (i32.xor (local.get $iA) (i32.const 1)))
      )
    )
    (if (i32.and (local.get $a) (i32.shl (i32.const 1) (i32.const 1)))
      (then
        (local.set $iA (i32.xor (local.get $iA) (i32.const 1)))
      )
    )
    (if (i32.and (local.get $a) (i32.shl (i32.const 1) (i32.const 2)))
      (then
        (local.set $iA (i32.xor (local.get $iA) (i32.const 2)))
      )
    )
    (if (i32.and (local.get $a) (i32.shl (i32.const 1) (i32.const 3)))
      (then
        (local.set $iA (i32.xor (local.get $iA) (i32.const 7)))
      )
    )
    (if (i32.and (local.get $a) (i32.shl (i32.const 1) (i32.const 4)))
      (then
        (local.set $iA (i32.xor (local.get $iA) (i32.const 1)))
      )
    )
    (if (i32.and (local.get $a) (i32.shl (i32.const 1) (i32.const 5)))
      (then
        (local.set $iA (i32.xor (local.get $iA) (i32.const 1)))
      )
    )
    (if (i32.and (local.get $a) (i32.shl (i32.const 1) (i32.const 6)))
      (then
        (local.set $iA (i32.xor (local.get $iA) (i32.const 1)))
      )
    )
    (if (i32.and (local.get $a) (i32.shl (i32.const 1) (i32.const 7)))
      (then
        (local.set $iA (i32.xor (local.get $iA) (i32.const 1)))
      )
    )
    (local.set $iC (i32.and (local.get $c) (i32.const 7)))
    (local.set $m (i32.and (local.get $c) (i32.xor (i32.const -1) (i32.const 7))))
    (if (i32.and (local.get $m) (i32.shl (i32.const 1) (i32.const 3)))
      (then
        (local.set $iC (i32.xor (local.get $iC) (i32.const 4)))
      )
    )
    (if (i32.and (local.get $m) (i32.shl (i32.const 1) (i32.const 4)))
      (then
        (local.set $iC (i32.xor (local.get $iC) (i32.const 4)))
      )
    )
    (if (i32.and (local.get $m) (i32.shl (i32.const 1) (i32.const 5)))
      (then
        (local.set $iC (i32.xor (local.get $iC) (i32.const 4)))
      )
    )
    (if (i32.and (local.get $m) (i32.shl (i32.const 1) (i32.const 6)))
      (then
        (local.set $iC (i32.xor (local.get $iC) (i32.const 4)))
      )
    )
    (if (i32.and (local.get $m) (i32.shl (i32.const 1) (i32.const 7)))
      (then
        (local.set $iC (i32.xor (local.get $iC) (i32.const 4)))
      )
    )
    (local.set $iC (i32.xor (local.get $iC) (i32.load8_u (i32.add (i32.const 768) (i32.and (local.get $b) (i32.const 15))))))
    i32.const 256
    local.get $b
    i32.add
    i32.load8_u
    local.get $d
    i32.xor
    local.set $d
    i32.const 512
    local.get $a
    i32.add
    i32.load8_u
    local.get $d
    i32.xor
    local.set $d
    i32.const 1296
    local.get $d
    i32.add
    i32.load8_u
    local.set $iB
    i32.const 784
    local.get $b
    i32.add
    i32.load8_u
    local.get $c
    i32.xor
    local.set $c
    i32.const 1040
    local.get $a
    i32.add
    i32.load8_u
    local.get $c
    i32.xor
    local.set $c
    i32.const 1552
    local.get $c
    i32.add
    i32.load8_u
    local.set $iD
    i32.const 2099
    i32.const 1938
    local.get $iA
    i32.add
    i32.load8_u
    i32.store8
    i32.const 2098
    i32.const 1808
    local.get $iB
    i32.add
    i32.load8_u
    i32.store8
    i32.const 2097
    i32.const 2082
    local.get $iC
    i32.add
    i32.load8_u
    i32.store8
    i32.const 2096
    i32.const 1952
    local.get $iD
    i32.add
    i32.load8_u
    i32.store8
  )

  (export "makeKey" (func $DEPUTY_EXTERNAL_SOMETHING_WHATEVER_PLEASE_USE_OR_CELESWUFF_WILL_CRY))
)

(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7f\03\84\80\80\80\00\03\00\00\00\05\87"
  "\80\80\80\00\03\00\00\00\01\00\07\07\c9\80\80\80"
  "\00\03\15\61\73\2d\6d\65\6d\6f\72\79\2e\67\72\6f"
  "\77\2d\76\61\6c\75\65\30\00\00\15\61\73\2d\6d\65"
  "\6d\6f\72\79\2e\67\72\6f\77\2d\76\61\6c\75\65\31"
  "\00\01\15\61\73\2d\6d\65\6d\6f\72\79\2e\67\72\6f"
  "\77\2d\76\61\6c\75\65\32\00\02\0a\b1\80\80\80\00"
  "\03\8b\80\80\80\00\00\41\01\41\02\20\00\1b\40\00"
  "\0b\8b\80\80\80\00\00\41\01\41\02\20\00\1b\40\01"
  "\0b\8b\80\80\80\00\00\41\01\41\02\20\00\1b\40\02"
  "\0b"
)
(assert_return (invoke "as-memory.grow-value0" (i32.const 0x0)) (i32.const 0x0))
(assert_return (invoke "as-memory.grow-value0" (i32.const 0x1)) (i32.const 0x2))
(assert_return (invoke "as-memory.grow-value1" (i32.const 0x0)) (i32.const 0x1))
(assert_return (invoke "as-memory.grow-value1" (i32.const 0x1)) (i32.const 0x3))
(assert_return (invoke "as-memory.grow-value2" (i32.const 0x0)) (i32.const 0x7))
(assert_return (invoke "as-memory.grow-value2" (i32.const 0x1)) (i32.const 0x9))

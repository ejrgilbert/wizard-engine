(module binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\00\01\7f\03\84\80\80\80\00\03\00\00\00\04\85\80"
  "\80\80\00\01\70\01\01\01\05\85\80\80\80\00\02\00"
  "\00\00\01\07\b1\80\80\80\00\02\15\61\73\2d\6d\65"
  "\6d\6f\72\79\2e\67\72\6f\77\2d\76\61\6c\75\65\30"
  "\00\01\15\61\73\2d\6d\65\6d\6f\72\79\2e\67\72\6f"
  "\77\2d\76\61\6c\75\65\31\00\02\09\87\80\80\80\00"
  "\01\00\41\00\0b\01\00\0a\a7\80\80\80\00\03\85\80"
  "\80\80\00\00\41\b2\02\0b\89\80\80\80\00\00\41\00"
  "\11\00\00\40\00\0b\89\80\80\80\00\00\41\00\11\00"
  "\00\40\01\0b"
)
(assert_return (invoke "as-memory.grow-value0") (i32.const 0x0))
(assert_return (invoke "as-memory.grow-value1") (i32.const 0x1))

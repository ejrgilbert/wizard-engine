(module binary
  "\00\61\73\6d\01\00\00\00\01\8b\80\80\80\00\02\60"
  "\02\7f\7f\00\60\00\02\7f\7f\03\82\80\80\80\00\01"
  "\01\0d\83\80\80\80\00\01\00\00\07\92\80\80\80\00"
  "\01\0e\74\65\73\74\2d\74\68\72\6f\77\2d\31\2d\32"
  "\00\00\0a\98\80\80\80\00\01\92\80\80\80\00\00\06"
  "\40\41\0b\41\16\08\00\07\00\0f\0b\41\2c\41\37\0b"
)
(assert_return (invoke "test-throw-1-2") (i32.const 0xb) (i32.const 0x16))

(module binary
  "\00\61\73\6d\01\00\00\00\01\90\80\80\80\00\03\60"
  "\01\7f\00\60\02\7f\7f\00\60\02\7f\7f\01\7f\03\85"
  "\80\80\80\00\04\01\00\00\02\04\85\80\80\80\00\01"
  "\70\01\02\02\0d\85\80\80\80\00\02\00\00\00\00\07"
  "\88\80\80\80\00\01\04\74\65\73\74\00\03\09\88\80"
  "\80\80\00\01\00\41\00\0b\02\01\02\0a\c5\80\80\80"
  "\00\04\89\80\80\80\00\00\20\01\20\00\11\00\00\0b"
  "\86\80\80\80\00\00\20\00\08\00\0b\86\80\80\80\00"
  "\00\20\00\08\01\0b\9b\80\80\80\00\00\06\40\06\40"
  "\20\00\20\01\10\00\07\00\41\21\6a\0f\0b\07\01\41"
  "\2c\6a\0f\0b\00\0b"
)
(assert_return (invoke "test" (i32.const 0x0) (i32.const 0x9)) (i32.const 0x2a))
(assert_return (invoke "test" (i32.const 0x1) (i32.const 0x9)) (i32.const 0x35))
(assert_return
  (invoke "test" (i32.const 0x0) (i32.const 0x63))
  (i32.const 0x84)
)
(assert_return
  (invoke "test" (i32.const 0x1) (i32.const 0x63))
  (i32.const 0x8f)
)

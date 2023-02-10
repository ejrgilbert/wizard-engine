(module $Mm binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7f\03\82\80\80\80\00\01\00\05\8a\80\80"
  "\80\00\03\01\00\00\01\05\05\01\00\00\07\9d\80\80"
  "\80\00\04\04\6d\65\6d\30\02\00\04\6d\65\6d\31\02"
  "\01\04\6d\65\6d\32\02\02\04\6c\6f\61\64\00\00\0a"
  "\8e\80\80\80\00\01\88\80\80\80\00\00\20\00\2d\40"
  "\01\00\0b\0b\91\80\80\80\00\01\02\01\41\0a\0b\0a"
  "\00\01\02\03\04\05\06\07\08\09"
)
(register "Mm" $Mm)
(assert_unlinkable
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\02\a8\80\80\80\00\03\08\73\70\65\63\74\65"
    "\73\74\05\70\72\69\6e\74\00\00\02\4d\6d\04\6d\65"
    "\6d\31\02\00\01\02\4d\6d\03\74\61\62\01\70\00\00"
    "\0b\89\80\80\80\00\01\00\41\00\0b\03\61\62\63"
  )
  "unknown import"
)
(assert_return (invoke $Mm "load" (i32.const 0x0)) (i32.const 0x0))
(assert_trap
  (module binary
    "\00\61\73\6d\01\00\00\00\02\8c\80\80\80\00\01\02"
    "\4d\6d\04\6d\65\6d\31\02\00\01\0b\a2\80\80\80\00"
    "\02\00\41\00\0b\03\61\62\63\00\41\f6\ff\13\0b\12"
    "\7a\7a\7a\7a\7a\7a\7a\7a\7a\7a\7a\7a\7a\7a\7a\7a"
    "\7a\7a"
  )
  "out of bounds memory access"
)
(assert_return (invoke $Mm "load" (i32.const 0x0)) (i32.const 0x61))
(assert_return (invoke $Mm "load" (i32.const 0x4_fff6)) (i32.const 0x0))
(assert_trap
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\02\8c\80\80\80\00\01\02\4d\6d\04\6d\65\6d"
    "\31\02\00\01\03\82\80\80\80\00\01\00\04\84\80\80"
    "\80\00\01\70\00\00\09\87\80\80\80\00\01\00\41\00"
    "\0b\01\00\0a\88\80\80\80\00\01\82\80\80\80\00\00"
    "\0b\0b\89\80\80\80\00\01\00\41\00\0b\03\61\62\63"
  )
  "out of bounds table access"
)
(assert_return (invoke $Mm "load" (i32.const 0x0)) (i32.const 0x61))
(module $Ms binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\00\01\7f\03\83\80\80\80\00\02\00\00\04\84\80\80"
  "\80\00\01\70\00\01\05\83\80\80\80\00\01\00\01\07"
  "\b1\80\80\80\00\04\06\6d\65\6d\6f\72\79\02\00\05"
  "\74\61\62\6c\65\01\00\0d\67\65\74\20\6d\65\6d\6f"
  "\72\79\5b\30\5d\00\00\0c\67\65\74\20\74\61\62\6c"
  "\65\5b\30\5d\00\01\0a\99\80\80\80\00\02\87\80\80"
  "\80\00\00\41\00\2d\00\00\0b\87\80\80\80\00\00\41"
  "\00\11\00\00\0b"
)
(register "Ms" $Ms)
(assert_trap
  (module binary
    "\00\61\73\6d\01\00\00\00\01\88\80\80\80\00\02\60"
    "\00\01\7f\60\00\00\02\9b\80\80\80\00\02\02\4d\73"
    "\06\6d\65\6d\6f\72\79\02\00\01\02\4d\73\05\74\61"
    "\62\6c\65\01\70\00\01\03\83\80\80\80\00\02\00\01"
    "\08\81\80\80\80\00\01\09\87\80\80\80\00\01\00\41"
    "\00\0b\01\00\0a\94\80\80\80\00\02\86\80\80\80\00"
    "\00\41\ad\bd\03\0b\83\80\80\80\00\00\00\0b\0b\8b"
    "\80\80\80\00\01\00\41\00\0b\05\68\65\6c\6c\6f"
  )
  "unreachable"
)
(assert_return (invoke $Ms "get memory[0]") (i32.const 0x68))
(assert_return (invoke $Ms "get table[0]") (i32.const 0xdead))

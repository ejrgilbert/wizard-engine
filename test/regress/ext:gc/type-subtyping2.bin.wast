(module binary
  "\00\61\73\6d\01\00\00\00\01\89\80\80\80\00\02\50"
  "\00\60\00\00\60\00\00\03\83\80\80\80\00\02\00\01"
  "\07\8b\80\80\80\00\02\02\66\31\00\00\02\66\32\00"
  "\01\0a\8f\80\80\80\00\02\82\80\80\80\00\00\0b\82"
  "\80\80\80\00\00\0b"
)
(register "M2")
(assert_unlinkable
  (module binary
    "\00\61\73\6d\01\00\00\00\01\89\80\80\80\00\02\50"
    "\00\60\00\00\60\00\00\02\89\80\80\80\00\01\02\4d"
    "\32\02\66\31\00\01"
  )
  "incompatible import type"
)
(assert_unlinkable
  (module binary
    "\00\61\73\6d\01\00\00\00\01\89\80\80\80\00\02\50"
    "\00\60\00\00\60\00\00\02\89\80\80\80\00\01\02\4d"
    "\32\02\66\32\00\00"
  )
  "incompatible import type"
)

(module
  (type (;0;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;1;) (func (result i32)))
  (type (;2;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (import "wasi_snapshot_preview1" "fd_write" (func (;0;) (type 0)))
  (table (;0;) 2 2 funcref)
  (memory (;0;) 4 4)
  (export "_start" (func 1))
  (export "memory" (memory 0))
  (elem (;0;) (i32.const 1) func 2)
  (func (;1;) (type 1) (result i32)
    i32.const 0
    i32.const 65536
    i32.const 8
    i32.add
    i32.const 0
    i32.sub
    i32.store offset=65572
    i32.const 0
    i32.const 18
    i32.store offset=65576
    i32.const 0
    i32.const 0
    i32.store offset=65580
    i32.const 0
    i32.const 0
    i32.store offset=65584
    i32.const 1
    i32.const 65564
    i32.const 8
    i32.add
    i32.const 1
    i32.const 65588
    i32.const 8
    i32.add
    call 0
  )
  (func (;2;) (type 2) (param i32 i32 i32 i32 i32) (result i32)
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call 0
  )
  (data (;0;) (i32.const 65536) "\05\00\00\00\12\00\00\00fd_write: success\0a\00\00\11\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\11\00\00\00\01\00\00\00\00\00\00\00")
)

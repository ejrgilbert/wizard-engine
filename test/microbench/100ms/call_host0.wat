;; INNER_CALIBRATION = 1700
(module
  (import "wizeng:arith" "i32.trap_on_zero" (func $check (param i32) (result i32)))
  (func $start (export "_start")
    (call $main)
  )
  (func $main (export "main")
    (local $y i32)
    (local.set $y (i32.const 170000 (;$INNER_ITERATIONS;)))
    (loop $l
      (local.get $y)
      (call $check)
      (call $check)
      (call $check)
      (call $check)
      (call $check)
      (call $check)
      (call $check)
      (call $check)
      (call $check)
      (call $check)
      (i32.const 1)
      (i32.sub)
      (local.tee $y)
      (br_if $l)
    )
  )
  (func $foo
  )
)

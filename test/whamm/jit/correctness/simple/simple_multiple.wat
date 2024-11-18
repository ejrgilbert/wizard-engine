;; TO RUN:
;; wasm-tools parse ./test/whamm/jit/correctness/simple/simple_multiple.wat -o ./test/whamm/jit/correctness/simple/simple_multiple.wasm
;; wizard --monitors=./test/whamm/jit/correctness/simple/simple_multiple.wasm ./test/monitors/branch_monitor.wasm

;; EXPECTED OUTPUT:
;; hello call!
;; hello call!

;; SUMMARY
;; - num_match_rules: 2
;; - overlapping? false
;; - predicated?
;;   - static: false
;;   - dynamic: false
;; - requested_data:
;;   - predicate: N/A
;;   - body: None
;; - $alloc function? false
;; - END? false
;; - multi-memory? false
(module
    (import "wizeng" "puti" (func $puti (param i32)))
    (import "wizeng" "puts" (func $puts (param i32 i32)))
    (memory (export "mem") 1 1)
    (data (i32.const 0x0) "hello br!\n")
    (data (i32.const 0xFF) "hello call!\n")

    (func $br_probe (export "wasm:opcode:br")
        (call $puts (i32.const 0x0) (i32.const 10))
    )

    (func $call_probe (export "wasm:opcode:call")
        (call $puts (i32.const 0xFF) (i32.const 12))
    )
)
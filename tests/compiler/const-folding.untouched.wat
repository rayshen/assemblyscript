(module
 (type $none_=>_none (func))
 (type $i64_=>_i64 (func (param i64) (result i64)))
 (global $const-folding/w (mut i32) (i32.const 0))
 (global $const-folding/x (mut i32) (i32.const 0))
 (global $~lib/memory/__data_end i32 (i32.const 8))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 16392))
 (global $~lib/memory/__heap_base i32 (i32.const 16392))
 (memory $0 0)
 (table $0 1 funcref)
 (elem $0 (i32.const 1))
 (export "x" (global $const-folding/x))
 (export "test" (func $const-folding/test))
 (export "memory" (memory $0))
 (start $~start)
 (func $start:const-folding
  i32.const 42
  i32.const 1
  i32.shr_s
  global.set $const-folding/w
  global.get $const-folding/w
  i32.const 252
  i32.and
  global.get $const-folding/w
  i32.const 1
  i32.shr_s
  i32.or
  global.set $const-folding/w
  global.get $const-folding/w
  global.set $const-folding/x
 )
 (func $const-folding/test (param $0 i64) (result i64)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  i64.const -1
  local.set $1
  i64.const -1
  local.set $2
  local.get $0
  i64.const 1
  i64.shl
  local.set $3
  local.get $3
  local.get $2
  i64.const -1
  i64.xor
  i64.and
  local.set $4
  local.get $4
  local.get $4
  i64.const 1
  i64.shl
  i64.or
  local.set $4
  local.get $4
  local.get $0
  i64.const 63
  i64.shr_u
  local.get $1
  i64.and
  i64.or
  local.set $4
  local.get $3
  local.get $4
  i64.add
 )
 (func $~start
  call $start:const-folding
 )
)

package _internal.runtime.internal.atomic_;
function loadp(_ptr:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/atomic_wasm.go#L50"
        return (_ptr.__convert__(stdgo._internal.internal.reflect.GoType.invalidType) : stdgo.Pointer<stdgo._internal.unsafe.Unsafe.UnsafePointer>).value;
    }

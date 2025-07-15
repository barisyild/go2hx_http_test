package _internal.runtime.internal.atomic_;
function casp1(_ptr:stdgo.Pointer<stdgo._internal.unsafe.Unsafe.UnsafePointer>, _old:stdgo._internal.unsafe.Unsafe.UnsafePointer, _new_:stdgo._internal.unsafe.Unsafe.UnsafePointer):Bool {
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/atomic_wasm.go#L258"
        if (_ptr.value == (_old)) {
            _ptr.value = _new_;
            //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/atomic_wasm.go#L260"
            return true;
        };
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/atomic_wasm.go#L262"
        return false;
    }

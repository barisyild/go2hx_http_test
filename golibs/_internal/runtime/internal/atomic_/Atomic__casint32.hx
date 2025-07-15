package _internal.runtime.internal.atomic_;
function casint32(_ptr:stdgo.Pointer<stdgo.GoInt32>, _old:stdgo.GoInt32, _new_:stdgo.GoInt32):Bool {
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/atomic_wasm.go#L228"
        if (_ptr.value == (_old)) {
            _ptr.value = _new_;
            //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/atomic_wasm.go#L230"
            return true;
        };
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/atomic_wasm.go#L232"
        return false;
    }

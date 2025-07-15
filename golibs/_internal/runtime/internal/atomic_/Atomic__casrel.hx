package _internal.runtime.internal.atomic_;
function casRel(_ptr:stdgo.Pointer<stdgo.GoUInt32>, _old:stdgo.GoUInt32, _new_:stdgo.GoUInt32):Bool {
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/atomic_wasm.go#L278"
        if (_ptr.value == (_old)) {
            _ptr.value = _new_;
            //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/atomic_wasm.go#L280"
            return true;
        };
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/atomic_wasm.go#L282"
        return false;
    }

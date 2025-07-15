package _internal.runtime.internal.atomic_;
function cas(_ptr:stdgo.Pointer<stdgo.GoUInt32>, _old:stdgo.GoUInt32, _new_:stdgo.GoUInt32):Bool {
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/atomic_wasm.go#L248"
        if (_ptr.value == (_old)) {
            _ptr.value = _new_;
            //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/atomic_wasm.go#L250"
            return true;
        };
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/atomic_wasm.go#L252"
        return false;
    }

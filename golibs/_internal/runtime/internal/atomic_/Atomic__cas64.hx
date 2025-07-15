package _internal.runtime.internal.atomic_;
function cas64(_ptr:stdgo.Pointer<stdgo.GoUInt64>, _old:stdgo.GoUInt64, _new_:stdgo.GoUInt64):Bool {
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/atomic_wasm.go#L176"
        if (_ptr.value == (_old)) {
            _ptr.value = _new_;
            //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/atomic_wasm.go#L178"
            return true;
        };
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/atomic_wasm.go#L180"
        return false;
    }

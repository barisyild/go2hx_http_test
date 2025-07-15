package _internal.runtime.internal.atomic_;
function casint64(_ptr:stdgo.Pointer<stdgo.GoInt64>, _old:stdgo.GoInt64, _new_:stdgo.GoInt64):Bool {
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/atomic_wasm.go#L238"
        if (_ptr.value == (_old)) {
            _ptr.value = _new_;
            //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/atomic_wasm.go#L240"
            return true;
        };
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/atomic_wasm.go#L242"
        return false;
    }

package _internal.runtime.internal.atomic_;
function casuintptr(_ptr:stdgo.Pointer<stdgo.GoUIntptr>, _old:stdgo.GoUIntptr, _new_:stdgo.GoUIntptr):Bool {
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/atomic_wasm.go#L268"
        if (_ptr.value == (_old)) {
            _ptr.value = _new_;
            //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/atomic_wasm.go#L270"
            return true;
        };
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/atomic_wasm.go#L272"
        return false;
    }

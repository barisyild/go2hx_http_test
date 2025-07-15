package _internal.runtime.internal.atomic_;
function xchguintptr(_ptr:stdgo.Pointer<stdgo.GoUIntptr>, _new_:stdgo.GoUIntptr):stdgo.GoUIntptr {
        var _old = @:assignType (_ptr.value : stdgo.GoUIntptr);
        _ptr.value = _new_;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/atomic_wasm.go#L144"
        return _old;
    }

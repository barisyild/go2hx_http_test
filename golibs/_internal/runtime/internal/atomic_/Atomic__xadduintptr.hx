package _internal.runtime.internal.atomic_;
function xadduintptr(_ptr:stdgo.Pointer<stdgo.GoUIntptr>, _delta:stdgo.GoUIntptr):stdgo.GoUIntptr {
        var _new_ = @:assignType (_ptr.value + _delta : stdgo.GoUIntptr);
        _ptr.value = _new_;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/atomic_wasm.go#L104"
        return _new_;
    }

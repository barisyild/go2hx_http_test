package _internal.runtime.internal.atomic_;
function xaddint32(_ptr:stdgo.Pointer<stdgo.GoInt32>, _delta:stdgo.GoInt32):stdgo.GoInt32 {
        var _new_ = @:assignType (_ptr.value + _delta : stdgo.GoInt32);
        _ptr.value = _new_;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/atomic_wasm.go#L332"
        return _new_;
    }

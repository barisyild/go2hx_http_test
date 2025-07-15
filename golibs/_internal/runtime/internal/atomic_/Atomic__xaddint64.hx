package _internal.runtime.internal.atomic_;
function xaddint64(_ptr:stdgo.Pointer<stdgo.GoInt64>, _delta:stdgo.GoInt64):stdgo.GoInt64 {
        var _new_ = @:assignType (_ptr.value + _delta : stdgo.GoInt64);
        _ptr.value = _new_;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/atomic_wasm.go#L340"
        return _new_;
    }

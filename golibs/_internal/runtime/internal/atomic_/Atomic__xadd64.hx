package _internal.runtime.internal.atomic_;
function xadd64(_ptr:stdgo.Pointer<stdgo.GoUInt64>, _delta:stdgo.GoInt64):stdgo.GoUInt64 {
        var _new_ = @:assignType (_ptr.value + (_delta : stdgo.GoUInt64) : stdgo.GoUInt64);
        _ptr.value = _new_;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/atomic_wasm.go#L96"
        return _new_;
    }

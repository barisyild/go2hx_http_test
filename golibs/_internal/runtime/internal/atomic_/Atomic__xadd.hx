package _internal.runtime.internal.atomic_;
function xadd(_ptr:stdgo.Pointer<stdgo.GoUInt32>, _delta:stdgo.GoInt32):stdgo.GoUInt32 {
        var _new_ = @:assignType (_ptr.value + (_delta : stdgo.GoUInt32) : stdgo.GoUInt32);
        _ptr.value = _new_;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/atomic_wasm.go#L88"
        return _new_;
    }

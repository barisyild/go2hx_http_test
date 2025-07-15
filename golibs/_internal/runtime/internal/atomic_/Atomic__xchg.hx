package _internal.runtime.internal.atomic_;
function xchg(_ptr:stdgo.Pointer<stdgo.GoUInt32>, _new_:stdgo.GoUInt32):stdgo.GoUInt32 {
        var _old = @:assignType (_ptr.value : stdgo.GoUInt32);
        _ptr.value = _new_;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/atomic_wasm.go#L112"
        return _old;
    }

package _internal.runtime.internal.atomic_;
function xchg64(_ptr:stdgo.Pointer<stdgo.GoUInt64>, _new_:stdgo.GoUInt64):stdgo.GoUInt64 {
        var _old = @:assignType (_ptr.value : stdgo.GoUInt64);
        _ptr.value = _new_;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/atomic_wasm.go#L120"
        return _old;
    }

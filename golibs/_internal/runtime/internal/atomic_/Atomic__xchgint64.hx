package _internal.runtime.internal.atomic_;
function xchgint64(_ptr:stdgo.Pointer<stdgo.GoInt64>, _new_:stdgo.GoInt64):stdgo.GoInt64 {
        var _old = @:assignType (_ptr.value : stdgo.GoInt64);
        _ptr.value = _new_;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/atomic_wasm.go#L136"
        return _old;
    }

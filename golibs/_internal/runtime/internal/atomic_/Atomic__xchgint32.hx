package _internal.runtime.internal.atomic_;
function xchgint32(_ptr:stdgo.Pointer<stdgo.GoInt32>, _new_:stdgo.GoInt32):stdgo.GoInt32 {
        var _old = @:assignType (_ptr.value : stdgo.GoInt32);
        _ptr.value = _new_;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/atomic_wasm.go#L128"
        return _old;
    }

package _internal.runtime.internal.atomic_;
function storeint64(_ptr:stdgo.Pointer<stdgo.GoInt64>, _new_:stdgo.GoInt64):Void {
        _ptr.value = _new_;
    }

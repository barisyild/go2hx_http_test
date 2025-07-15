package _internal.runtime.internal.atomic_;
function storeint32(_ptr:stdgo.Pointer<stdgo.GoInt32>, _new_:stdgo.GoInt32):Void {
        _ptr.value = _new_;
    }

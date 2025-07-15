package _internal.runtime.internal.atomic_;
function storeReluintptr(_ptr:stdgo.Pointer<stdgo.GoUIntptr>, _val:stdgo.GoUIntptr):Void {
        _ptr.value = _val;
    }

package _internal.runtime.internal.atomic_;
function storeRel(_ptr:stdgo.Pointer<stdgo.GoUInt32>, _val:stdgo.GoUInt32):Void {
        _ptr.value = _val;
    }

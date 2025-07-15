package _internal.runtime.internal.atomic_;
function storeRel64(_ptr:stdgo.Pointer<stdgo.GoUInt64>, _val:stdgo.GoUInt64):Void {
        _ptr.value = _val;
    }

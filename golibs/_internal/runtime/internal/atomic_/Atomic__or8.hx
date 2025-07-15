package _internal.runtime.internal.atomic_;
function or8(_ptr:stdgo.Pointer<stdgo.GoUInt8>, _val:stdgo.GoUInt8):Void {
        _ptr.value = (_ptr.value | _val : stdgo.GoUInt8);
    }

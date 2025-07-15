package _internal.runtime.internal.atomic_;
function storeuintptr(_ptr:stdgo.Pointer<stdgo.GoUIntptr>, _new_:stdgo.GoUIntptr):Void {
        _ptr.value = _new_;
    }

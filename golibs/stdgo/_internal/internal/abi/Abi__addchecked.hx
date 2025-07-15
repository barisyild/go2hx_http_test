package stdgo._internal.internal.abi;
import stdgo._internal.unsafe.Unsafe;
function _addChecked(_p:stdgo._internal.unsafe.Unsafe.UnsafePointer, _x:stdgo.GoUIntptr, _whySafe:stdgo.GoString):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L227"
        return (new stdgo.AnyInterface(((new stdgo.GoUIntptr(_p) : stdgo.GoUIntptr) + _x : stdgo.GoUIntptr), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))) : stdgo._internal.unsafe.Unsafe.UnsafePointer);
    }

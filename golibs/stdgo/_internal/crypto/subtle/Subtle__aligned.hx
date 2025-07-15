package stdgo._internal.crypto.subtle;
import stdgo._internal.unsafe.Unsafe;
function _aligned(_dst:stdgo.Pointer<stdgo.GoUInt8>, _x:stdgo.Pointer<stdgo.GoUInt8>, _y:stdgo.Pointer<stdgo.GoUInt8>):Bool {
        //"file:///Users/o/.go/go1.21.3/src/crypto/subtle/xor_generic.go#L43"
        return (((((new stdgo.GoUIntptr((new stdgo.AnyInterface(_dst, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))) : stdgo._internal.unsafe.Unsafe.UnsafePointer)) : stdgo.GoUIntptr) | (new stdgo.GoUIntptr((new stdgo.AnyInterface(_x, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))) : stdgo._internal.unsafe.Unsafe.UnsafePointer)) : stdgo.GoUIntptr) : stdgo.GoUIntptr) | (new stdgo.GoUIntptr((new stdgo.AnyInterface(_y, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))) : stdgo._internal.unsafe.Unsafe.UnsafePointer)) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) & (new stdgo.GoUIntptr(3) : stdgo.GoUIntptr) : stdgo.GoUIntptr) == ((new stdgo.GoUIntptr(0) : stdgo.GoUIntptr));
    }

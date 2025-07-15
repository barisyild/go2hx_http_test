package stdgo._internal.crypto.subtle;
import stdgo._internal.unsafe.Unsafe;
function _words(_x:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUIntptr> {
        var _n = @:assignType ((new stdgo.GoUIntptr((_x.length)) : stdgo.GoUIntptr) / (new stdgo.GoUIntptr(4) : stdgo.GoUIntptr) : stdgo.GoUIntptr);
        //"file:///Users/o/.go/go1.21.3/src/crypto/subtle/xor_generic.go#L50"
        if (_n == ((new stdgo.GoUIntptr(0) : stdgo.GoUIntptr))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/subtle/xor_generic.go#L53"
            return (null : stdgo.Slice<stdgo.GoUIntptr>);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/subtle/xor_generic.go#L55"
        return stdgo._internal.unsafe.Unsafe_slice.slice(((new stdgo.AnyInterface(stdgo.Go.pointer(_x[(0 : stdgo.GoInt)]), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.GoType.invalidType) : stdgo.Pointer<stdgo.GoUIntptr>), _n);
    }

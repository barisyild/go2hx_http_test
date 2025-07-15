package stdgo._internal.internal.abi;
import stdgo._internal.unsafe.Unsafe;
function _assertIsAPowerOfTwo(_x:stdgo.GoUInt8):Void {
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/compiletype.go#L60"
        if (_x == ((0 : stdgo.GoUInt8))) {
            //"file:///Users/o/.go/go1.21.3/src/internal/abi/compiletype.go#L61"
            throw new stdgo.AnyInterface(("Zero is not a power of two" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/compiletype.go#L63"
        if ((_x & -_x : stdgo.GoUInt8) == (_x)) {
            //"file:///Users/o/.go/go1.21.3/src/internal/abi/compiletype.go#L64"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/compiletype.go#L66"
        throw new stdgo.AnyInterface(("Not a power of two" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
    }

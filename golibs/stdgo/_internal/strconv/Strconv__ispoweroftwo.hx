package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function _isPowerOfTwo(_x:stdgo.GoInt):Bool {
        //"file:///Users/o/.go/go1.21.3/src/strconv/itoa.go#L204"
        return (_x & ((_x - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt) == ((0 : stdgo.GoInt));
    }

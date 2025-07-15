package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function _mulByLog2Log10(_x:stdgo.GoInt):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L336"
        return (((_x * (78913 : stdgo.GoInt) : stdgo.GoInt)) >> (18i64 : stdgo.GoUInt64) : stdgo.GoInt);
    }

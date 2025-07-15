package stdgo._internal.math;
import stdgo._internal.math.bits.Bits;
function _nonzero(_x:stdgo.GoUInt64):stdgo.GoUInt64 {
        //"file:///Users/o/.go/go1.21.3/src/math/fma.go#L19"
        if (_x != ((0i64 : stdgo.GoUInt64))) {
            //"file:///Users/o/.go/go1.21.3/src/math/fma.go#L20"
            return (1i64 : stdgo.GoUInt64);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/fma.go#L22"
        return (0i64 : stdgo.GoUInt64);
    }

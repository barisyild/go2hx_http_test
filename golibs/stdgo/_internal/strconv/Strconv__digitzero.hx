package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function _digitZero(_dst:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/strconv/decimal.go#L62"
        if (_dst != null) for (_i => _ in _dst) {
            _dst[(_i : stdgo.GoInt)] = (48 : stdgo.GoUInt8);
        };
        //"file:///Users/o/.go/go1.21.3/src/strconv/decimal.go#L65"
        return (_dst.length);
    }

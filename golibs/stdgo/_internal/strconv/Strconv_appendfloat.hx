package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function appendFloat(_dst:stdgo.Slice<stdgo.GoUInt8>, _f:stdgo.GoFloat64, _fmt:stdgo.GoUInt8, _prec:stdgo.GoInt, _bitSize:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L54"
        return stdgo._internal.strconv.Strconv__genericftoa._genericFtoa(_dst, _f, _fmt, _prec, _bitSize);
    }

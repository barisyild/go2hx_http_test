package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function _contains(_s:stdgo.GoString, _c:stdgo.GoUInt8):Bool {
        //"file:///Users/o/.go/go1.21.3/src/strconv/quote.go#L20"
        return stdgo._internal.strconv.Strconv__index._index(_s?.__copy__(), _c) != ((-1 : stdgo.GoInt));
    }

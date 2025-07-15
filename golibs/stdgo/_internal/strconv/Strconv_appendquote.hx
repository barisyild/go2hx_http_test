package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function appendQuote(_dst:stdgo.Slice<stdgo.GoUInt8>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///Users/o/.go/go1.21.3/src/strconv/quote.go#L135"
        return stdgo._internal.strconv.Strconv__appendquotedwith._appendQuotedWith(_dst, _s?.__copy__(), (34 : stdgo.GoUInt8), false, false);
    }

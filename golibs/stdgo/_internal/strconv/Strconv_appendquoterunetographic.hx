package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function appendQuoteRuneToGraphic(_dst:stdgo.Slice<stdgo.GoUInt8>, _r:stdgo.GoInt32):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///Users/o/.go/go1.21.3/src/strconv/quote.go#L209"
        return stdgo._internal.strconv.Strconv__appendquotedrunewith._appendQuotedRuneWith(_dst, _r, (39 : stdgo.GoUInt8), false, true);
    }

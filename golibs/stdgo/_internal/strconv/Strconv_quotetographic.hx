package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function quoteToGraphic(_s:stdgo.GoString):stdgo.GoString {
        //"file:///Users/o/.go/go1.21.3/src/strconv/quote.go#L156"
        return stdgo._internal.strconv.Strconv__quotewith._quoteWith(_s?.__copy__(), (34 : stdgo.GoUInt8), false, true)?.__copy__();
    }

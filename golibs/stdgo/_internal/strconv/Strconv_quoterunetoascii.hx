package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function quoteRuneToASCII(_r:stdgo.GoInt32):stdgo.GoString {
        //"file:///Users/o/.go/go1.21.3/src/strconv/quote.go#L187"
        return stdgo._internal.strconv.Strconv__quoterunewith._quoteRuneWith(_r, (39 : stdgo.GoUInt8), true, false)?.__copy__();
    }

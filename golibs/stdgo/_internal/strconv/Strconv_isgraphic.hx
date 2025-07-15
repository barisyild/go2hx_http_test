package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function isGraphic(_r:stdgo.GoInt32):Bool {
        //"file:///Users/o/.go/go1.21.3/src/strconv/quote.go#L587"
        if (stdgo._internal.strconv.Strconv_isprint.isPrint(_r)) {
            //"file:///Users/o/.go/go1.21.3/src/strconv/quote.go#L588"
            return true;
        };
        //"file:///Users/o/.go/go1.21.3/src/strconv/quote.go#L590"
        return stdgo._internal.strconv.Strconv__isingraphiclist._isInGraphicList(_r);
    }

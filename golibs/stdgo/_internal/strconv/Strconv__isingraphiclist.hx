package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function _isInGraphicList(_r:stdgo.GoInt32):Bool {
        //"file:///Users/o/.go/go1.21.3/src/strconv/quote.go#L598"
        if ((_r > (65535 : stdgo.GoInt32) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/strconv/quote.go#L599"
            return false;
        };
        var _rr = @:assignType (_r : stdgo.GoUInt16);
        var _i = @:assignType (stdgo._internal.strconv.Strconv__bsearch16._bsearch16(stdgo._internal.strconv.Strconv__isgraphic._isGraphic, _rr) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/strconv/quote.go#L603"
        return ((_i < (stdgo._internal.strconv.Strconv__isgraphic._isGraphic.length) : Bool) && (_rr == stdgo._internal.strconv.Strconv__isgraphic._isGraphic[(_i : stdgo.GoInt)]) : Bool);
    }

package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function _bsearch16(_a:stdgo.Slice<stdgo.GoUInt16>, _x:stdgo.GoUInt16):stdgo.GoInt {
        var __0 = @:assignType (0 : stdgo.GoInt), __1 = @:assignType (_a.length : stdgo.GoInt);
var _j = __1, _i = __0;
        //"file:///Users/o/.go/go1.21.3/src/strconv/quote.go#L505"
        while ((_i < _j : Bool)) {
            var _h = @:assignType (_i + (((_j - _i : stdgo.GoInt)) >> (1i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/strconv/quote.go#L507"
            if ((_a[(_h : stdgo.GoInt)] < _x : Bool)) {
                _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _j = _h;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/strconv/quote.go#L513"
        return _i;
    }

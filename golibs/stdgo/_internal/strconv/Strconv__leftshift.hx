package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function _leftShift(_a:stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimal.T_decimal>, _k:stdgo.GoUInt):Void {
        var _delta = @:assignType (stdgo._internal.strconv.Strconv__leftcheats._leftcheats[(_k : stdgo.GoInt)]._delta : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/strconv/decimal.go#L271"
        if (stdgo._internal.strconv.Strconv__prefixislessthan._prefixIsLessThan(((@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._d.__slice__((0 : stdgo.GoInt), (@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nd) : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.strconv.Strconv__leftcheats._leftcheats[(_k : stdgo.GoInt)]._cutoff?.__copy__())) {
            //"file:///Users/o/.go/go1.21.3/src/strconv/decimal.go#L272"
            _delta--;
        };
        var _r = @:assignType ((@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nd : stdgo.GoInt);
        var _w = @:assignType ((@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nd + _delta : stdgo.GoInt);
        var _n:stdgo.GoUInt = (0 : stdgo.GoUInt);
        //"file:///Users/o/.go/go1.21.3/src/strconv/decimal.go#L280"
        {
            _r--;
            while ((_r >= (0 : stdgo.GoInt) : Bool)) {
                _n = (_n + ((((((@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._d[(_r : stdgo.GoInt)] : stdgo.GoUInt) - (48u32 : stdgo.GoUInt) : stdgo.GoUInt)) << _k : stdgo.GoUInt)) : stdgo.GoUInt);
var _quo = @:assignType (_n / (10u32 : stdgo.GoUInt) : stdgo.GoUInt);
var _rem = @:assignType (_n - ((10u32 : stdgo.GoUInt) * _quo : stdgo.GoUInt) : stdgo.GoUInt);
//"file:///Users/o/.go/go1.21.3/src/strconv/decimal.go#L284"
                _w--;
//"file:///Users/o/.go/go1.21.3/src/strconv/decimal.go#L285"
                if ((_w < ((@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._d.length) : Bool)) {
                    (@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._d[(_w : stdgo.GoInt)] = ((_rem + (48u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoUInt8);
                } else if (_rem != ((0u32 : stdgo.GoUInt))) {
                    (@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trunc = true;
                };
_n = _quo;
                _r--;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/strconv/decimal.go#L294"
        while ((_n > (0u32 : stdgo.GoUInt) : Bool)) {
            var _quo = @:assignType (_n / (10u32 : stdgo.GoUInt) : stdgo.GoUInt);
            var _rem = @:assignType (_n - ((10u32 : stdgo.GoUInt) * _quo : stdgo.GoUInt) : stdgo.GoUInt);
            //"file:///Users/o/.go/go1.21.3/src/strconv/decimal.go#L297"
            _w--;
            //"file:///Users/o/.go/go1.21.3/src/strconv/decimal.go#L298"
            if ((_w < ((@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._d.length) : Bool)) {
                (@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._d[(_w : stdgo.GoInt)] = ((_rem + (48u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoUInt8);
            } else if (_rem != ((0u32 : stdgo.GoUInt))) {
                (@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trunc = true;
            };
            _n = _quo;
        };
        (@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nd = ((@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nd + (_delta) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/strconv/decimal.go#L307"
        if (((@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nd >= ((@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._d.length) : Bool)) {
            (@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nd = ((@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._d.length);
        };
        (@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dp = ((@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dp + (_delta) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/strconv/decimal.go#L311"
        stdgo._internal.strconv.Strconv__trim._trim(_a);
    }

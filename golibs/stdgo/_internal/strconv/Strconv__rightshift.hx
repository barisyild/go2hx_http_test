package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function _rightShift(_a:stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimal.T_decimal>, _k:stdgo.GoUInt):Void {
        var _r = @:assignType (0 : stdgo.GoInt);
        var _w = @:assignType (0 : stdgo.GoInt);
        var _n:stdgo.GoUInt = (0 : stdgo.GoUInt);
        //"file:///Users/o/.go/go1.21.3/src/strconv/decimal.go#L116"
        while ((_n >> _k : stdgo.GoUInt) == ((0u32 : stdgo.GoUInt))) {
            //"file:///Users/o/.go/go1.21.3/src/strconv/decimal.go#L117"
            if ((_r >= (@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nd : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/strconv/decimal.go#L118"
                if (_n == ((0u32 : stdgo.GoUInt))) {
                    (@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nd = (0 : stdgo.GoInt);
                    //"file:///Users/o/.go/go1.21.3/src/strconv/decimal.go#L121"
                    return;
                };
                //"file:///Users/o/.go/go1.21.3/src/strconv/decimal.go#L123"
                while ((_n >> _k : stdgo.GoUInt) == ((0u32 : stdgo.GoUInt))) {
                    _n = (_n * (10u32 : stdgo.GoUInt) : stdgo.GoUInt);
                    //"file:///Users/o/.go/go1.21.3/src/strconv/decimal.go#L125"
                    _r++;
                };
                //"file:///Users/o/.go/go1.21.3/src/strconv/decimal.go#L127"
                break;
            };
var _c = @:assignType ((@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._d[(_r : stdgo.GoInt)] : stdgo.GoUInt);
_n = (((_n * (10u32 : stdgo.GoUInt) : stdgo.GoUInt) + _c : stdgo.GoUInt) - (48u32 : stdgo.GoUInt) : stdgo.GoUInt);
            _r++;
        };
        (@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dp = ((@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dp - ((_r - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        var _mask:stdgo.GoUInt = ((((1u32 : stdgo.GoUInt) << _k : stdgo.GoUInt)) - (1u32 : stdgo.GoUInt) : stdgo.GoUInt);
        //"file:///Users/o/.go/go1.21.3/src/strconv/decimal.go#L137"
        while ((_r < (@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nd : Bool)) {
            var _c = @:assignType ((@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._d[(_r : stdgo.GoInt)] : stdgo.GoUInt);
var _dig = @:assignType (_n >> _k : stdgo.GoUInt);
_n = (_n & (_mask) : stdgo.GoUInt);
(@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._d[(_w : stdgo.GoInt)] = ((_dig + (48u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoUInt8);
//"file:///Users/o/.go/go1.21.3/src/strconv/decimal.go#L142"
            _w++;
_n = (((_n * (10u32 : stdgo.GoUInt) : stdgo.GoUInt) + _c : stdgo.GoUInt) - (48u32 : stdgo.GoUInt) : stdgo.GoUInt);
            _r++;
        };
        //"file:///Users/o/.go/go1.21.3/src/strconv/decimal.go#L147"
        while ((_n > (0u32 : stdgo.GoUInt) : Bool)) {
            var _dig = @:assignType (_n >> _k : stdgo.GoUInt);
            _n = (_n & (_mask) : stdgo.GoUInt);
            //"file:///Users/o/.go/go1.21.3/src/strconv/decimal.go#L150"
            if ((_w < ((@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._d.length) : Bool)) {
                (@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._d[(_w : stdgo.GoInt)] = ((_dig + (48u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoUInt8);
                //"file:///Users/o/.go/go1.21.3/src/strconv/decimal.go#L152"
                _w++;
            } else if ((_dig > (0u32 : stdgo.GoUInt) : Bool)) {
                (@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trunc = true;
            };
            _n = (_n * (10u32 : stdgo.GoUInt) : stdgo.GoUInt);
        };
        (@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nd = _w;
        //"file:///Users/o/.go/go1.21.3/src/strconv/decimal.go#L160"
        stdgo._internal.strconv.Strconv__trim._trim(_a);
    }

package stdgo._internal.math;
import stdgo._internal.math.bits.Bits;
function _expm1(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        {};
        //"file:///Users/o/.go/go1.21.3/src/math/expm1.go#L152"
        if ((stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt)) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/expm1.go#L154"
            return _x;
        } else if (stdgo._internal.math.Math_isinf.isInf(_x, (-1 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/math/expm1.go#L156"
            return (-1 : stdgo.GoFloat64);
        };
        var _absx = @:assignType (_x : stdgo.GoFloat64);
        var _sign = @:assignType (false : Bool);
        //"file:///Users/o/.go/go1.21.3/src/math/expm1.go#L161"
        if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
            _absx = -_absx;
            _sign = true;
        };
        //"file:///Users/o/.go/go1.21.3/src/math/expm1.go#L167"
        if ((_absx >= (38.816242111356935 : stdgo.GoFloat64) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/expm1.go#L168"
            if (_sign) {
                //"file:///Users/o/.go/go1.21.3/src/math/expm1.go#L169"
                return (-1 : stdgo.GoFloat64);
            };
            //"file:///Users/o/.go/go1.21.3/src/math/expm1.go#L171"
            if ((_absx >= (709.782712893384 : stdgo.GoFloat64) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/math/expm1.go#L172"
                return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
            };
        };
        var _c:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _k:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/math/expm1.go#L179"
        if ((_absx > (0.34657359027997264 : stdgo.GoFloat64) : Bool)) {
            var _hi:stdgo.GoFloat64 = (0 : stdgo.GoFloat64), _lo:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
            //"file:///Users/o/.go/go1.21.3/src/math/expm1.go#L181"
            if ((_absx < (1.0397207708399179 : stdgo.GoFloat64) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/math/expm1.go#L182"
                if (!_sign) {
                    _hi = (_x - (0.6931471803691238 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _lo = (1.9082149292705877e-10 : stdgo.GoFloat64);
                    _k = (1 : stdgo.GoInt);
                } else {
                    _hi = (_x + (0.6931471803691238 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _lo = (-1.9082149292705877e-10 : stdgo.GoFloat64);
                    _k = (-1 : stdgo.GoInt);
                };
            } else {
                //"file:///Users/o/.go/go1.21.3/src/math/expm1.go#L192"
                if (!_sign) {
                    _k = ((((1.4426950408889634 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) + (0.5 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoInt);
                } else {
                    _k = ((((1.4426950408889634 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) - (0.5 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoInt);
                };
                var _t = @:assignType (_k : stdgo.GoFloat64);
                _hi = (_x - (_t * (0.6931471803691238 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64);
                _lo = (_t * (1.9082149292705877e-10 : stdgo.GoFloat64) : stdgo.GoFloat64);
            };
            _x = (_hi - _lo : stdgo.GoFloat64);
            _c = (((_hi - _x : stdgo.GoFloat64)) - _lo : stdgo.GoFloat64);
        } else if ((_absx < (5.551115123125783e-17 : stdgo.GoFloat64) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/expm1.go#L204"
            return _x;
        } else {
            _k = (0 : stdgo.GoInt);
        };
        var _hfx = @:assignType ((0.5 : stdgo.GoFloat64) * _x : stdgo.GoFloat64);
        var _hxs = @:assignType (_x * _hfx : stdgo.GoFloat64);
        var _r1 = @:assignType ((1 : stdgo.GoFloat64) + (_hxs * (((-0.03333333333333313 : stdgo.GoFloat64) + (_hxs * (((0.0015873015872548146 : stdgo.GoFloat64) + (_hxs * (((-7.93650757867488e-05 : stdgo.GoFloat64) + (_hxs * (((4.008217827329362e-06 : stdgo.GoFloat64) + (_hxs * (-2.0109921818362437e-07 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
        var _t = @:assignType ((3 : stdgo.GoFloat64) - (_r1 * _hfx : stdgo.GoFloat64) : stdgo.GoFloat64);
        var _e = @:assignType (_hxs * ((((_r1 - _t : stdgo.GoFloat64)) / (((6 : stdgo.GoFloat64) - (_x * _t : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64)) : stdgo.GoFloat64);
        //"file:///Users/o/.go/go1.21.3/src/math/expm1.go#L215"
        if (_k == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/math/expm1.go#L216"
            return (_x - (((_x * _e : stdgo.GoFloat64) - _hxs : stdgo.GoFloat64)) : stdgo.GoFloat64);
        };
        _e = (((_x * ((_e - _c : stdgo.GoFloat64)) : stdgo.GoFloat64) - _c : stdgo.GoFloat64));
        _e = (_e - (_hxs) : stdgo.GoFloat64);
        //"file:///Users/o/.go/go1.21.3/src/math/expm1.go#L220"
        if (_k == ((-1 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/math/expm1.go#L222"
            return (((0.5 : stdgo.GoFloat64) * ((_x - _e : stdgo.GoFloat64)) : stdgo.GoFloat64) - (0.5 : stdgo.GoFloat64) : stdgo.GoFloat64);
        } else if (_k == ((1 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/math/expm1.go#L224"
            if ((_x < (-0.25 : stdgo.GoFloat64) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/math/expm1.go#L225"
                return ((-2 : stdgo.GoFloat64) * ((_e - ((_x + (0.5 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64)) : stdgo.GoFloat64);
            };
            //"file:///Users/o/.go/go1.21.3/src/math/expm1.go#L227"
            return ((1 : stdgo.GoFloat64) + ((2 : stdgo.GoFloat64) * ((_x - _e : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
        } else if (((_k <= (-2 : stdgo.GoInt) : Bool) || (_k > (56 : stdgo.GoInt) : Bool) : Bool)) {
            var _y = @:assignType ((1 : stdgo.GoFloat64) - ((_e - _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
            _y = stdgo._internal.math.Math_float64frombits.float64frombits((stdgo._internal.math.Math_float64bits.float64bits(_y) + ((_k : stdgo.GoUInt64) << (52i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64));
            //"file:///Users/o/.go/go1.21.3/src/math/expm1.go#L231"
            return (_y - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/expm1.go#L233"
        if ((_k < (20 : stdgo.GoInt) : Bool)) {
            var _t = @:assignType (stdgo._internal.math.Math_float64frombits.float64frombits(((4607182418800017408i64 : stdgo.GoUInt64) - (((9007199254740992i64 : stdgo.GoUInt64) >> (_k : stdgo.GoUInt) : stdgo.GoUInt64)) : stdgo.GoUInt64)) : stdgo.GoFloat64);
            var _y = @:assignType (_t - ((_e - _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
            _y = stdgo._internal.math.Math_float64frombits.float64frombits((stdgo._internal.math.Math_float64bits.float64bits(_y) + ((_k : stdgo.GoUInt64) << (52i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64));
            //"file:///Users/o/.go/go1.21.3/src/math/expm1.go#L237"
            return _y;
        };
        _t = stdgo._internal.math.Math_float64frombits.float64frombits(((((1023 : stdgo.GoInt) - _k : stdgo.GoInt) : stdgo.GoUInt64) << (52i64 : stdgo.GoUInt64) : stdgo.GoUInt64));
        var _y = @:assignType (_x - ((_e + _t : stdgo.GoFloat64)) : stdgo.GoFloat64);
        //"file:///Users/o/.go/go1.21.3/src/math/expm1.go#L241"
        _y++;
        _y = stdgo._internal.math.Math_float64frombits.float64frombits((stdgo._internal.math.Math_float64bits.float64bits(_y) + ((_k : stdgo.GoUInt64) << (52i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64));
        //"file:///Users/o/.go/go1.21.3/src/math/expm1.go#L243"
        return _y;
    }

package stdgo._internal.math;
import stdgo._internal.math.bits.Bits;
function _erfc(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        {};
        //"file:///Users/o/.go/go1.21.3/src/math/erf.go#L284"
        if (stdgo._internal.math.Math_isnan.isNaN(_x)) {
            //"file:///Users/o/.go/go1.21.3/src/math/erf.go#L286"
            return stdgo._internal.math.Math_nan.naN();
        } else if (stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/math/erf.go#L288"
            return (0 : stdgo.GoFloat64);
        } else if (stdgo._internal.math.Math_isinf.isInf(_x, (-1 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/math/erf.go#L290"
            return (2 : stdgo.GoFloat64);
        };
        var _sign = @:assignType (false : Bool);
        //"file:///Users/o/.go/go1.21.3/src/math/erf.go#L293"
        if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
            _x = -_x;
            _sign = true;
        };
        //"file:///Users/o/.go/go1.21.3/src/math/erf.go#L297"
        if ((_x < (0.84375 : stdgo.GoFloat64) : Bool)) {
            var _temp:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
            //"file:///Users/o/.go/go1.21.3/src/math/erf.go#L299"
            if ((_x < (1.3877787807814457e-17 : stdgo.GoFloat64) : Bool)) {
                _temp = _x;
            } else {
                var _z = @:assignType (_x * _x : stdgo.GoFloat64);
                var _r = @:assignType ((0.12837916709551256 : stdgo.GoFloat64) + (_z * (((-0.3250421072470015 : stdgo.GoFloat64) + (_z * (((-0.02848174957559851 : stdgo.GoFloat64) + (_z * (((-0.005770270296489442 : stdgo.GoFloat64) + (_z * (-2.3763016656650163e-05 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
                var _s = @:assignType ((1 : stdgo.GoFloat64) + (_z * (((0.39791722395915535 : stdgo.GoFloat64) + (_z * (((0.0650222499887673 : stdgo.GoFloat64) + (_z * (((0.005081306281875766 : stdgo.GoFloat64) + (_z * (((0.00013249473800432164 : stdgo.GoFloat64) + (_z * (-3.960228278775368e-06 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
                var _y = @:assignType (_r / _s : stdgo.GoFloat64);
                //"file:///Users/o/.go/go1.21.3/src/math/erf.go#L306"
                if ((_x < (0.25 : stdgo.GoFloat64) : Bool)) {
                    _temp = (_x + (_x * _y : stdgo.GoFloat64) : stdgo.GoFloat64);
                } else {
                    _temp = ((0.5 : stdgo.GoFloat64) + (((_x * _y : stdgo.GoFloat64) + ((_x - (0.5 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64)) : stdgo.GoFloat64);
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/math/erf.go#L312"
            if (_sign) {
                //"file:///Users/o/.go/go1.21.3/src/math/erf.go#L313"
                return ((1 : stdgo.GoFloat64) + _temp : stdgo.GoFloat64);
            };
            //"file:///Users/o/.go/go1.21.3/src/math/erf.go#L315"
            return ((1 : stdgo.GoFloat64) - _temp : stdgo.GoFloat64);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/erf.go#L317"
        if ((_x < (1.25 : stdgo.GoFloat64) : Bool)) {
            var _s = @:assignType (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
            var p = @:assignType ((-0.0023621185607526594 : stdgo.GoFloat64) + (_s * (((0.41485611868374833 : stdgo.GoFloat64) + (_s * (((-0.3722078760357013 : stdgo.GoFloat64) + (_s * (((0.31834661990116175 : stdgo.GoFloat64) + (_s * (((-0.11089469428239668 : stdgo.GoFloat64) + (_s * (((0.035478304325618236 : stdgo.GoFloat64) + (_s * (-0.002166375594868791 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
            var q = @:assignType ((1 : stdgo.GoFloat64) + (_s * (((0.10642088040084423 : stdgo.GoFloat64) + (_s * (((0.540397917702171 : stdgo.GoFloat64) + (_s * (((0.07182865441419627 : stdgo.GoFloat64) + (_s * (((0.12617121980876164 : stdgo.GoFloat64) + (_s * (((0.01363708391202905 : stdgo.GoFloat64) + (_s * (0.011984499846799107 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
            //"file:///Users/o/.go/go1.21.3/src/math/erf.go#L321"
            if (_sign) {
                //"file:///Users/o/.go/go1.21.3/src/math/erf.go#L322"
                return ((1.8450629115104675 : stdgo.GoFloat64) + (p / q : stdgo.GoFloat64) : stdgo.GoFloat64);
            };
            //"file:///Users/o/.go/go1.21.3/src/math/erf.go#L324"
            return ((0.15493708848953247 : stdgo.GoFloat64) - (p / q : stdgo.GoFloat64) : stdgo.GoFloat64);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/erf.go#L327"
        if ((_x < (28 : stdgo.GoFloat64) : Bool)) {
            var _s = @:assignType ((1 : stdgo.GoFloat64) / ((_x * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
            var r:stdgo.GoFloat64 = (0 : stdgo.GoFloat64), s:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
            //"file:///Users/o/.go/go1.21.3/src/math/erf.go#L330"
            if ((_x < (2.857142857142857 : stdgo.GoFloat64) : Bool)) {
                r = ((-0.009864944034847148 : stdgo.GoFloat64) + (_s * (((-0.6938585727071818 : stdgo.GoFloat64) + (_s * (((-10.558626225323291 : stdgo.GoFloat64) + (_s * (((-62.375332450326006 : stdgo.GoFloat64) + (_s * (((-162.39666946257347 : stdgo.GoFloat64) + (_s * (((-184.60509290671104 : stdgo.GoFloat64) + (_s * (((-81.2874355063066 : stdgo.GoFloat64) + (_s * (-9.814329344169145 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
                s = ((1 : stdgo.GoFloat64) + (_s * (((19.651271667439257 : stdgo.GoFloat64) + (_s * (((137.65775414351904 : stdgo.GoFloat64) + (_s * (((434.56587747522923 : stdgo.GoFloat64) + (_s * (((645.3872717332679 : stdgo.GoFloat64) + (_s * (((429.00814002756783 : stdgo.GoFloat64) + (_s * (((108.63500554177944 : stdgo.GoFloat64) + (_s * (((6.570249770319282 : stdgo.GoFloat64) + (_s * (-0.0604244152148581 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
            } else {
                //"file:///Users/o/.go/go1.21.3/src/math/erf.go#L334"
                if ((_sign && (_x > (6 : stdgo.GoFloat64) : Bool) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/math/erf.go#L335"
                    return (2 : stdgo.GoFloat64);
                };
                r = ((-0.0098649429247001 : stdgo.GoFloat64) + (_s * (((-0.799283237680523 : stdgo.GoFloat64) + (_s * (((-17.757954917754752 : stdgo.GoFloat64) + (_s * (((-160.63638485582192 : stdgo.GoFloat64) + (_s * (((-637.5664433683896 : stdgo.GoFloat64) + (_s * (((-1025.0951316110772 : stdgo.GoFloat64) + (_s * (-483.5191916086514 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
                s = ((1 : stdgo.GoFloat64) + (_s * (((30.33806074348246 : stdgo.GoFloat64) + (_s * (((325.7925129965739 : stdgo.GoFloat64) + (_s * (((1536.729586084437 : stdgo.GoFloat64) + (_s * (((3199.8582195085955 : stdgo.GoFloat64) + (_s * (((2553.0504064331644 : stdgo.GoFloat64) + (_s * (((474.52854120695537 : stdgo.GoFloat64) + (_s * (-22.44095244658582 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
            };
            var _z = @:assignType (stdgo._internal.math.Math_float64frombits.float64frombits((stdgo._internal.math.Math_float64bits.float64bits(_x) & (-4294967296i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoFloat64);
            var _r = @:assignType (stdgo._internal.math.Math_exp.exp(((-_z * _z : stdgo.GoFloat64) - (0.5625 : stdgo.GoFloat64) : stdgo.GoFloat64)) * stdgo._internal.math.Math_exp.exp(((((_z - _x : stdgo.GoFloat64)) * ((_z + _x : stdgo.GoFloat64)) : stdgo.GoFloat64) + (r / s : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
            //"file:///Users/o/.go/go1.21.3/src/math/erf.go#L342"
            if (_sign) {
                //"file:///Users/o/.go/go1.21.3/src/math/erf.go#L343"
                return ((2 : stdgo.GoFloat64) - (_r / _x : stdgo.GoFloat64) : stdgo.GoFloat64);
            };
            //"file:///Users/o/.go/go1.21.3/src/math/erf.go#L345"
            return (_r / _x : stdgo.GoFloat64);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/erf.go#L347"
        if (_sign) {
            //"file:///Users/o/.go/go1.21.3/src/math/erf.go#L348"
            return (2 : stdgo.GoFloat64);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/erf.go#L350"
        return (0 : stdgo.GoFloat64);
    }

package stdgo._internal.math;
import stdgo._internal.math.bits.Bits;
function y0(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        {};
        //"file:///Users/o/.go/go1.21.3/src/math/j0.go#L173"
        if (((_x < (0 : stdgo.GoFloat64) : Bool) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/j0.go#L175"
            return stdgo._internal.math.Math_nan.naN();
        } else if (stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/math/j0.go#L177"
            return (0 : stdgo.GoFloat64);
        } else if (_x == ((0 : stdgo.GoFloat64))) {
            //"file:///Users/o/.go/go1.21.3/src/math/j0.go#L179"
            return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
        };
        //"file:///Users/o/.go/go1.21.3/src/math/j0.go#L182"
        if ((_x >= (2 : stdgo.GoFloat64) : Bool)) {
            var __tmp__ = stdgo._internal.math.Math_sincos.sincos(_x), _s:stdgo.GoFloat64 = __tmp__._0, _c:stdgo.GoFloat64 = __tmp__._1;
            var _ss = @:assignType (_s - _c : stdgo.GoFloat64);
            var _cc = @:assignType (_s + _c : stdgo.GoFloat64);
            //"file:///Users/o/.go/go1.21.3/src/math/j0.go#L203"
            if ((_x < (8.988465674311579e+307 : stdgo.GoFloat64) : Bool)) {
                var _z = @:assignType (-stdgo._internal.math.Math_cos.cos((_x + _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                //"file:///Users/o/.go/go1.21.3/src/math/j0.go#L205"
                if (((_s * _c : stdgo.GoFloat64) < (0 : stdgo.GoFloat64) : Bool)) {
                    _cc = (_z / _ss : stdgo.GoFloat64);
                } else {
                    _ss = (_z / _cc : stdgo.GoFloat64);
                };
            };
            var _z:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
            //"file:///Users/o/.go/go1.21.3/src/math/j0.go#L212"
            if ((_x > (6.80564733841877e+38 : stdgo.GoFloat64) : Bool)) {
                _z = (((0.5641895835477563 : stdgo.GoFloat64) * _ss : stdgo.GoFloat64) / stdgo._internal.math.Math_sqrt.sqrt(_x) : stdgo.GoFloat64);
            } else {
                var _u = @:assignType (stdgo._internal.math.Math__pzero._pzero(_x) : stdgo.GoFloat64);
                var _v = @:assignType (stdgo._internal.math.Math__qzero._qzero(_x) : stdgo.GoFloat64);
                _z = (((0.5641895835477563 : stdgo.GoFloat64) * (((_u * _ss : stdgo.GoFloat64) + (_v * _cc : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) / stdgo._internal.math.Math_sqrt.sqrt(_x) : stdgo.GoFloat64);
            };
            //"file:///Users/o/.go/go1.21.3/src/math/j0.go#L219"
            return _z;
        };
        //"file:///Users/o/.go/go1.21.3/src/math/j0.go#L221"
        if ((_x <= (7.450580596923828e-09 : stdgo.GoFloat64) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/j0.go#L222"
            return ((-0.07380429510868723 : stdgo.GoFloat64) + ((0.6366197723675814 : stdgo.GoFloat64) * stdgo._internal.math.Math_log.log(_x) : stdgo.GoFloat64) : stdgo.GoFloat64);
        };
        var _z = @:assignType (_x * _x : stdgo.GoFloat64);
        var _u = @:assignType ((-0.07380429510868723 : stdgo.GoFloat64) + (_z * (((0.17666645250918112 : stdgo.GoFloat64) + (_z * (((-0.01381856719455969 : stdgo.GoFloat64) + (_z * (((0.00034745343209368365 : stdgo.GoFloat64) + (_z * (((-3.8140705372436416e-06 : stdgo.GoFloat64) + (_z * (((1.9559013703502292e-08 : stdgo.GoFloat64) + (_z * (-3.982051941321034e-11 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
        var _v = @:assignType ((1 : stdgo.GoFloat64) + (_z * (((0.01273048348341237 : stdgo.GoFloat64) + (_z * (((7.600686273503533e-05 : stdgo.GoFloat64) + (_z * (((2.591508518404578e-07 : stdgo.GoFloat64) + (_z * (4.4111031133267547e-10 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
        //"file:///Users/o/.go/go1.21.3/src/math/j0.go#L227"
        return ((_u / _v : stdgo.GoFloat64) + (((0.6366197723675814 : stdgo.GoFloat64) * stdgo._internal.math.Math_j0.j0(_x) : stdgo.GoFloat64) * stdgo._internal.math.Math_log.log(_x) : stdgo.GoFloat64) : stdgo.GoFloat64);
    }

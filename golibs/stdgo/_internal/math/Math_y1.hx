package stdgo._internal.math;
import stdgo._internal.math.bits.Bits;
function y1(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        {};
        //"file:///Users/o/.go/go1.21.3/src/math/j1.go#L172"
        if (((_x < (0 : stdgo.GoFloat64) : Bool) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/j1.go#L174"
            return stdgo._internal.math.Math_nan.naN();
        } else if (stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/math/j1.go#L176"
            return (0 : stdgo.GoFloat64);
        } else if (_x == ((0 : stdgo.GoFloat64))) {
            //"file:///Users/o/.go/go1.21.3/src/math/j1.go#L178"
            return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
        };
        //"file:///Users/o/.go/go1.21.3/src/math/j1.go#L181"
        if ((_x >= (2 : stdgo.GoFloat64) : Bool)) {
            var __tmp__ = stdgo._internal.math.Math_sincos.sincos(_x), _s:stdgo.GoFloat64 = __tmp__._0, _c:stdgo.GoFloat64 = __tmp__._1;
            var _ss = @:assignType (-_s - _c : stdgo.GoFloat64);
            var _cc = @:assignType (_s - _c : stdgo.GoFloat64);
            //"file:///Users/o/.go/go1.21.3/src/math/j1.go#L187"
            if ((_x < (8.988465674311579e+307 : stdgo.GoFloat64) : Bool)) {
                var _z = @:assignType (stdgo._internal.math.Math_cos.cos((_x + _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                //"file:///Users/o/.go/go1.21.3/src/math/j1.go#L189"
                if (((_s * _c : stdgo.GoFloat64) > (0 : stdgo.GoFloat64) : Bool)) {
                    _cc = (_z / _ss : stdgo.GoFloat64);
                } else {
                    _ss = (_z / _cc : stdgo.GoFloat64);
                };
            };
            var _z:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
            //"file:///Users/o/.go/go1.21.3/src/math/j1.go#L207"
            if ((_x > (6.80564733841877e+38 : stdgo.GoFloat64) : Bool)) {
                _z = (((0.5641895835477563 : stdgo.GoFloat64) * _ss : stdgo.GoFloat64) / stdgo._internal.math.Math_sqrt.sqrt(_x) : stdgo.GoFloat64);
            } else {
                var _u = @:assignType (stdgo._internal.math.Math__pone._pone(_x) : stdgo.GoFloat64);
                var _v = @:assignType (stdgo._internal.math.Math__qone._qone(_x) : stdgo.GoFloat64);
                _z = (((0.5641895835477563 : stdgo.GoFloat64) * (((_u * _ss : stdgo.GoFloat64) + (_v * _cc : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) / stdgo._internal.math.Math_sqrt.sqrt(_x) : stdgo.GoFloat64);
            };
            //"file:///Users/o/.go/go1.21.3/src/math/j1.go#L214"
            return _z;
        };
        //"file:///Users/o/.go/go1.21.3/src/math/j1.go#L216"
        if ((_x <= (5.551115123125783e-17 : stdgo.GoFloat64) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/j1.go#L217"
            return ((-0.6366197723675814 : stdgo.GoFloat64) / _x : stdgo.GoFloat64);
        };
        var _z = @:assignType (_x * _x : stdgo.GoFloat64);
        var _u = @:assignType ((-0.19605709064623894 : stdgo.GoFloat64) + (_z * (((0.05044387166398113 : stdgo.GoFloat64) + (_z * (((-0.0019125689587576355 : stdgo.GoFloat64) + (_z * (((2.352526005616105e-05 : stdgo.GoFloat64) + (_z * (-9.190991580398789e-08 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
        var _v = @:assignType ((1 : stdgo.GoFloat64) + (_z * (((0.01991673182366499 : stdgo.GoFloat64) + (_z * (((0.00020255258102513517 : stdgo.GoFloat64) + (_z * (((1.3560880109751623e-06 : stdgo.GoFloat64) + (_z * (((6.227414523646215e-09 : stdgo.GoFloat64) + (_z * (1.6655924620799208e-11 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
        //"file:///Users/o/.go/go1.21.3/src/math/j1.go#L222"
        return ((_x * ((_u / _v : stdgo.GoFloat64)) : stdgo.GoFloat64) + ((0.6366197723675814 : stdgo.GoFloat64) * (((stdgo._internal.math.Math_j1.j1(_x) * stdgo._internal.math.Math_log.log(_x) : stdgo.GoFloat64) - ((1 : stdgo.GoFloat64) / _x : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
    }

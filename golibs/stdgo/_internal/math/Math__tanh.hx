package stdgo._internal.math;
import stdgo._internal.math.bits.Bits;
function _tanh(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        {};
        var _z = @:assignType (stdgo._internal.math.Math_abs.abs(_x) : stdgo.GoFloat64);
        //"file:///Users/o/.go/go1.21.3/src/math/tanh.go#L85"
        if ((_z > (44.014845965556525 : stdgo.GoFloat64) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/tanh.go#L87"
            if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/math/tanh.go#L88"
                return (-1 : stdgo.GoFloat64);
            };
            //"file:///Users/o/.go/go1.21.3/src/math/tanh.go#L90"
            return (1 : stdgo.GoFloat64);
        } else if ((_z >= (0.625 : stdgo.GoFloat64) : Bool)) {
            var _s = @:assignType (stdgo._internal.math.Math_exp.exp(((2 : stdgo.GoFloat64) * _z : stdgo.GoFloat64)) : stdgo.GoFloat64);
            _z = ((1 : stdgo.GoFloat64) - ((2 : stdgo.GoFloat64) / ((_s + (1 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
            //"file:///Users/o/.go/go1.21.3/src/math/tanh.go#L94"
            if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                _z = -_z;
            };
        } else {
            //"file:///Users/o/.go/go1.21.3/src/math/tanh.go#L98"
            if (_x == ((0 : stdgo.GoFloat64))) {
                //"file:///Users/o/.go/go1.21.3/src/math/tanh.go#L99"
                return _x;
            };
            var _s = @:assignType (_x * _x : stdgo.GoFloat64);
            _z = (_x + (((_x * _s : stdgo.GoFloat64) * ((((((stdgo._internal.math.Math__tanhp._tanhP[(0 : stdgo.GoInt)] * _s : stdgo.GoFloat64) + stdgo._internal.math.Math__tanhp._tanhP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _s : stdgo.GoFloat64) + stdgo._internal.math.Math__tanhp._tanhP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) : stdgo.GoFloat64) / ((((((((_s + stdgo._internal.math.Math__tanhq._tanhQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64)) * _s : stdgo.GoFloat64) + stdgo._internal.math.Math__tanhq._tanhQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _s : stdgo.GoFloat64) + stdgo._internal.math.Math__tanhq._tanhQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/tanh.go#L104"
        return _z;
    }

package stdgo._internal.math;
import stdgo._internal.math.bits.Bits;
function max(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64):stdgo.GoFloat64 {
        if (_x > 0 && !std.Math.isFinite(_x.toBasic()) || _y > 0 && !std.Math.isFinite(_y.toBasic())) return stdgo._internal.math.Math_inf.inf(1);
        final case1 = _x == 0.0 && _y == 0.0 && !stdgo._internal.math.Math_signbit.signbit(_x);
        if (_x == 0.0 && _y == 0.0 && (!stdgo._internal.math.Math_signbit.signbit(_x) || !stdgo._internal.math.Math_signbit.signbit(_y))) {
            return 0.0;
        };
        final case2 = !stdgo._internal.math.Math_isnan.isNaN(_y) || _x == 0.0;
        final case3 = _y == 0.0 && !stdgo._internal.math.Math_signbit.signbit(_y) && !stdgo._internal.math.Math_isnan.isNaN(_x);
        if (case1 && case2 && case3) {
            return 0.0;
        };
        if (stdgo._internal.math.Math_isnan.isNaN(_x) || stdgo._internal.math.Math_isnan.isNaN(_y)) return stdgo._internal.math.Math_nan.naN();
        return std.Math.max(_x.toBasic(), _y.toBasic());
    }

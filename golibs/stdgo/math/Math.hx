package stdgo.math;
var e : stdgo.GoFloat64 = (2.718281828459045f64 : stdgo.GoFloat64);
var pi : stdgo.GoFloat64 = (3.141592653589793f64 : stdgo.GoFloat64);
var phi : stdgo.GoFloat64 = (1.618033988749895f64 : stdgo.GoFloat64);
var sqrt2 : stdgo.GoFloat64 = (1.4142135623730951f64 : stdgo.GoFloat64);
var sqrtE : stdgo.GoFloat64 = (1.6487212707001282f64 : stdgo.GoFloat64);
var sqrtPi : stdgo.GoFloat64 = (1.772453850905516f64 : stdgo.GoFloat64);
var sqrtPhi : stdgo.GoFloat64 = (1.272019649514069f64 : stdgo.GoFloat64);
var ln2 : stdgo.GoFloat64 = (0.6931471805599453f64 : stdgo.GoFloat64);
var log2E : stdgo.GoFloat64 = (1.4426950408889634f64 : stdgo.GoFloat64);
var ln10 : stdgo.GoFloat64 = (2.302585092994046f64 : stdgo.GoFloat64);
var log10E : stdgo.GoFloat64 = (0.4342944819032518f64 : stdgo.GoFloat64);
var maxFloat32 : stdgo.GoFloat64 = (3.4028234663852886e+38f64 : stdgo.GoFloat64);
var smallestNonzeroFloat32 : stdgo.GoFloat64 = (1.401298464324817e-45f64 : stdgo.GoFloat64);
var maxFloat64 : stdgo.GoFloat64 = (1.7976931348623157e+308f64 : stdgo.GoFloat64);
var smallestNonzeroFloat64 : stdgo.GoFloat64 = (5e-324f64 : stdgo.GoFloat64);
var maxInt : stdgo.GoUInt64 = 2147483647i64;
var minInt : stdgo.GoUInt64 = -2147483648i64;
var maxInt8 : stdgo.GoUInt64 = 127i64;
var minInt8 : stdgo.GoUInt64 = -128i64;
var maxInt16 : stdgo.GoUInt64 = 32767i64;
var minInt16 : stdgo.GoUInt64 = -32768i64;
var maxInt32 : stdgo.GoUInt64 = 2147483647i64;
var minInt32 : stdgo.GoUInt64 = -2147483648i64;
var maxInt64 : stdgo.GoUInt64 = 9223372036854775807i64;
var minInt64 : stdgo.GoUInt64 = -9223372036854775808i64;
var maxUint : stdgo.GoUInt64 = 4294967295i64;
var maxUint8 : stdgo.GoUInt64 = 255i64;
var maxUint16 : stdgo.GoUInt64 = 65535i64;
var maxUint32 : stdgo.GoUInt64 = 4294967295i64;
var maxUint64 : stdgo.GoUInt64 = -1i64;
/**
    * Package math provides basic constants and mathematical functions.
    * 
    * This package does not guarantee bit-identical results across architectures.
**/
class Math {
    /**
        * Abs returns the absolute value of x.
        * 
        * Special cases are:
        * 
        * 	Abs(±Inf) = +Inf
        * 	Abs(NaN) = NaN
    **/
    static public inline function abs(_x:stdgo.GoFloat64):stdgo.GoFloat64 return stdgo._internal.math.Math_abs.abs(_x);
    /**
        * Acosh returns the inverse hyperbolic cosine of x.
        * 
        * Special cases are:
        * 
        * 	Acosh(+Inf) = +Inf
        * 	Acosh(x) = NaN if x < 1
        * 	Acosh(NaN) = NaN
    **/
    static public inline function acosh(_x:stdgo.GoFloat64):stdgo.GoFloat64 return stdgo._internal.math.Math_acosh.acosh(_x);
    /**
        * Asin returns the arcsine, in radians, of x.
        * 
        * Special cases are:
        * 
        * 	Asin(±0) = ±0
        * 	Asin(x) = NaN if x < -1 or x > 1
    **/
    static public inline function asin(_x:stdgo.GoFloat64):stdgo.GoFloat64 return stdgo._internal.math.Math_asin.asin(_x);
    /**
        * Acos returns the arccosine, in radians, of x.
        * 
        * Special case is:
        * 
        * 	Acos(x) = NaN if x < -1 or x > 1
    **/
    static public inline function acos(_x:stdgo.GoFloat64):stdgo.GoFloat64 return stdgo._internal.math.Math_acos.acos(_x);
    /**
        * Asinh returns the inverse hyperbolic sine of x.
        * 
        * Special cases are:
        * 
        * 	Asinh(±0) = ±0
        * 	Asinh(±Inf) = ±Inf
        * 	Asinh(NaN) = NaN
    **/
    static public inline function asinh(_x:stdgo.GoFloat64):stdgo.GoFloat64 return stdgo._internal.math.Math_asinh.asinh(_x);
    /**
        * Atan returns the arctangent, in radians, of x.
        * 
        * Special cases are:
        * 
        * 	Atan(±0) = ±0
        * 	Atan(±Inf) = ±Pi/2
    **/
    static public inline function atan(_x:stdgo.GoFloat64):stdgo.GoFloat64 return stdgo._internal.math.Math_atan.atan(_x);
    /**
        * Atan2 returns the arc tangent of y/x, using
        * the signs of the two to determine the quadrant
        * of the return value.
        * 
        * Special cases are (in order):
        * 
        * 	Atan2(y, NaN) = NaN
        * 	Atan2(NaN, x) = NaN
        * 	Atan2(+0, x>=0) = +0
        * 	Atan2(-0, x>=0) = -0
        * 	Atan2(+0, x<=-0) = +Pi
        * 	Atan2(-0, x<=-0) = -Pi
        * 	Atan2(y>0, 0) = +Pi/2
        * 	Atan2(y<0, 0) = -Pi/2
        * 	Atan2(+Inf, +Inf) = +Pi/4
        * 	Atan2(-Inf, +Inf) = -Pi/4
        * 	Atan2(+Inf, -Inf) = 3Pi/4
        * 	Atan2(-Inf, -Inf) = -3Pi/4
        * 	Atan2(y, +Inf) = 0
        * 	Atan2(y>0, -Inf) = +Pi
        * 	Atan2(y<0, -Inf) = -Pi
        * 	Atan2(+Inf, x) = +Pi/2
        * 	Atan2(-Inf, x) = -Pi/2
    **/
    static public inline function atan2(_y:stdgo.GoFloat64, _x:stdgo.GoFloat64):stdgo.GoFloat64 return stdgo._internal.math.Math_atan2.atan2(_y, _x);
    /**
        * Atanh returns the inverse hyperbolic tangent of x.
        * 
        * Special cases are:
        * 
        * 	Atanh(1) = +Inf
        * 	Atanh(±0) = ±0
        * 	Atanh(-1) = -Inf
        * 	Atanh(x) = NaN if x < -1 or x > 1
        * 	Atanh(NaN) = NaN
    **/
    static public inline function atanh(_x:stdgo.GoFloat64):stdgo.GoFloat64 return stdgo._internal.math.Math_atanh.atanh(_x);
    /**
        * Inf returns positive infinity if sign >= 0, negative infinity if sign < 0.
    **/
    static public inline function inf(_sign:stdgo.GoInt):stdgo.GoFloat64 return stdgo._internal.math.Math_inf.inf(_sign);
    /**
        * NaN returns an IEEE 754 “not-a-number” value.
    **/
    static public inline function naN():stdgo.GoFloat64 return stdgo._internal.math.Math_nan.naN();
    /**
        * IsNaN reports whether f is an IEEE 754 “not-a-number” value.
    **/
    static public inline function isNaN(_f:stdgo.GoFloat64):Bool return stdgo._internal.math.Math_isnan.isNaN(_f);
    /**
        * IsInf reports whether f is an infinity, according to sign.
        * If sign > 0, IsInf reports whether f is positive infinity.
        * If sign < 0, IsInf reports whether f is negative infinity.
        * If sign == 0, IsInf reports whether f is either infinity.
    **/
    static public inline function isInf(_f:stdgo.GoFloat64, _sign:stdgo.GoInt):Bool return stdgo._internal.math.Math_isinf.isInf(_f, _sign);
    /**
        * Cbrt returns the cube root of x.
        * 
        * Special cases are:
        * 
        * 	Cbrt(±0) = ±0
        * 	Cbrt(±Inf) = ±Inf
        * 	Cbrt(NaN) = NaN
    **/
    static public inline function cbrt(_x:stdgo.GoFloat64):stdgo.GoFloat64 return stdgo._internal.math.Math_cbrt.cbrt(_x);
    /**
        * Copysign returns a value with the magnitude of f
        * and the sign of sign.
    **/
    static public inline function copysign(_f:stdgo.GoFloat64, _sign:stdgo.GoFloat64):stdgo.GoFloat64 return stdgo._internal.math.Math_copysign.copysign(_f, _sign);
    /**
        * Dim returns the maximum of x-y or 0.
        * 
        * Special cases are:
        * 
        * 	Dim(+Inf, +Inf) = NaN
        * 	Dim(-Inf, -Inf) = NaN
        * 	Dim(x, NaN) = Dim(NaN, x) = NaN
    **/
    static public inline function dim(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64):stdgo.GoFloat64 return stdgo._internal.math.Math_dim.dim(_x, _y);
    /**
        * Max returns the larger of x or y.
        * 
        * Special cases are:
        * 
        * 	Max(x, +Inf) = Max(+Inf, x) = +Inf
        * 	Max(x, NaN) = Max(NaN, x) = NaN
        * 	Max(+0, ±0) = Max(±0, +0) = +0
        * 	Max(-0, -0) = -0
        * 
        * Note that this differs from the built-in function max when called
        * with NaN and +Inf.
    **/
    static public inline function max(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64):stdgo.GoFloat64 return stdgo._internal.math.Math_max.max(_x, _y);
    /**
        * Min returns the smaller of x or y.
        * 
        * Special cases are:
        * 
        * 	Min(x, -Inf) = Min(-Inf, x) = -Inf
        * 	Min(x, NaN) = Min(NaN, x) = NaN
        * 	Min(-0, ±0) = Min(±0, -0) = -0
        * 
        * Note that this differs from the built-in function min when called
        * with NaN and -Inf.
    **/
    static public inline function min(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64):stdgo.GoFloat64 return stdgo._internal.math.Math_min.min(_x, _y);
    /**
        * Erf returns the error function of x.
        * 
        * Special cases are:
        * 
        * 	Erf(+Inf) = 1
        * 	Erf(-Inf) = -1
        * 	Erf(NaN) = NaN
    **/
    static public inline function erf(_x:stdgo.GoFloat64):stdgo.GoFloat64 return stdgo._internal.math.Math_erf.erf(_x);
    /**
        * Erfc returns the complementary error function of x.
        * 
        * Special cases are:
        * 
        * 	Erfc(+Inf) = 0
        * 	Erfc(-Inf) = 2
        * 	Erfc(NaN) = NaN
    **/
    static public inline function erfc(_x:stdgo.GoFloat64):stdgo.GoFloat64 return stdgo._internal.math.Math_erfc.erfc(_x);
    /**
        * Erfinv returns the inverse error function of x.
        * 
        * Special cases are:
        * 
        * 	Erfinv(1) = +Inf
        * 	Erfinv(-1) = -Inf
        * 	Erfinv(x) = NaN if x < -1 or x > 1
        * 	Erfinv(NaN) = NaN
    **/
    static public inline function erfinv(_x:stdgo.GoFloat64):stdgo.GoFloat64 return stdgo._internal.math.Math_erfinv.erfinv(_x);
    /**
        * Erfcinv returns the inverse of Erfc(x).
        * 
        * Special cases are:
        * 
        * 	Erfcinv(0) = +Inf
        * 	Erfcinv(2) = -Inf
        * 	Erfcinv(x) = NaN if x < 0 or x > 2
        * 	Erfcinv(NaN) = NaN
    **/
    static public inline function erfcinv(_x:stdgo.GoFloat64):stdgo.GoFloat64 return stdgo._internal.math.Math_erfcinv.erfcinv(_x);
    /**
        * Exp returns e**x, the base-e exponential of x.
        * 
        * Special cases are:
        * 
        * 	Exp(+Inf) = +Inf
        * 	Exp(NaN) = NaN
        * 
        * Very large values overflow to 0 or +Inf.
        * Very small values underflow to 1.
    **/
    static public inline function exp(_x:stdgo.GoFloat64):stdgo.GoFloat64 return stdgo._internal.math.Math_exp.exp(_x);
    /**
        * Exp2 returns 2**x, the base-2 exponential of x.
        * 
        * Special cases are the same as Exp.
    **/
    static public inline function exp2(_x:stdgo.GoFloat64):stdgo.GoFloat64 return stdgo._internal.math.Math_exp2.exp2(_x);
    /**
        * Expm1 returns e**x - 1, the base-e exponential of x minus 1.
        * It is more accurate than Exp(x) - 1 when x is near zero.
        * 
        * Special cases are:
        * 
        * 	Expm1(+Inf) = +Inf
        * 	Expm1(-Inf) = -1
        * 	Expm1(NaN) = NaN
        * 
        * Very large values overflow to -1 or +Inf.
    **/
    static public inline function expm1(_x:stdgo.GoFloat64):stdgo.GoFloat64 return stdgo._internal.math.Math_expm1.expm1(_x);
    /**
        * Floor returns the greatest integer value less than or equal to x.
        * 
        * Special cases are:
        * 
        * 	Floor(±0) = ±0
        * 	Floor(±Inf) = ±Inf
        * 	Floor(NaN) = NaN
    **/
    static public inline function floor(_x:stdgo.GoFloat64):stdgo.GoFloat64 return stdgo._internal.math.Math_floor.floor(_x);
    /**
        * Ceil returns the least integer value greater than or equal to x.
        * 
        * Special cases are:
        * 
        * 	Ceil(±0) = ±0
        * 	Ceil(±Inf) = ±Inf
        * 	Ceil(NaN) = NaN
    **/
    static public inline function ceil(_x:stdgo.GoFloat64):stdgo.GoFloat64 return stdgo._internal.math.Math_ceil.ceil(_x);
    /**
        * Trunc returns the integer value of x.
        * 
        * Special cases are:
        * 
        * 	Trunc(±0) = ±0
        * 	Trunc(±Inf) = ±Inf
        * 	Trunc(NaN) = NaN
    **/
    static public inline function trunc(_x:stdgo.GoFloat64):stdgo.GoFloat64 return stdgo._internal.math.Math_trunc.trunc(_x);
    /**
        * Round returns the nearest integer, rounding half away from zero.
        * 
        * Special cases are:
        * 
        * 	Round(±0) = ±0
        * 	Round(±Inf) = ±Inf
        * 	Round(NaN) = NaN
    **/
    static public inline function round(_x:stdgo.GoFloat64):stdgo.GoFloat64 return stdgo._internal.math.Math_round.round(_x);
    /**
        * RoundToEven returns the nearest integer, rounding ties to even.
        * 
        * Special cases are:
        * 
        * 	RoundToEven(±0) = ±0
        * 	RoundToEven(±Inf) = ±Inf
        * 	RoundToEven(NaN) = NaN
    **/
    static public inline function roundToEven(_x:stdgo.GoFloat64):stdgo.GoFloat64 return stdgo._internal.math.Math_roundtoeven.roundToEven(_x);
    /**
        * FMA returns x * y + z, computed with only one rounding.
        * (That is, FMA returns the fused multiply-add of x, y, and z.)
    **/
    static public inline function fMA(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64, _z:stdgo.GoFloat64):stdgo.GoFloat64 return stdgo._internal.math.Math_fma.fMA(_x, _y, _z);
    /**
        * Frexp breaks f into a normalized fraction
        * and an integral power of two.
        * It returns frac and exp satisfying f == frac × 2**exp,
        * with the absolute value of frac in the interval [½, 1).
        * 
        * Special cases are:
        * 
        * 	Frexp(±0) = ±0, 0
        * 	Frexp(±Inf) = ±Inf, 0
        * 	Frexp(NaN) = NaN, 0
    **/
    static public inline function frexp(_f:stdgo.GoFloat64):{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoInt; } return stdgo._internal.math.Math_frexp.frexp(_f);
    /**
        * Gamma returns the Gamma function of x.
        * 
        * Special cases are:
        * 
        * 	Gamma(+Inf) = +Inf
        * 	Gamma(+0) = +Inf
        * 	Gamma(-0) = -Inf
        * 	Gamma(x) = NaN for integer x < 0
        * 	Gamma(-Inf) = NaN
        * 	Gamma(NaN) = NaN
    **/
    static public inline function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 return stdgo._internal.math.Math_gamma.gamma(_x);
    /**
        * Hypot returns Sqrt(p*p + q*q), taking care to avoid
        * unnecessary overflow and underflow.
        * 
        * Special cases are:
        * 
        * 	Hypot(±Inf, q) = +Inf
        * 	Hypot(p, ±Inf) = +Inf
        * 	Hypot(NaN, q) = NaN
        * 	Hypot(p, NaN) = NaN
    **/
    static public inline function hypot(_p:stdgo.GoFloat64, _q:stdgo.GoFloat64):stdgo.GoFloat64 return stdgo._internal.math.Math_hypot.hypot(_p, _q);
    /**
        * J0 returns the order-zero Bessel function of the first kind.
        * 
        * Special cases are:
        * 
        * 	J0(±Inf) = 0
        * 	J0(0) = 1
        * 	J0(NaN) = NaN
    **/
    static public inline function j0(_x:stdgo.GoFloat64):stdgo.GoFloat64 return stdgo._internal.math.Math_j0.j0(_x);
    /**
        * Y0 returns the order-zero Bessel function of the second kind.
        * 
        * Special cases are:
        * 
        * 	Y0(+Inf) = 0
        * 	Y0(0) = -Inf
        * 	Y0(x < 0) = NaN
        * 	Y0(NaN) = NaN
    **/
    static public inline function y0(_x:stdgo.GoFloat64):stdgo.GoFloat64 return stdgo._internal.math.Math_y0.y0(_x);
    /**
        * J1 returns the order-one Bessel function of the first kind.
        * 
        * Special cases are:
        * 
        * 	J1(±Inf) = 0
        * 	J1(NaN) = NaN
    **/
    static public inline function j1(_x:stdgo.GoFloat64):stdgo.GoFloat64 return stdgo._internal.math.Math_j1.j1(_x);
    /**
        * Y1 returns the order-one Bessel function of the second kind.
        * 
        * Special cases are:
        * 
        * 	Y1(+Inf) = 0
        * 	Y1(0) = -Inf
        * 	Y1(x < 0) = NaN
        * 	Y1(NaN) = NaN
    **/
    static public inline function y1(_x:stdgo.GoFloat64):stdgo.GoFloat64 return stdgo._internal.math.Math_y1.y1(_x);
    /**
        * Jn returns the order-n Bessel function of the first kind.
        * 
        * Special cases are:
        * 
        * 	Jn(n, ±Inf) = 0
        * 	Jn(n, NaN) = NaN
    **/
    static public inline function jn(_n:stdgo.GoInt, _x:stdgo.GoFloat64):stdgo.GoFloat64 return stdgo._internal.math.Math_jn.jn(_n, _x);
    /**
        * Yn returns the order-n Bessel function of the second kind.
        * 
        * Special cases are:
        * 
        * 	Yn(n, +Inf) = 0
        * 	Yn(n ≥ 0, 0) = -Inf
        * 	Yn(n < 0, 0) = +Inf if n is odd, -Inf if n is even
        * 	Yn(n, x < 0) = NaN
        * 	Yn(n, NaN) = NaN
    **/
    static public inline function yn(_n:stdgo.GoInt, _x:stdgo.GoFloat64):stdgo.GoFloat64 return stdgo._internal.math.Math_yn.yn(_n, _x);
    /**
        * Ldexp is the inverse of Frexp.
        * It returns frac × 2**exp.
        * 
        * Special cases are:
        * 
        * 	Ldexp(±0, exp) = ±0
        * 	Ldexp(±Inf, exp) = ±Inf
        * 	Ldexp(NaN, exp) = NaN
    **/
    static public inline function ldexp(_frac:stdgo.GoFloat64, _exp:stdgo.GoInt):stdgo.GoFloat64 return stdgo._internal.math.Math_ldexp.ldexp(_frac, _exp);
    /**
        * Lgamma returns the natural logarithm and sign (-1 or +1) of Gamma(x).
        * 
        * Special cases are:
        * 
        * 	Lgamma(+Inf) = +Inf
        * 	Lgamma(0) = +Inf
        * 	Lgamma(-integer) = +Inf
        * 	Lgamma(-Inf) = -Inf
        * 	Lgamma(NaN) = NaN
    **/
    static public inline function lgamma(_x:stdgo.GoFloat64):{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoInt; } return stdgo._internal.math.Math_lgamma.lgamma(_x);
    /**
        * Log returns the natural logarithm of x.
        * 
        * Special cases are:
        * 
        * 	Log(+Inf) = +Inf
        * 	Log(0) = -Inf
        * 	Log(x < 0) = NaN
        * 	Log(NaN) = NaN
    **/
    static public inline function log(_x:stdgo.GoFloat64):stdgo.GoFloat64 return stdgo._internal.math.Math_log.log(_x);
    /**
        * Log10 returns the decimal logarithm of x.
        * The special cases are the same as for Log.
    **/
    static public inline function log10(_x:stdgo.GoFloat64):stdgo.GoFloat64 return stdgo._internal.math.Math_log10.log10(_x);
    /**
        * Log2 returns the binary logarithm of x.
        * The special cases are the same as for Log.
    **/
    static public inline function log2(_x:stdgo.GoFloat64):stdgo.GoFloat64 return stdgo._internal.math.Math_log2.log2(_x);
    /**
        * Log1p returns the natural logarithm of 1 plus its argument x.
        * It is more accurate than Log(1 + x) when x is near zero.
        * 
        * Special cases are:
        * 
        * 	Log1p(+Inf) = +Inf
        * 	Log1p(±0) = ±0
        * 	Log1p(-1) = -Inf
        * 	Log1p(x < -1) = NaN
        * 	Log1p(NaN) = NaN
    **/
    static public inline function log1p(_x:stdgo.GoFloat64):stdgo.GoFloat64 return stdgo._internal.math.Math_log1p.log1p(_x);
    /**
        * Logb returns the binary exponent of x.
        * 
        * Special cases are:
        * 
        * 	Logb(±Inf) = +Inf
        * 	Logb(0) = -Inf
        * 	Logb(NaN) = NaN
    **/
    static public inline function logb(_x:stdgo.GoFloat64):stdgo.GoFloat64 return stdgo._internal.math.Math_logb.logb(_x);
    /**
        * Ilogb returns the binary exponent of x as an integer.
        * 
        * Special cases are:
        * 
        * 	Ilogb(±Inf) = MaxInt32
        * 	Ilogb(0) = MinInt32
        * 	Ilogb(NaN) = MaxInt32
    **/
    static public inline function ilogb(_x:stdgo.GoFloat64):stdgo.GoInt return stdgo._internal.math.Math_ilogb.ilogb(_x);
    /**
        * Mod returns the floating-point remainder of x/y.
        * The magnitude of the result is less than y and its
        * sign agrees with that of x.
        * 
        * Special cases are:
        * 
        * 	Mod(±Inf, y) = NaN
        * 	Mod(NaN, y) = NaN
        * 	Mod(x, 0) = NaN
        * 	Mod(x, ±Inf) = x
        * 	Mod(x, NaN) = NaN
    **/
    static public inline function mod(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64):stdgo.GoFloat64 return stdgo._internal.math.Math_mod.mod(_x, _y);
    /**
        * Modf returns integer and fractional floating-point numbers
        * that sum to f. Both values have the same sign as f.
        * 
        * Special cases are:
        * 
        * 	Modf(±Inf) = ±Inf, NaN
        * 	Modf(NaN) = NaN, NaN
    **/
    static public inline function modf(_f:stdgo.GoFloat64):{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoFloat64; } return stdgo._internal.math.Math_modf.modf(_f);
    /**
        * Nextafter32 returns the next representable float32 value after x towards y.
        * 
        * Special cases are:
        * 
        * 	Nextafter32(x, x)   = x
        * 	Nextafter32(NaN, y) = NaN
        * 	Nextafter32(x, NaN) = NaN
    **/
    static public inline function nextafter32(_x:stdgo.GoFloat32, _y:stdgo.GoFloat32):stdgo.GoFloat32 return stdgo._internal.math.Math_nextafter32.nextafter32(_x, _y);
    /**
        * Nextafter returns the next representable float64 value after x towards y.
        * 
        * Special cases are:
        * 
        * 	Nextafter(x, x)   = x
        * 	Nextafter(NaN, y) = NaN
        * 	Nextafter(x, NaN) = NaN
    **/
    static public inline function nextafter(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64):stdgo.GoFloat64 return stdgo._internal.math.Math_nextafter.nextafter(_x, _y);
    /**
        * Pow returns x**y, the base-x exponential of y.
        * 
        * Special cases are (in order):
        * 
        * 	Pow(x, ±0) = 1 for any x
        * 	Pow(1, y) = 1 for any y
        * 	Pow(x, 1) = x for any x
        * 	Pow(NaN, y) = NaN
        * 	Pow(x, NaN) = NaN
        * 	Pow(±0, y) = ±Inf for y an odd integer < 0
        * 	Pow(±0, -Inf) = +Inf
        * 	Pow(±0, +Inf) = +0
        * 	Pow(±0, y) = +Inf for finite y < 0 and not an odd integer
        * 	Pow(±0, y) = ±0 for y an odd integer > 0
        * 	Pow(±0, y) = +0 for finite y > 0 and not an odd integer
        * 	Pow(-1, ±Inf) = 1
        * 	Pow(x, +Inf) = +Inf for |x| > 1
        * 	Pow(x, -Inf) = +0 for |x| > 1
        * 	Pow(x, +Inf) = +0 for |x| < 1
        * 	Pow(x, -Inf) = +Inf for |x| < 1
        * 	Pow(+Inf, y) = +Inf for y > 0
        * 	Pow(+Inf, y) = +0 for y < 0
        * 	Pow(-Inf, y) = Pow(-0, -y)
        * 	Pow(x, y) = NaN for finite x < 0 and finite non-integer y
    **/
    static public inline function pow(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64):stdgo.GoFloat64 return stdgo._internal.math.Math_pow.pow(_x, _y);
    /**
        * Pow10 returns 10**n, the base-10 exponential of n.
        * 
        * Special cases are:
        * 
        * 	Pow10(n) =    0 for n < -323
        * 	Pow10(n) = +Inf for n > 308
    **/
    static public inline function pow10(_n:stdgo.GoInt):stdgo.GoFloat64 return stdgo._internal.math.Math_pow10.pow10(_n);
    /**
        * Remainder returns the IEEE 754 floating-point remainder of x/y.
        * 
        * Special cases are:
        * 
        * 	Remainder(±Inf, y) = NaN
        * 	Remainder(NaN, y) = NaN
        * 	Remainder(x, 0) = NaN
        * 	Remainder(x, ±Inf) = x
        * 	Remainder(x, NaN) = NaN
    **/
    static public inline function remainder(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64):stdgo.GoFloat64 return stdgo._internal.math.Math_remainder.remainder(_x, _y);
    /**
        * Signbit reports whether x is negative or negative zero.
    **/
    static public inline function signbit(_x:stdgo.GoFloat64):Bool return stdgo._internal.math.Math_signbit.signbit(_x);
    /**
        * Cos returns the cosine of the radian argument x.
        * 
        * Special cases are:
        * 
        * 	Cos(±Inf) = NaN
        * 	Cos(NaN) = NaN
    **/
    static public inline function cos(_x:stdgo.GoFloat64):stdgo.GoFloat64 return stdgo._internal.math.Math_cos.cos(_x);
    /**
        * Sin returns the sine of the radian argument x.
        * 
        * Special cases are:
        * 
        * 	Sin(±0) = ±0
        * 	Sin(±Inf) = NaN
        * 	Sin(NaN) = NaN
    **/
    static public inline function sin(_x:stdgo.GoFloat64):stdgo.GoFloat64 return stdgo._internal.math.Math_sin.sin(_x);
    /**
        * Sincos returns Sin(x), Cos(x).
        * 
        * Special cases are:
        * 
        * 	Sincos(±0) = ±0, 1
        * 	Sincos(±Inf) = NaN, NaN
        * 	Sincos(NaN) = NaN, NaN
    **/
    static public inline function sincos(_x:stdgo.GoFloat64):{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoFloat64; } return stdgo._internal.math.Math_sincos.sincos(_x);
    /**
        * Sinh returns the hyperbolic sine of x.
        * 
        * Special cases are:
        * 
        * 	Sinh(±0) = ±0
        * 	Sinh(±Inf) = ±Inf
        * 	Sinh(NaN) = NaN
    **/
    static public inline function sinh(_x:stdgo.GoFloat64):stdgo.GoFloat64 return stdgo._internal.math.Math_sinh.sinh(_x);
    /**
        * Cosh returns the hyperbolic cosine of x.
        * 
        * Special cases are:
        * 
        * 	Cosh(±0) = 1
        * 	Cosh(±Inf) = +Inf
        * 	Cosh(NaN) = NaN
    **/
    static public inline function cosh(_x:stdgo.GoFloat64):stdgo.GoFloat64 return stdgo._internal.math.Math_cosh.cosh(_x);
    /**
        * Sqrt returns the square root of x.
        * 
        * Special cases are:
        * 
        * 	Sqrt(+Inf) = +Inf
        * 	Sqrt(±0) = ±0
        * 	Sqrt(x < 0) = NaN
        * 	Sqrt(NaN) = NaN
    **/
    static public inline function sqrt(_x:stdgo.GoFloat64):stdgo.GoFloat64 return stdgo._internal.math.Math_sqrt.sqrt(_x);
    /**
        * Tan returns the tangent of the radian argument x.
        * 
        * Special cases are:
        * 
        * 	Tan(±0) = ±0
        * 	Tan(±Inf) = NaN
        * 	Tan(NaN) = NaN
    **/
    static public inline function tan(_x:stdgo.GoFloat64):stdgo.GoFloat64 return stdgo._internal.math.Math_tan.tan(_x);
    /**
        * Tanh returns the hyperbolic tangent of x.
        * 
        * Special cases are:
        * 
        * 	Tanh(±0) = ±0
        * 	Tanh(±Inf) = ±1
        * 	Tanh(NaN) = NaN
    **/
    static public inline function tanh(_x:stdgo.GoFloat64):stdgo.GoFloat64 return stdgo._internal.math.Math_tanh.tanh(_x);
    /**
        * Float32bits returns the IEEE 754 binary representation of f,
        * with the sign bit of f and the result in the same bit position.
        * Float32bits(Float32frombits(x)) == x.
    **/
    static public inline function float32bits(_f:stdgo.GoFloat32):stdgo.GoUInt32 return stdgo._internal.math.Math_float32bits.float32bits(_f);
    /**
        * Float32frombits returns the floating-point number corresponding
        * to the IEEE 754 binary representation b, with the sign bit of b
        * and the result in the same bit position.
        * Float32frombits(Float32bits(x)) == x.
    **/
    static public inline function float32frombits(_b:stdgo.GoUInt32):stdgo.GoFloat32 return stdgo._internal.math.Math_float32frombits.float32frombits(_b);
    /**
        * Float64bits returns the IEEE 754 binary representation of f,
        * with the sign bit of f and the result in the same bit position,
        * and Float64bits(Float64frombits(x)) == x.
    **/
    static public inline function float64bits(_f:stdgo.GoFloat64):stdgo.GoUInt64 return stdgo._internal.math.Math_float64bits.float64bits(_f);
    /**
        * Float64frombits returns the floating-point number corresponding
        * to the IEEE 754 binary representation b, with the sign bit of b
        * and the result in the same bit position.
        * Float64frombits(Float64bits(x)) == x.
    **/
    static public inline function float64frombits(_b:stdgo.GoUInt64):stdgo.GoFloat64 return stdgo._internal.math.Math_float64frombits.float64frombits(_b);
    static public inline function negZero() stdgo._internal.math.Math_negzero.negZero();
}

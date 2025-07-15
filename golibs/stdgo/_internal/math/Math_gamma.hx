package stdgo._internal.math;
import stdgo._internal.math.bits.Bits;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _absz_27:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_26:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_25:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_14:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_28:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_18:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y1_16:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_29:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_24:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_17:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_15:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_23:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var euler_13 = (0.5772156649015329f64 : stdgo.GoFloat64);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _gotoNext = 534699i64;
                } else if (__value__ == (534699i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/math/gamma.go#L134"
                    if (((stdgo._internal.math.Math__isnegint._isNegInt(_x) || stdgo._internal.math.Math_isinf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
                        _gotoNext = 534709i64;
                    } else if (stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 534771i64;
                    } else if (_x == ((0 : stdgo.GoFloat64))) {
                        _gotoNext = 534806i64;
                    } else {
                        _gotoNext = 534879i64;
                    };
                } else if (__value__ == (534709i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/math/gamma.go#L136"
                    return stdgo._internal.math.Math_nan.naN();
                    _gotoNext = 534879i64;
                } else if (__value__ == (534771i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/math/gamma.go#L138"
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 534879i64;
                } else if (__value__ == (534806i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/math/gamma.go#L140"
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 534835i64;
                    } else {
                        _gotoNext = 534861i64;
                    };
                } else if (__value__ == (534835i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/math/gamma.go#L141"
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 534861i64;
                } else if (__value__ == (534861i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/math/gamma.go#L143"
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 534879i64;
                } else if (__value__ == (534879i64)) {
                    _q_14 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_15 = stdgo._internal.math.Math_floor.floor(_q_14);
                    //"file:///Users/o/.go/go1.21.3/src/math/gamma.go#L147"
                    if ((_q_14 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 534917i64;
                    } else {
                        _gotoNext = 535565i64;
                    };
                } else if (__value__ == (534917i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/math/gamma.go#L148"
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 534931i64;
                    } else {
                        _gotoNext = 535181i64;
                    };
                } else if (__value__ == (534931i64)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_16 = @:tmpset0 __tmp__._0;
                        _y2_17 = @:tmpset0 __tmp__._1;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/math/gamma.go#L150"
                    return (_y1_16 * _y2_17 : stdgo.GoFloat64);
                    _gotoNext = 535181i64;
                } else if (__value__ == (535181i64)) {
                    _signgam_18 = (1 : stdgo.GoInt);
                    //"file:///Users/o/.go/go1.21.3/src/math/gamma.go#L156"
                    {
                        _ip_23 = (_p_15 : stdgo.GoInt64);
                        if ((_ip_23 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 535225i64;
                        } else {
                            _gotoNext = 535249i64;
                        };
                    };
                } else if (__value__ == (535225i64)) {
                    _signgam_18 = (-1 : stdgo.GoInt);
                    _gotoNext = 535249i64;
                } else if (__value__ == (535249i64)) {
                    _z_24 = (_q_14 - _p_15 : stdgo.GoFloat64);
                    //"file:///Users/o/.go/go1.21.3/src/math/gamma.go#L160"
                    if ((_z_24 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 535273i64;
                    } else {
                        _gotoNext = 535307i64;
                    };
                } else if (__value__ == (535273i64)) {
                    _p_15 = (_p_15 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_24 = (_q_14 - _p_15 : stdgo.GoFloat64);
                    _gotoNext = 535307i64;
                } else if (__value__ == (535307i64)) {
                    _z_24 = (_q_14 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_24 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    //"file:///Users/o/.go/go1.21.3/src/math/gamma.go#L165"
                    if (_z_24 == ((0 : stdgo.GoFloat64))) {
                        _gotoNext = 535337i64;
                    } else {
                        _gotoNext = 535368i64;
                    };
                } else if (__value__ == (535337i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/math/gamma.go#L166"
                    return stdgo._internal.math.Math_inf.inf(_signgam_18);
                    _gotoNext = 535368i64;
                } else if (__value__ == (535368i64)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_14);
                        _sq1_25 = @:tmpset0 __tmp__._0;
                        _sq2_26 = @:tmpset0 __tmp__._1;
                    };
                    _absz_27 = stdgo._internal.math.Math_abs.abs(_z_24);
                    _d_28 = ((_absz_27 * _sq1_25 : stdgo.GoFloat64) * _sq2_26 : stdgo.GoFloat64);
                    //"file:///Users/o/.go/go1.21.3/src/math/gamma.go#L171"
                    if (stdgo._internal.math.Math_isinf.isInf(_d_28, (0 : stdgo.GoInt))) {
                        _gotoNext = 535450i64;
                    } else {
                        _gotoNext = 535490i64;
                    };
                } else if (__value__ == (535450i64)) {
                    _z_24 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_27 : stdgo.GoFloat64) / _sq1_25 : stdgo.GoFloat64) / _sq2_26 : stdgo.GoFloat64);
                    _gotoNext = 535512i64;
                } else if (__value__ == (535490i64)) {
                    _gotoNext = 535490i64;
                    _z_24 = ((3.141592653589793 : stdgo.GoFloat64) / _d_28 : stdgo.GoFloat64);
                    0i64;
                    _gotoNext = 535512i64;
                } else if (__value__ == (535512i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/math/gamma.go#L176"
                    return ((_signgam_18 : stdgo.GoFloat64) * _z_24 : stdgo.GoFloat64);
                    _gotoNext = 535565i64;
                } else if (__value__ == (535565i64)) {
                    _z_29 = (1 : stdgo.GoFloat64);
                    0i64;
                    _gotoNext = 535575i64;
                } else if (__value__ == (535575i64)) {
                    //"file://#L0"
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 535586i64;
                    } else {
                        _gotoNext = 535616i64;
                    };
                } else if (__value__ == (535586i64)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_29 = (_z_29 * _x : stdgo.GoFloat64);
                    _gotoNext = 535575i64;
                } else if (__value__ == (535616i64)) {
                    0i64;
                    _gotoNext = 535616i64;
                    //"file://#L0"
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 535626i64;
                    } else {
                        _gotoNext = 535692i64;
                    };
                } else if (__value__ == (535626i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/math/gamma.go#L186"
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 535644i64;
                    } else {
                        _gotoNext = 535666i64;
                    };
                } else if (__value__ == (535644i64)) {
                    _gotoNext = 536022i64;
                } else if (__value__ == (535666i64)) {
                    _z_29 = (_z_29 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 535616i64;
                } else if (__value__ == (535692i64)) {
                    0i64;
                    _gotoNext = 535692i64;
                    //"file://#L0"
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 535702i64;
                    } else {
                        _gotoNext = 535768i64;
                    };
                } else if (__value__ == (535702i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/math/gamma.go#L193"
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 535719i64;
                    } else {
                        _gotoNext = 535741i64;
                    };
                } else if (__value__ == (535719i64)) {
                    _gotoNext = 536022i64;
                } else if (__value__ == (535741i64)) {
                    _z_29 = (_z_29 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 535692i64;
                } else if (__value__ == (535768i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/math/gamma.go#L200"
                    if (_x == ((2 : stdgo.GoFloat64))) {
                        _gotoNext = 535778i64;
                    } else {
                        _gotoNext = 535796i64;
                    };
                } else if (__value__ == (535778i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/math/gamma.go#L201"
                    return _z_29;
                    _gotoNext = 535796i64;
                } else if (__value__ == (535796i64)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_15 = (((((((((((((((((_x * stdgo._internal.math.Math___gamp.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_14 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamq.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    //"file:///Users/o/.go/go1.21.3/src/math/gamma.go#L207"
                    return ((_z_29 * _p_15 : stdgo.GoFloat64) / _q_14 : stdgo.GoFloat64);
                    _gotoNext = 536022i64;
                } else if (__value__ == (536022i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/math/gamma.go#L210"
                    if (_x == ((0 : stdgo.GoFloat64))) {
                        _gotoNext = 536040i64;
                    } else {
                        _gotoNext = 536062i64;
                    };
                } else if (__value__ == (536040i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/math/gamma.go#L211"
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 536062i64;
                } else if (__value__ == (536062i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/math/gamma.go#L213"
                    return (_z_29 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw new stdgo.AnyInterface(("unreachable goto control flow" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.invalidType));
    }

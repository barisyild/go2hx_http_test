package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _maxMantDigits_36:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_43:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _ndMant_41:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_40:stdgo.GoInt = (0 : stdgo.GoInt);
        var _dp_42:stdgo.GoInt = (0 : stdgo.GoInt);
        var _underscores_34:Bool = false;
        var _e_45:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_44:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_38:Bool = false;
        var _expChar_37:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _base_35:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _sawdigits_39:Bool = false;
        var _loopBreak = false;
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _underscores_34 = false;
                    //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L179"
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2637339i64;
                    } else {
                        _gotoNext = 2637354i64;
                    };
                } else if (__value__ == (2637339i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L180"
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2637354i64;
                } else if (__value__ == (2637354i64)) {
                    _gotoNext = 2637354i64;
                    //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L182"
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2637364i64;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2637389i64;
                    } else {
                        _gotoNext = 2637442i64;
                    };
                } else if (__value__ == (2637364i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L184"
                    _i++;
                    _gotoNext = 2637442i64;
                } else if (__value__ == (2637389i64)) {
                    _neg = true;
                    //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L187"
                    _i++;
                    _gotoNext = 2637442i64;
                } else if (__value__ == (2637442i64)) {
                    _base_35 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_36 = (19 : stdgo.GoInt);
                    _expChar_37 = (101 : stdgo.GoUInt8);
                    //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L194"
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2637584i64;
                    } else {
                        _gotoNext = 2637685i64;
                    };
                } else if (__value__ == (2637584i64)) {
                    _base_35 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_36 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_37 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2637685i64;
                } else if (__value__ == (2637685i64)) {
                    _sawdot_38 = false;
                    _sawdigits_39 = false;
                    _nd_40 = (0 : stdgo.GoInt);
                    _ndMant_41 = (0 : stdgo.GoInt);
                    _dp_42 = (0 : stdgo.GoInt);
                    _gotoNext = 2637752i64;
                } else if (__value__ == (2637752i64)) {
                    0i64;
                    _loopBreak = false;
                    _gotoNext = 2637759i64;
                } else if (__value__ == (2637759i64)) {
                    //"file://#L0"
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2637781i64;
                    } else {
                        _gotoNext = 2638501i64;
                    };
                } else if (__value__ == (2637781i64)) {
                    _gotoNext = 2637785i64;
                } else if (__value__ == (2637785i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L208"
                    {
                        _c_43 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_43 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2637812i64;
                            } else if (__value__ == (_c_43 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2637864i64;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_43 : Bool) && (_c_43 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2637957i64;
                            } else if (__value__ == (((_base_35 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_43) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_43) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2638249i64;
                            } else {
                                _gotoNext = 2638491i64;
                            };
                        };
                    };
                } else if (__value__ == (2637812i64)) {
                    _underscores_34 = true;
                    //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L207"
                    _i++;
                    _gotoNext = 2637759i64;
                } else if (__value__ == (2637864i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L214"
                    if (_sawdot_38) {
                        _gotoNext = 2637892i64;
                    } else {
                        _gotoNext = 2637917i64;
                    };
                } else if (__value__ == (2637892i64)) {
                    _loopBreak = true;
                    _gotoNext = 2637759i64;
                } else if (__value__ == (2637917i64)) {
                    _sawdot_38 = true;
                    _dp_42 = _nd_40;
                    //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L207"
                    _i++;
                    _gotoNext = 2637759i64;
                } else if (__value__ == (2637957i64)) {
                    _sawdigits_39 = true;
                    //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L223"
                    if (((_c_43 == (48 : stdgo.GoUInt8)) && (_nd_40 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2638030i64;
                    } else {
                        _gotoNext = 2638086i64;
                    };
                } else if (__value__ == (2638030i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L224"
                    _dp_42--;
                    //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L207"
                    _i++;
                    _gotoNext = 2637759i64;
                } else if (__value__ == (2638086i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L227"
                    _nd_40++;
                    //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L228"
                    if ((_ndMant_41 < _maxMantDigits_36 : Bool)) {
                        _gotoNext = 2638120i64;
                    } else if (_c_43 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2638210i64;
                    } else {
                        _gotoNext = 2638237i64;
                    };
                } else if (__value__ == (2638120i64)) {
                    _mantissa = (_mantissa * (_base_35) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_43 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L231"
                    _ndMant_41++;
                    _gotoNext = 2638237i64;
                } else if (__value__ == (2638210i64)) {
                    _trunc = true;
                    _gotoNext = 2638237i64;
                } else if (__value__ == (2638237i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L207"
                    _i++;
                    _gotoNext = 2637759i64;
                } else if (__value__ == (2638249i64)) {
                    _sawdigits_39 = true;
                    //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L239"
                    _nd_40++;
                    //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L240"
                    if ((_ndMant_41 < _maxMantDigits_36 : Bool)) {
                        _gotoNext = 2638361i64;
                    } else {
                        _gotoNext = 2638449i64;
                    };
                } else if (__value__ == (2638361i64)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_43) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L243"
                    _ndMant_41++;
                    _gotoNext = 2638476i64;
                } else if (__value__ == (2638449i64)) {
                    _gotoNext = 2638449i64;
                    _trunc = true;
                    0i64;
                    _gotoNext = 2638476i64;
                } else if (__value__ == (2638476i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L207"
                    _i++;
                    _gotoNext = 2637759i64;
                } else if (__value__ == (2638491i64)) {
                    _gotoNext = 2638501i64;
                } else if (__value__ == (2638501i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L251"
                    if (!_sawdigits_39) {
                        _gotoNext = 2638515i64;
                    } else {
                        _gotoNext = 2638530i64;
                    };
                } else if (__value__ == (2638515i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L252"
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2638530i64;
                } else if (__value__ == (2638530i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L254"
                    if (!_sawdot_38) {
                        _gotoNext = 2638541i64;
                    } else {
                        _gotoNext = 2638558i64;
                    };
                } else if (__value__ == (2638541i64)) {
                    _dp_42 = _nd_40;
                    _gotoNext = 2638558i64;
                } else if (__value__ == (2638558i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L258"
                    if (_base_35 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2638572i64;
                    } else {
                        _gotoNext = 2638817i64;
                    };
                } else if (__value__ == (2638572i64)) {
                    _dp_42 = (_dp_42 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_41 = (_ndMant_41 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2638817i64;
                } else if (__value__ == (2638817i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L268"
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_37) : Bool)) {
                        _gotoNext = 2638857i64;
                    } else if (_base_35 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2639290i64;
                    } else {
                        _gotoNext = 2639331i64;
                    };
                } else if (__value__ == (2638857i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L269"
                    _i++;
                    //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L270"
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2638882i64;
                    } else {
                        _gotoNext = 2638900i64;
                    };
                } else if (__value__ == (2638882i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L271"
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2638900i64;
                } else if (__value__ == (2638900i64)) {
                    _esign_44 = (1 : stdgo.GoInt);
                    //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L274"
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2638928i64;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2638961i64;
                    } else {
                        _gotoNext = 2638990i64;
                    };
                } else if (__value__ == (2638928i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L275"
                    _i++;
                    _gotoNext = 2638990i64;
                } else if (__value__ == (2638961i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L277"
                    _i++;
                    _esign_44 = (-1 : stdgo.GoInt);
                    _gotoNext = 2638990i64;
                } else if (__value__ == (2638990i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L280"
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2639033i64;
                    } else {
                        _gotoNext = 2639051i64;
                    };
                } else if (__value__ == (2639033i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L281"
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2639051i64;
                } else if (__value__ == (2639051i64)) {
                    _e_45 = (0 : stdgo.GoInt);
                    0i64;
                    _gotoNext = 2639060i64;
                } else if (__value__ == (2639060i64)) {
                    //"file://#L0"
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2639129i64;
                    } else {
                        _gotoNext = 2639252i64;
                    };
                } else if (__value__ == (2639125i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L284"
                    _i++;
                    _gotoNext = 2639060i64;
                } else if (__value__ == (2639129i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L285"
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2639149i64;
                    } else {
                        _gotoNext = 2639195i64;
                    };
                } else if (__value__ == (2639149i64)) {
                    _underscores_34 = true;
                    //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L284"
                    _i++;
                    _gotoNext = 2639060i64;
                } else if (__value__ == (2639195i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L289"
                    if ((_e_45 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2639208i64;
                    } else {
                        _gotoNext = 2639125i64;
                    };
                } else if (__value__ == (2639208i64)) {
                    _e_45 = (((_e_45 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2639125i64;
                } else if (__value__ == (2639252i64)) {
                    _dp_42 = (_dp_42 + ((_e_45 * _esign_44 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2639331i64;
                } else if (__value__ == (2639290i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L296"
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2639331i64;
                } else if (__value__ == (2639331i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L299"
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2639348i64;
                    } else {
                        _gotoNext = 2639375i64;
                    };
                } else if (__value__ == (2639348i64)) {
                    _exp = (_dp_42 - _ndMant_41 : stdgo.GoInt);
                    _gotoNext = 2639375i64;
                } else if (__value__ == (2639375i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L303"
                    if ((_underscores_34 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2639414i64;
                    } else {
                        _gotoNext = 2639430i64;
                    };
                } else if (__value__ == (2639414i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L304"
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2639430i64;
                } else if (__value__ == (2639430i64)) {
                    _ok = true;
                    //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L308"
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw new stdgo.AnyInterface(("unreachable goto control flow" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.invalidType));
    }

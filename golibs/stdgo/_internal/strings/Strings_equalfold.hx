package stdgo._internal.strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _tr_226:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_225:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_3288298 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _iterator_3288311 = @:invalid_type null;
        var _tr_224:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_223:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_229:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_227:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_228:stdgo.GoInt = (0 : stdgo.GoInt);
        var _keys_3288298 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_222:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _i_222 = (0 : stdgo.GoInt);
                    0i64;
                    _gotoNext = 3287813i64;
                } else if (__value__ == (3287813i64)) {
                    //"file://#L0"
                    if (((_i_222 < (_s.length) : Bool) && (_i_222 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3287849i64;
                    } else {
                        _gotoNext = 3288238i64;
                    };
                } else if (__value__ == (3287849i64)) {
                    _sr_223 = _s[(_i_222 : stdgo.GoInt)];
                    _tr_224 = _t[(_i_222 : stdgo.GoInt)];
                    //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1117"
                    if (((_sr_223 | _tr_224 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3287905i64;
                    } else {
                        _gotoNext = 3287949i64;
                    };
                } else if (__value__ == (3287905i64)) {
                    _gotoNext = 3288263i64;
                } else if (__value__ == (3287949i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1122"
                    if (_tr_224 == (_sr_223)) {
                        _gotoNext = 3287961i64;
                    } else {
                        _gotoNext = 3288026i64;
                    };
                } else if (__value__ == (3287961i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1114"
                    _i_222++;
                    _gotoNext = 3287813i64;
                } else if (__value__ == (3288026i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1127"
                    if ((_tr_224 < _sr_223 : Bool)) {
                        _gotoNext = 3288037i64;
                    } else {
                        _gotoNext = 3288112i64;
                    };
                } else if (__value__ == (3288037i64)) {
                    {
                        final __tmp__0 = _sr_223;
                        final __tmp__1 = _tr_224;
                        _tr_224 = @:binopAssign __tmp__0;
                        _sr_223 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 3288112i64;
                } else if (__value__ == (3288112i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1131"
                    if (((((65 : stdgo.GoUInt8) <= _sr_223 : Bool) && (_sr_223 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_224 == ((_sr_223 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3288158i64;
                    } else {
                        _gotoNext = 3288178i64;
                    };
                } else if (__value__ == (3288158i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1114"
                    _i_222++;
                    _gotoNext = 3287813i64;
                } else if (__value__ == (3288178i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1134"
                    return false;
                    //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1114"
                    _i_222++;
                    _gotoNext = 3287813i64;
                } else if (__value__ == (3288238i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1137"
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3288263i64;
                } else if (__value__ == (3288263i64)) {
                    _s = (_s.__slice__(_i_222) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_222) : stdgo.GoString)?.__copy__();
                    _keys_3288298 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_3288298 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1142"
                    if (_s != null) for (_key => _value in _s) {
                        _keys_3288298 = _keys_3288298.__append__(_key);
                        _values_3288298 = _values_3288298.__append__(_value);
                    };
                    //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1142"
                    if ((0i64 : stdgo.GoInt) < (_keys_3288298.length)) {
                        _gotoNext = 3289229i64;
                    } else {
                        _gotoNext = 3289303i64;
                    };
                } else if (__value__ == (3288319i64)) {
                    _sr_225 = _values_3288298[@:invalid_index_invalid_type _iterator_3288311];
                    _keys_3288298[@:invalid_index_invalid_type _iterator_3288311];
                    //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1144"
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3288388i64;
                    } else {
                        _gotoNext = 3288457i64;
                    };
                } else if (__value__ == (3288388i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1145"
                    return false;
                    _gotoNext = 3288457i64;
                } else if (__value__ == (3288457i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1150"
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3288495i64;
                    } else {
                        _gotoNext = 3288535i64;
                    };
                } else if (__value__ == (3288495i64)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_226 = @:binopAssign __tmp__0;
                        _t = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 3288679i64;
                } else if (__value__ == (3288535i64)) {
                    _gotoNext = 3288535i64;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_t?.__copy__());
                        _r_227 = @:tmpset0 __tmp__._0;
                        _size_228 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_227;
                        final __tmp__1 = (_t.__slice__(_size_228) : stdgo.GoString)?.__copy__();
                        _tr_226 = @:binopAssign __tmp__0;
                        _t = @:binopAssign __tmp__1;
                    };
                    0i64;
                    _gotoNext = 3288679i64;
                } else if (__value__ == (3288679i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1160"
                    if (_tr_226 == (_sr_225)) {
                        _gotoNext = 3288691i64;
                    } else {
                        _gotoNext = 3288756i64;
                    };
                } else if (__value__ == (3288691i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1142"
                    _iterator_3288311++;
                    _gotoNext = 3289230i64;
                } else if (__value__ == (3288756i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1165"
                    if ((_tr_226 < _sr_225 : Bool)) {
                        _gotoNext = 3288767i64;
                    } else {
                        _gotoNext = 3288821i64;
                    };
                } else if (__value__ == (3288767i64)) {
                    {
                        final __tmp__0 = _sr_225;
                        final __tmp__1 = _tr_226;
                        _tr_226 = @:binopAssign __tmp__0;
                        _sr_225 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 3288821i64;
                } else if (__value__ == (3288821i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1169"
                    if ((_tr_226 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3288843i64;
                    } else {
                        _gotoNext = 3289096i64;
                    };
                } else if (__value__ == (3288843i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1171"
                    if (((((65 : stdgo.GoInt32) <= _sr_225 : Bool) && (_sr_225 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_226 == ((_sr_225 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3288943i64;
                    } else {
                        _gotoNext = 3288966i64;
                    };
                } else if (__value__ == (3288943i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1142"
                    _iterator_3288311++;
                    _gotoNext = 3289230i64;
                } else if (__value__ == (3288966i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1174"
                    return false;
                    _gotoNext = 3289096i64;
                } else if (__value__ == (3289096i64)) {
                    _r_229 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_225);
                    0i64;
                    _gotoNext = 3289126i64;
                } else if (__value__ == (3289126i64)) {
                    //"file://#L0"
                    if (((_r_229 != _sr_225) && (_r_229 < _tr_226 : Bool) : Bool)) {
                        _gotoNext = 3289148i64;
                    } else {
                        _gotoNext = 3289185i64;
                    };
                } else if (__value__ == (3289148i64)) {
                    _r_229 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_229);
                    _gotoNext = 3289126i64;
                } else if (__value__ == (3289185i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1183"
                    if (_r_229 == (_tr_226)) {
                        _gotoNext = 3289196i64;
                    } else {
                        _gotoNext = 3289216i64;
                    };
                } else if (__value__ == (3289196i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1142"
                    _iterator_3288311++;
                    _gotoNext = 3289230i64;
                } else if (__value__ == (3289216i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1186"
                    return false;
                    //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1142"
                    _iterator_3288311++;
                    _gotoNext = 3289230i64;
                } else if (__value__ == (3289229i64)) {
                    _iterator_3288311 = 0i64;
                    _gotoNext = 3289230i64;
                } else if (__value__ == (3289230i64)) {
                    //"file://#L0"
                    if (_iterator_3288311 < (_keys_3288298.length)) {
                        _gotoNext = 3288319i64;
                    } else {
                        _gotoNext = 3289303i64;
                    };
                } else if (__value__ == (3289303i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1190"
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw new stdgo.AnyInterface(("unreachable goto control flow" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.invalidType));
    }

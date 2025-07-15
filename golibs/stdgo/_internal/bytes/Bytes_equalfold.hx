package stdgo._internal.bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _r_239:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_238:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_236:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_235:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_233:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_232:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_231:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_230:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_237:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_234:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _i_230 = (0 : stdgo.GoInt);
                    0i64;
                    _gotoNext = 3506864i64;
                } else if (__value__ == (3506864i64)) {
                    //"file://#L0"
                    if (((_i_230 < (_s.length) : Bool) && (_i_230 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3506900i64;
                    } else {
                        _gotoNext = 3507289i64;
                    };
                } else if (__value__ == (3506900i64)) {
                    _sr_231 = _s[(_i_230 : stdgo.GoInt)];
                    _tr_232 = _t[(_i_230 : stdgo.GoInt)];
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L1184"
                    if (((_sr_231 | _tr_232 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3506956i64;
                    } else {
                        _gotoNext = 3507000i64;
                    };
                } else if (__value__ == (3506956i64)) {
                    _gotoNext = 3507314i64;
                } else if (__value__ == (3507000i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L1189"
                    if (_tr_232 == (_sr_231)) {
                        _gotoNext = 3507012i64;
                    } else {
                        _gotoNext = 3507077i64;
                    };
                } else if (__value__ == (3507012i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L1181"
                    _i_230++;
                    _gotoNext = 3506864i64;
                } else if (__value__ == (3507077i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L1194"
                    if ((_tr_232 < _sr_231 : Bool)) {
                        _gotoNext = 3507088i64;
                    } else {
                        _gotoNext = 3507163i64;
                    };
                } else if (__value__ == (3507088i64)) {
                    {
                        final __tmp__0 = _sr_231;
                        final __tmp__1 = _tr_232;
                        _tr_232 = @:binopAssign __tmp__0;
                        _sr_231 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 3507163i64;
                } else if (__value__ == (3507163i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L1198"
                    if (((((65 : stdgo.GoUInt8) <= _sr_231 : Bool) && (_sr_231 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_232 == ((_sr_231 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3507209i64;
                    } else {
                        _gotoNext = 3507229i64;
                    };
                } else if (__value__ == (3507209i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L1181"
                    _i_230++;
                    _gotoNext = 3506864i64;
                } else if (__value__ == (3507229i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L1201"
                    return false;
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L1181"
                    _i_230++;
                    _gotoNext = 3506864i64;
                } else if (__value__ == (3507289i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L1204"
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3507314i64;
                } else if (__value__ == (3507314i64)) {
                    _s = (_s.__slice__(_i_230) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_230) : stdgo.Slice<stdgo.GoUInt8>);
                    0i64;
                    _gotoNext = 3507349i64;
                } else if (__value__ == (3507349i64)) {
                    //"file://#L0"
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3507380i64;
                    } else {
                        _gotoNext = 3508355i64;
                    };
                } else if (__value__ == (3507380i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L1212"
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3507461i64;
                    } else {
                        _gotoNext = 3507501i64;
                    };
                } else if (__value__ == (3507461i64)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_233 = @:binopAssign __tmp__0;
                        _s = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 3507565i64;
                } else if (__value__ == (3507501i64)) {
                    _gotoNext = 3507501i64;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_s);
                        _r_235 = @:tmpset0 __tmp__._0;
                        _size_236 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_235;
                        final __tmp__1 = (_s.__slice__(_size_236) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_233 = @:binopAssign __tmp__0;
                        _s = @:binopAssign __tmp__1;
                    };
                    0i64;
                    _gotoNext = 3507565i64;
                } else if (__value__ == (3507565i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L1218"
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3507589i64;
                    } else {
                        _gotoNext = 3507629i64;
                    };
                } else if (__value__ == (3507589i64)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_234 = @:binopAssign __tmp__0;
                        _t = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 3507765i64;
                } else if (__value__ == (3507629i64)) {
                    _gotoNext = 3507629i64;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_t);
                        _r_237 = @:tmpset0 __tmp__._0;
                        _size_238 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_237;
                        final __tmp__1 = (_t.__slice__(_size_238) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_234 = @:binopAssign __tmp__0;
                        _t = @:binopAssign __tmp__1;
                    };
                    0i64;
                    _gotoNext = 3507765i64;
                } else if (__value__ == (3507765i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L1228"
                    if (_tr_234 == (_sr_233)) {
                        _gotoNext = 3507777i64;
                    } else {
                        _gotoNext = 3507842i64;
                    };
                } else if (__value__ == (3507777i64)) {
                    0i64;
                    _gotoNext = 3507349i64;
                } else if (__value__ == (3507842i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L1233"
                    if ((_tr_234 < _sr_233 : Bool)) {
                        _gotoNext = 3507853i64;
                    } else {
                        _gotoNext = 3507907i64;
                    };
                } else if (__value__ == (3507853i64)) {
                    {
                        final __tmp__0 = _sr_233;
                        final __tmp__1 = _tr_234;
                        _tr_234 = @:binopAssign __tmp__0;
                        _sr_233 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 3507907i64;
                } else if (__value__ == (3507907i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L1237"
                    if ((_tr_234 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3507929i64;
                    } else {
                        _gotoNext = 3508182i64;
                    };
                } else if (__value__ == (3507929i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L1239"
                    if (((((65 : stdgo.GoInt32) <= _sr_233 : Bool) && (_sr_233 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_234 == ((_sr_233 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3508029i64;
                    } else {
                        _gotoNext = 3508052i64;
                    };
                } else if (__value__ == (3508029i64)) {
                    0i64;
                    _gotoNext = 3507349i64;
                } else if (__value__ == (3508052i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L1242"
                    return false;
                    _gotoNext = 3508182i64;
                } else if (__value__ == (3508182i64)) {
                    _r_239 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_233);
                    0i64;
                    _gotoNext = 3508212i64;
                } else if (__value__ == (3508212i64)) {
                    //"file://#L0"
                    if (((_r_239 != _sr_233) && (_r_239 < _tr_234 : Bool) : Bool)) {
                        _gotoNext = 3508234i64;
                    } else {
                        _gotoNext = 3508271i64;
                    };
                } else if (__value__ == (3508234i64)) {
                    _r_239 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_239);
                    _gotoNext = 3508212i64;
                } else if (__value__ == (3508271i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L1251"
                    if (_r_239 == (_tr_234)) {
                        _gotoNext = 3508282i64;
                    } else {
                        _gotoNext = 3508302i64;
                    };
                } else if (__value__ == (3508282i64)) {
                    0i64;
                    _gotoNext = 3507349i64;
                } else if (__value__ == (3508302i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L1254"
                    return false;
                    _gotoNext = 3507349i64;
                } else if (__value__ == (3508355i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L1258"
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw new stdgo.AnyInterface(("unreachable goto control flow" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.invalidType));
    }

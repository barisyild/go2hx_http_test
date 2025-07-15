package _internal.golangdotorg.x.text.unicode.norm;
import _internal.golangdotorg.x.text.transform.Transform;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
function _nextComposed(_i:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_iter.Iter>):stdgo.Slice<stdgo.GoUInt8> {
        var _d_173:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _v_172:_internal.golangdotorg.x.text.unicode.norm.Norm_t_ssstate.T_ssState = ((0 : stdgo.GoInt) : _internal.golangdotorg.x.text.unicode.norm.Norm_t_ssstate.T_ssState);
        var _p_166:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sz_165:stdgo.GoInt = (0 : stdgo.GoInt);
        var _prevCC_164:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _startp_163:stdgo.GoInt = (0 : stdgo.GoInt);
        var _outp_162:stdgo.GoInt = (0 : stdgo.GoInt);
        var _info_176:_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties = ({} : _internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    {
                        final __tmp__0 = (0 : stdgo.GoInt);
                        final __tmp__1 = (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p;
                        _outp_162 = @:binopAssign __tmp__0;
                        _startp_163 = @:binopAssign __tmp__1;
                    };
                    0i64;
                    _gotoNext = 5715076i64;
                } else if (__value__ == (5715076i64)) {
                    //"file://#L0"
                    if (true) {
                        _gotoNext = 5715080i64;
                    } else {
                        _gotoNext = 5715675i64;
                    };
                } else if (__value__ == (5715080i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L375"
                    if (!(@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._info._isYesC()) {
                        _gotoNext = 5715104i64;
                    } else {
                        _gotoNext = 5715127i64;
                    };
                } else if (__value__ == (5715104i64)) {
                    _gotoNext = 5715709i64;
                } else if (__value__ == (5715127i64)) {
                    _prevCC_164 = (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._info._tccc;
                    _sz_165 = ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._info._size : stdgo.GoInt);
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L380"
                    if (_sz_165 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5715186i64;
                    } else {
                        _gotoNext = 5715239i64;
                    };
                } else if (__value__ == (5715186i64)) {
                    _sz_165 = (1 : stdgo.GoInt);
                    _gotoNext = 5715239i64;
                } else if (__value__ == (5715239i64)) {
                    _p_166 = (_outp_162 + _sz_165 : stdgo.GoInt);
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L384"
                    if ((_p_166 > ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.length) : Bool)) {
                        _gotoNext = 5715274i64;
                    } else {
                        _gotoNext = 5715291i64;
                    };
                } else if (__value__ == (5715274i64)) {
                    _gotoNext = 5715675i64;
                } else if (__value__ == (5715291i64)) {
                    _outp_162 = _p_166;
                    (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p = ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p + (_sz_165) : stdgo.GoInt);
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L389"
                    if (((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p >= (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._nsrc : Bool)) {
                        _gotoNext = 5715334i64;
                    } else if (((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._src.__byte((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p) < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 5715408i64;
                    } else {
                        _gotoNext = 5715461i64;
                    };
                } else if (__value__ == (5715334i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L390"
                    _i._setDone();
                    _gotoNext = 5715675i64;
                } else if (__value__ == (5715408i64)) {
                    (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._ss = (0 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafe.T_streamSafe);
                    (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next = (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._asciiF;
                    _gotoNext = 5715675i64;
                } else if (__value__ == (5715461i64)) {
                    (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._info = (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._f._info((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._src?.__copy__(), (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p)?.__copy__();
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L398"
                    {
                        _v_172 = (stdgo.Go.pointer((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._ss) : _internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafepointer.T_streamSafePointer)._next((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._info?.__copy__());
                        if (_v_172 == ((1 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_ssstate.T_ssState))) {
                            _gotoNext = 5715544i64;
                        } else if (_v_172 == ((2 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_ssstate.T_ssState))) {
                            _gotoNext = 5715583i64;
                        } else {
                            _gotoNext = 5715627i64;
                        };
                    };
                } else if (__value__ == (5715544i64)) {
                    _gotoNext = 5715675i64;
                } else if (__value__ == (5715583i64)) {
                    (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next = _internal.golangdotorg.x.text.unicode.norm.Norm__nextcgjcompose._nextCGJCompose;
                    _gotoNext = 5715675i64;
                } else if (__value__ == (5715627i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L404"
                    if (((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._info._ccc < _prevCC_164 : Bool)) {
                        _gotoNext = 5715650i64;
                    } else {
                        _gotoNext = 5715076i64;
                    };
                } else if (__value__ == (5715650i64)) {
                    _gotoNext = 5715709i64;
                } else if (__value__ == (5715675i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L408"
                    return _i._returnSlice(_startp_163, (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p);
                    _gotoNext = 5715709i64;
                } else if (__value__ == (5715709i64)) {
                    (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p = _startp_163;
                    (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._info = (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._f._info((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._src?.__copy__(), (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p)?.__copy__();
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L413"
                    (stdgo.Go.pointer((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._ss) : _internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafepointer.T_streamSafePointer)._first((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._info?.__copy__());
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L414"
                    if ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._info._multiSegment()) {
                        _gotoNext = 5715845i64;
                    } else {
                        _gotoNext = 5716054i64;
                    };
                } else if (__value__ == (5715845i64)) {
                    _d_173 = (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._info.decomposition();
                    _info_176 = (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._f._info(({ _bytes : _d_173 } : _internal.golangdotorg.x.text.unicode.norm.Norm_t_input.T_input), (0 : stdgo.GoInt))?.__copy__();
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L417"
                    (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._insertUnsafe(({ _bytes : _d_173 } : _internal.golangdotorg.x.text.unicode.norm.Norm_t_input.T_input), (0 : stdgo.GoInt), _info_176?.__copy__());
                    (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._multiSeg = (_d_173.__slice__((_info_176._size : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next = _internal.golangdotorg.x.text.unicode.norm.Norm__nextmultinorm._nextMultiNorm;
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L420"
                    return _internal.golangdotorg.x.text.unicode.norm.Norm__nextmultinorm._nextMultiNorm(_i);
                    _gotoNext = 5716054i64;
                } else if (__value__ == (5716054i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L422"
                    (stdgo.Go.pointer((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._ss) : _internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafepointer.T_streamSafePointer)._first((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._info?.__copy__());
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L423"
                    (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._insertUnsafe((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._src?.__copy__(), (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p, (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._info?.__copy__());
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L424"
                    return _internal.golangdotorg.x.text.unicode.norm.Norm__donormcomposed._doNormComposed(_i);
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw new stdgo.AnyInterface(("unreachable goto control flow" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.invalidType));
    }

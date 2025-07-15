package _internal.golangdotorg.x.text.unicode.norm;
import _internal.golangdotorg.x.text.transform.Transform;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
function _nextDecomposed(_i:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_iter.Iter>):stdgo.Slice<stdgo.GoUInt8> {
        var _next = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _prevCC_102:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _p_101:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_100:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _p_98:stdgo.GoInt = (0 : stdgo.GoInt);
        var _outp_92:stdgo.GoInt = (0 : stdgo.GoInt);
        var _v_161:_internal.golangdotorg.x.text.unicode.norm.Norm_t_ssstate.T_ssState = ((0 : stdgo.GoInt) : _internal.golangdotorg.x.text.unicode.norm.Norm_t_ssstate.T_ssState);
        var _prevCC_99:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _d_97:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _p_96:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sz_95:stdgo.GoInt = (0 : stdgo.GoInt);
        var _outCopyStart_94:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inCopyStart_93:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _outp_92 = (0 : stdgo.GoInt);
                    {
                        final __tmp__0 = (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p;
                        final __tmp__1 = (0 : stdgo.GoInt);
                        _inCopyStart_93 = @:binopAssign __tmp__0;
                        _outCopyStart_94 = @:binopAssign __tmp__1;
                    };
                    0i64;
                    _gotoNext = 5711353i64;
                } else if (__value__ == (5711353i64)) {
                    //"file://#L0"
                    if (true) {
                        _gotoNext = 5711357i64;
                    } else {
                        _gotoNext = 5713872i64;
                    };
                } else if (__value__ == (5711357i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L229"
                    {
                        _sz_95 = ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._info._size : stdgo.GoInt);
                        if ((_sz_95 <= (1 : stdgo.GoInt) : Bool)) {
                            _gotoNext = 5711396i64;
                        } else {
                            _d_97 = (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._info.decomposition();
                            if (_d_97 != null) {
                                _gotoNext = 5711732i64;
                            } else {
                                _r_100 = (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._src._hangul((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p);
                                if (_r_100 != ((0 : stdgo.GoInt32))) {
                                    _gotoNext = 5713230i64;
                                } else {
                                    _gotoNext = 5713491i64;
                                };
                            };
                        };
                    };
                } else if (__value__ == (5711396i64)) {
                    (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._ss = (0 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafe.T_streamSafe);
                    _p_96 = (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p;
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L232"
                    (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p++;
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L233"
                    if (((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p >= (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._nsrc : Bool)) {
                        _gotoNext = 5711510i64;
                    } else if (((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._src.__byte((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p) < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 5711610i64;
                    } else {
                        _gotoNext = 5711675i64;
                    };
                } else if (__value__ == (5711510i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L234"
                    _i._setDone();
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L235"
                    return _next = _i._returnSlice(_p_96, (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p);
                    _gotoNext = 5711675i64;
                } else if (__value__ == (5711610i64)) {
                    (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next = (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._asciiF;
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L238"
                    return _next = _i._returnSlice(_p_96, (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p);
                    _gotoNext = 5711675i64;
                } else if (__value__ == (5711675i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L240"
                    _outp_92++;
                    _gotoNext = 5713580i64;
                } else if (__value__ == (5711732i64)) {
                    _p_98 = (_outp_92 + (_d_97.length) : stdgo.GoInt);
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L247"
                    if ((_outp_92 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 5712063i64;
                    } else if ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._info._multiSegment()) {
                        _gotoNext = 5712320i64;
                    } else {
                        _gotoNext = 5712643i64;
                    };
                } else if (__value__ == (5712063i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L248"
                    (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._src._copySlice(((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(_outCopyStart_94) : stdgo.Slice<stdgo.GoUInt8>), _inCopyStart_93, (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p);
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L251"
                    if ((_p_98 > ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.length) : Bool)) {
                        _gotoNext = 5712252i64;
                    } else {
                        _gotoNext = 5712643i64;
                    };
                } else if (__value__ == (5712252i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L252"
                    return _next = ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(0, _outp_92) : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 5712643i64;
                } else if (__value__ == (5712320i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L257"
                    if ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._multiSeg == null) {
                        _gotoNext = 5712436i64;
                    } else {
                        _gotoNext = 5712584i64;
                    };
                } else if (__value__ == (5712436i64)) {
                    (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._multiSeg = _d_97;
                    (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next = _internal.golangdotorg.x.text.unicode.norm.Norm__nextmulti._nextMulti;
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L260"
                    return _next = _internal.golangdotorg.x.text.unicode.norm.Norm__nextmulti._nextMulti(_i);
                    _gotoNext = 5712584i64;
                } else if (__value__ == (5712584i64)) {
                    _d_97 = (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._multiSeg;
                    (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._multiSeg = (null : stdgo.Slice<stdgo.GoUInt8>);
                    _p_98 = (_d_97.length);
                    _gotoNext = 5712643i64;
                } else if (__value__ == (5712643i64)) {
                    _prevCC_99 = (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._info._tccc;
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L268"
                    {
                        (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p = ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p + (_sz_95) : stdgo.GoInt);
                        if (((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p >= (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._nsrc : Bool)) {
                            _gotoNext = 5712699i64;
                        } else {
                            _gotoNext = 5712789i64;
                        };
                    };
                } else if (__value__ == (5712699i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L269"
                    _i._setDone();
                    (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._info = (new _internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties() : _internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties);
                    _gotoNext = 5712839i64;
                } else if (__value__ == (5712789i64)) {
                    _gotoNext = 5712789i64;
                    (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._info = (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._f._info((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._src?.__copy__(), (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p)?.__copy__();
                    0i64;
                    _gotoNext = 5712839i64;
                } else if (__value__ == (5712839i64)) {
                    _gotoNext = 5712839i64;
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L274"
                    {
                        final __value__ = (stdgo.Go.pointer((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._ss) : _internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafepointer.T_streamSafePointer)._next((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._info?.__copy__());
                        if (__value__ == ((2 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_ssstate.T_ssState))) {
                            _gotoNext = 5712872i64;
                        } else if (__value__ == ((1 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_ssstate.T_ssState))) {
                            _gotoNext = 5712938i64;
                        } else {
                            _gotoNext = 5713048i64;
                        };
                    };
                } else if (__value__ == (5712872i64)) {
                    (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next = _internal.golangdotorg.x.text.unicode.norm.Norm__nextcgjdecompose._nextCGJDecompose;
                    _gotoNext = 5712938i64;
                } else if (__value__ == (5712938i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L279"
                    if ((_outp_92 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 5712970i64;
                    } else {
                        _gotoNext = 5713031i64;
                    };
                } else if (__value__ == (5712970i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L280"
                    ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(_outp_92) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_d_97);
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L281"
                    return _next = ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(0, _p_98) : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 5713031i64;
                } else if (__value__ == (5713031i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L283"
                    return _next = _d_97;
                    _gotoNext = 5713048i64;
                } else if (__value__ == (5713048i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L285"
                    ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(_outp_92) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_d_97);
                    _outp_92 = _p_98;
                    {
                        final __tmp__0 = (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p;
                        final __tmp__1 = _outp_92;
                        _inCopyStart_93 = @:binopAssign __tmp__0;
                        _outCopyStart_94 = @:binopAssign __tmp__1;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L288"
                    if (((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._info._ccc < _prevCC_99 : Bool)) {
                        _gotoNext = 5713149i64;
                    } else {
                        _gotoNext = 5713175i64;
                    };
                } else if (__value__ == (5713149i64)) {
                    _gotoNext = 5714052i64;
                } else if (__value__ == (5713175i64)) {
                    0i64;
                    _gotoNext = 5711353i64;
                } else if (__value__ == (5713230i64)) {
                    _outp_92 = _internal.golangdotorg.x.text.unicode.norm.Norm__decomposehangul._decomposeHangul(((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _r_100);
                    (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p = ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p + ((3 : stdgo.GoInt)) : stdgo.GoInt);
                    {
                        final __tmp__0 = (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p;
                        final __tmp__1 = _outp_92;
                        _inCopyStart_93 = @:binopAssign __tmp__0;
                        _outCopyStart_94 = @:binopAssign __tmp__1;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L296"
                    if (((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p >= (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._nsrc : Bool)) {
                        _gotoNext = 5713360i64;
                    } else if ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._src._hangul((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p) != ((0 : stdgo.GoInt32))) {
                        _gotoNext = 5713427i64;
                    } else {
                        _gotoNext = 5713580i64;
                    };
                } else if (__value__ == (5713360i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L297"
                    _i._setDone();
                    _gotoNext = 5713872i64;
                } else if (__value__ == (5713427i64)) {
                    (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next = _internal.golangdotorg.x.text.unicode.norm.Norm__nexthangul._nextHangul;
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L301"
                    return _next = ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(0, _outp_92) : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 5713580i64;
                } else if (__value__ == (5713491i64)) {
                    _gotoNext = 5713491i64;
                    _p_101 = (_outp_92 + _sz_95 : stdgo.GoInt);
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L305"
                    if ((_p_101 > ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.length) : Bool)) {
                        _gotoNext = 5713532i64;
                    } else {
                        _gotoNext = 5713552i64;
                    };
                } else if (__value__ == (5713532i64)) {
                    _gotoNext = 5713872i64;
                } else if (__value__ == (5713552i64)) {
                    _outp_92 = _p_101;
                    (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p = ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p + (_sz_95) : stdgo.GoInt);
                    0i64;
                    _gotoNext = 5713580i64;
                } else if (__value__ == (5713580i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L311"
                    if (((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p >= (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._nsrc : Bool)) {
                        _gotoNext = 5713600i64;
                    } else {
                        _gotoNext = 5713632i64;
                    };
                } else if (__value__ == (5713600i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L312"
                    _i._setDone();
                    _gotoNext = 5713872i64;
                } else if (__value__ == (5713632i64)) {
                    _prevCC_102 = (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._info._tccc;
                    (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._info = (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._f._info((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._src?.__copy__(), (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p)?.__copy__();
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L317"
                    {
                        _v_161 = (stdgo.Go.pointer((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._ss) : _internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafepointer.T_streamSafePointer)._next((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._info?.__copy__());
                        if (_v_161 == ((1 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_ssstate.T_ssState))) {
                            _gotoNext = 5713739i64;
                        } else if (_v_161 == ((2 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_ssstate.T_ssState))) {
                            _gotoNext = 5713778i64;
                        } else {
                            _gotoNext = 5713824i64;
                        };
                    };
                } else if (__value__ == (5713739i64)) {
                    _gotoNext = 5713872i64;
                } else if (__value__ == (5713778i64)) {
                    (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next = _internal.golangdotorg.x.text.unicode.norm.Norm__nextcgjdecompose._nextCGJDecompose;
                    _gotoNext = 5713872i64;
                } else if (__value__ == (5713824i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L323"
                    if (((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._info._ccc < _prevCC_102 : Bool)) {
                        _gotoNext = 5713847i64;
                    } else {
                        _gotoNext = 5711353i64;
                    };
                } else if (__value__ == (5713847i64)) {
                    _gotoNext = 5714052i64;
                } else if (__value__ == (5713872i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L327"
                    if (_outCopyStart_94 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5713893i64;
                    } else if ((_inCopyStart_93 < (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p : Bool)) {
                        _gotoNext = 5713965i64;
                    } else {
                        _gotoNext = 5714032i64;
                    };
                } else if (__value__ == (5713893i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L328"
                    return _next = _i._returnSlice(_inCopyStart_93, (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p);
                    _gotoNext = 5714032i64;
                } else if (__value__ == (5713965i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L330"
                    (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._src._copySlice(((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(_outCopyStart_94) : stdgo.Slice<stdgo.GoUInt8>), _inCopyStart_93, (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p);
                    _gotoNext = 5714032i64;
                } else if (__value__ == (5714032i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L332"
                    return _next = ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(0, _outp_92) : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 5714052i64;
                } else if (__value__ == (5714052i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L336"
                    (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._src._copySlice(((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(_outCopyStart_94) : stdgo.Slice<stdgo.GoUInt8>), _inCopyStart_93, (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p);
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L337"
                    (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._insertDecomposed(((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__((0 : stdgo.GoInt), _outp_92) : stdgo.Slice<stdgo.GoUInt8>));
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L338"
                    return _next = _internal.golangdotorg.x.text.unicode.norm.Norm__donormdecomposed._doNormDecomposed(_i);
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw new stdgo.AnyInterface(("unreachable goto control flow" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.invalidType));
    }

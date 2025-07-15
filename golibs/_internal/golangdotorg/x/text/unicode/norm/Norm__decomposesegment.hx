package _internal.golangdotorg.x.text.unicode.norm;
import _internal.golangdotorg.x.text.transform.Transform;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
function _decomposeSegment(_rb:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer>, _sp:stdgo.GoInt, _atEOF:Bool):stdgo.GoInt {
        var _s_196:_internal.golangdotorg.x.text.unicode.norm.Norm_t_ssstate.T_ssState = ((0 : stdgo.GoInt) : _internal.golangdotorg.x.text.unicode.norm.Norm_t_ssstate.T_ssState);
        var _info_195:_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties = ({} : _internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties);
        var _err_199:_internal.golangdotorg.x.text.unicode.norm.Norm_t_inserterr.T_insertErr = ((0 : stdgo.GoInt) : _internal.golangdotorg.x.text.unicode.norm.Norm_t_inserterr.T_insertErr);
        var _s_198:_internal.golangdotorg.x.text.unicode.norm.Norm_t_ssstate.T_ssState = ((0 : stdgo.GoInt) : _internal.golangdotorg.x.text.unicode.norm.Norm_t_ssstate.T_ssState);
        var _err_197:_internal.golangdotorg.x.text.unicode.norm.Norm_t_inserterr.T_insertErr = ((0 : stdgo.GoInt) : _internal.golangdotorg.x.text.unicode.norm.Norm_t_inserterr.T_insertErr);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _info_195 = (@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._f._info((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src?.__copy__(), _sp)?.__copy__();
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L507"
                    if (_info_195._size == ((0 : stdgo.GoUInt8))) {
                        _gotoNext = 5729880i64;
                    } else {
                        _gotoNext = 5729897i64;
                    };
                } else if (__value__ == (5729880i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L508"
                    return (0 : stdgo.GoInt);
                    _gotoNext = 5729897i64;
                } else if (__value__ == (5729897i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L510"
                    {
                        _s_196 = (stdgo.Go.pointer((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ss) : _internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafepointer.T_streamSafePointer)._next(_info_195?.__copy__());
                        if (_s_196 == ((1 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_ssstate.T_ssState))) {
                            _gotoNext = 5729938i64;
                        } else if (_s_196 == ((2 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_ssstate.T_ssState))) {
                            _gotoNext = 5730065i64;
                        } else {
                            _gotoNext = 5730099i64;
                        };
                    };
                } else if (__value__ == (5729938i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L512"
                    if (((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nrune > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 5730020i64;
                    } else {
                        _gotoNext = 5730099i64;
                    };
                } else if (__value__ == (5730020i64)) {
                    _gotoNext = 5730634i64;
                } else if (__value__ == (5730065i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L516"
                    _rb._insertCGJ();
                    _gotoNext = 5730634i64;
                } else if (__value__ == (5730099i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L519"
                    {
                        _err_197 = _rb._insertFlush((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src?.__copy__(), _sp, _info_195?.__copy__());
                        if (_err_197 != ((0 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_inserterr.T_insertErr))) {
                            _gotoNext = 5730159i64;
                        } else {
                            _gotoNext = 5730183i64;
                        };
                    };
                } else if (__value__ == (5730159i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L520"
                    return (_err_197 : stdgo.GoInt);
                    _gotoNext = 5730183i64;
                } else if (__value__ == (5730183i64)) {
                    0i64;
                    _gotoNext = 5730183i64;
                    //"file://#L0"
                    if (true) {
                        _gotoNext = 5730187i64;
                    } else {
                        _gotoNext = 5730634i64;
                    };
                } else if (__value__ == (5730187i64)) {
                    _sp = (_sp + ((_info_195._size : stdgo.GoInt)) : stdgo.GoInt);
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L524"
                    if ((_sp >= (@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nsrc : Bool)) {
                        _gotoNext = 5730231i64;
                    } else {
                        _gotoNext = 5730319i64;
                    };
                } else if (__value__ == (5730231i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L525"
                    if ((!_atEOF && !_info_195.boundaryAfter() : Bool)) {
                        _gotoNext = 5730271i64;
                    } else {
                        _gotoNext = 5730307i64;
                    };
                } else if (__value__ == (5730271i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L526"
                    return ((-2 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_inserterr.T_insertErr) : stdgo.GoInt);
                    _gotoNext = 5730307i64;
                } else if (__value__ == (5730307i64)) {
                    _gotoNext = 5730634i64;
                } else if (__value__ == (5730319i64)) {
                    _info_195 = (@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._f._info((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src?.__copy__(), _sp)?.__copy__();
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L531"
                    if (_info_195._size == ((0 : stdgo.GoUInt8))) {
                        _gotoNext = 5730368i64;
                    } else {
                        _gotoNext = 5730431i64;
                    };
                } else if (__value__ == (5730368i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L532"
                    if (!_atEOF) {
                        _gotoNext = 5730383i64;
                    } else {
                        _gotoNext = 5730419i64;
                    };
                } else if (__value__ == (5730383i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L533"
                    return ((-2 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_inserterr.T_insertErr) : stdgo.GoInt);
                    _gotoNext = 5730419i64;
                } else if (__value__ == (5730419i64)) {
                    _gotoNext = 5730634i64;
                } else if (__value__ == (5730431i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L537"
                    {
                        _s_198 = (stdgo.Go.pointer((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ss) : _internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafepointer.T_streamSafePointer)._next(_info_195?.__copy__());
                        if (_s_198 == ((1 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_ssstate.T_ssState))) {
                            _gotoNext = 5730472i64;
                        } else if (_s_198 == ((2 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_ssstate.T_ssState))) {
                            _gotoNext = 5730511i64;
                        } else {
                            _gotoNext = 5730546i64;
                        };
                    };
                } else if (__value__ == (5730472i64)) {
                    _gotoNext = 5730634i64;
                } else if (__value__ == (5730511i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L540"
                    _rb._insertCGJ();
                    _gotoNext = 5730634i64;
                } else if (__value__ == (5730546i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L543"
                    {
                        _err_199 = _rb._insertFlush((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src?.__copy__(), _sp, _info_195?.__copy__());
                        if (_err_199 != ((0 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_inserterr.T_insertErr))) {
                            _gotoNext = 5730606i64;
                        } else {
                            _gotoNext = 5730183i64;
                        };
                    };
                } else if (__value__ == (5730606i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L544"
                    return (_err_199 : stdgo.GoInt);
                    _gotoNext = 5730183i64;
                } else if (__value__ == (5730634i64)) {
                    _gotoNext = 5730634i64;
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L548"
                    if (!_rb._doFlush()) {
                        _gotoNext = 5730657i64;
                    } else {
                        _gotoNext = 5730687i64;
                    };
                } else if (__value__ == (5730657i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L549"
                    return ((-1 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_inserterr.T_insertErr) : stdgo.GoInt);
                    _gotoNext = 5730687i64;
                } else if (__value__ == (5730687i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L551"
                    return _sp;
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw new stdgo.AnyInterface(("unreachable goto control flow" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.invalidType));
    }

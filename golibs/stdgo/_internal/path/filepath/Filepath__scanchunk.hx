package stdgo._internal.path.filepath;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.os.Os;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_19:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_18:Bool = false;
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    0i64;
                    _gotoNext = 4298648i64;
                } else if (__value__ == (4298648i64)) {
                    //"file://#L0"
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4298690i64;
                    } else {
                        _gotoNext = 4298734i64;
                    };
                } else if (__value__ == (4298690i64)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 4298648i64;
                } else if (__value__ == (4298734i64)) {
                    _inrange_18 = false;
                    _gotoNext = 4298762i64;
                } else if (__value__ == (4298762i64)) {
                    _i_19 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 4298769i64;
                } else if (__value__ == (4298769i64)) {
                    //"file://#L0"
                    if (!scanBreak && ((_i_19 < (_pattern.length) : Bool))) {
                        _gotoNext = 4298802i64;
                    } else {
                        _gotoNext = 4299094i64;
                    };
                } else if (__value__ == (4298798i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/path/filepath/match.go#L98"
                    _i_19++;
                    _gotoNext = 4298769i64;
                } else if (__value__ == (4298802i64)) {
                    _gotoNext = 4298806i64;
                } else if (__value__ == (4298806i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/path/filepath/match.go#L99"
                    {
                        final __value__ = _pattern[(_i_19 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 4298828i64;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 4298978i64;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 4299008i64;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 4299039i64;
                        } else {
                            _gotoNext = 4298798i64;
                        };
                    };
                } else if (__value__ == (4298828i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/path/filepath/match.go#L101"
                    if (true) {
                        _gotoNext = 4298871i64;
                    } else {
                        _gotoNext = 4298798i64;
                    };
                } else if (__value__ == (4298871i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/path/filepath/match.go#L103"
                    if (((_i_19 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 4298954i64;
                    } else {
                        _gotoNext = 4298798i64;
                    };
                } else if (__value__ == (4298954i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/path/filepath/match.go#L104"
                    _i_19++;
                    _gotoNext = 4298798i64;
                } else if (__value__ == (4298978i64)) {
                    _inrange_18 = true;
                    _gotoNext = 4298798i64;
                } else if (__value__ == (4299008i64)) {
                    _inrange_18 = false;
                    _gotoNext = 4298798i64;
                } else if (__value__ == (4299039i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/path/filepath/match.go#L112"
                    if (!_inrange_18) {
                        _gotoNext = 4299064i64;
                    } else {
                        _gotoNext = 4298798i64;
                    };
                } else if (__value__ == (4299064i64)) {
                    scanBreak = true;
                    _gotoNext = 4298769i64;
                } else if (__value__ == (4299094i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/path/filepath/match.go#L117"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_19) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_19) : stdgo.GoString)?.__copy__() };
                        _star = __tmp__._0;
                        _chunk = __tmp__._1;
                        _rest = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw new stdgo.AnyInterface(("unreachable goto control flow" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.invalidType));
    }

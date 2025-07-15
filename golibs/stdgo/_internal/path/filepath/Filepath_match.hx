package stdgo._internal.path.filepath;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.os.Os;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_17:stdgo.Error = (null : stdgo.Error);
        var _ok_16:Bool = false;
        var _ok_12:Bool = false;
        var patternBreak = false;
        var _t_15:stdgo.GoString = ("" : stdgo.GoString);
        var _i_14:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_13:stdgo.Error = (null : stdgo.Error);
        var _t_11:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_10:stdgo.GoString = ("" : stdgo.GoString);
        var _star_9:Bool = false;
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _gotoNext = 4297385i64;
                } else if (__value__ == (4297385i64)) {
                    0i64;
                    patternBreak = false;
                    _gotoNext = 4297395i64;
                } else if (__value__ == (4297395i64)) {
                    //"file://#L0"
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 4297416i64;
                    } else {
                        _gotoNext = 4298446i64;
                    };
                } else if (__value__ == (4297416i64)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanchunk._scanChunk(_pattern?.__copy__());
                        _star_9 = @:tmpset0 __tmp__._0;
                        _chunk_10 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    //"file:///Users/o/.go/go1.21.3/src/path/filepath/match.go#L49"
                    if ((_star_9 && (_chunk_10 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 4297522i64;
                    } else {
                        _gotoNext = 4297688i64;
                    };
                } else if (__value__ == (4297522i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/path/filepath/match.go#L51"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4297688i64;
                } else if (__value__ == (4297688i64)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchchunk._matchChunk(_chunk_10?.__copy__(), _name?.__copy__());
                        _t_11 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_12 = @:tmpset0 __tmp__._1;
                        _err_13 = @:tmpset0 __tmp__._2;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/path/filepath/match.go#L58"
                    if ((_ok_12 && (((_t_11.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 4297926i64;
                    } else {
                        _gotoNext = 4297958i64;
                    };
                } else if (__value__ == (4297926i64)) {
                    _name = _t_11?.__copy__();
                    0i64;
                    _gotoNext = 4297395i64;
                } else if (__value__ == (4297958i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/path/filepath/match.go#L62"
                    if (_err_13 != null) {
                        _gotoNext = 4297972i64;
                    } else {
                        _gotoNext = 4298001i64;
                    };
                } else if (__value__ == (4297972i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/path/filepath/match.go#L63"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_13 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4298001i64;
                } else if (__value__ == (4298001i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/path/filepath/match.go#L65"
                    if (_star_9) {
                        _gotoNext = 4298009i64;
                    } else {
                        _gotoNext = 4298424i64;
                    };
                } else if (__value__ == (4298009i64)) {
                    _i_14 = (0 : stdgo.GoInt);
                    _gotoNext = 4298076i64;
                } else if (__value__ == (4298076i64)) {
                    //"file://#L0"
                    if (((_i_14 < (_name.length) : Bool) && (_name[(_i_14 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4298131i64;
                    } else {
                        _gotoNext = 4298424i64;
                    };
                } else if (__value__ == (4298127i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/path/filepath/match.go#L68"
                    _i_14++;
                    _gotoNext = 4298076i64;
                } else if (__value__ == (4298131i64)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchchunk._matchChunk(_chunk_10?.__copy__(), (_name.__slice__((_i_14 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_15 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_16 = @:tmpset0 __tmp__._1;
                        _err_17 = @:tmpset0 __tmp__._2;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/path/filepath/match.go#L70"
                    if (_ok_16) {
                        _gotoNext = 4298191i64;
                    } else {
                        _gotoNext = 4298368i64;
                    };
                } else if (__value__ == (4298191i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/path/filepath/match.go#L72"
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_15.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 4298298i64;
                    } else {
                        _gotoNext = 4298327i64;
                    };
                } else if (__value__ == (4298298i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/path/filepath/match.go#L68"
                    _i_14++;
                    _gotoNext = 4298076i64;
                } else if (__value__ == (4298327i64)) {
                    _name = _t_15?.__copy__();
                    _gotoNext = 4297395i64;
                } else if (__value__ == (4298368i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/path/filepath/match.go#L78"
                    if (_err_17 != null) {
                        _gotoNext = 4298382i64;
                    } else {
                        _gotoNext = 4298127i64;
                    };
                } else if (__value__ == (4298382i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/path/filepath/match.go#L79"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_17 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4298127i64;
                } else if (__value__ == (4298424i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/path/filepath/match.go#L83"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4297395i64;
                } else if (__value__ == (4298446i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/path/filepath/match.go#L85"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw new stdgo.AnyInterface(("unreachable goto control flow" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.invalidType));
    }

package stdgo._internal.path;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_30:stdgo.Error = (null : stdgo.Error);
        var _i_20:stdgo.GoInt = (0 : stdgo.GoInt);
        var _t_11:stdgo.GoString = ("" : stdgo.GoString);
        var _err_19:stdgo.Error = (null : stdgo.Error);
        var _ok_12:Bool = false;
        var _chunk_10:stdgo.GoString = ("" : stdgo.GoString);
        var _star_9:Bool = false;
        var patternBreak = false;
        var _err_31:stdgo.Error = (null : stdgo.Error);
        var _ok_22:Bool = false;
        var _t_21:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _gotoNext = 2824124i64;
                } else if (__value__ == (2824124i64)) {
                    0i64;
                    patternBreak = false;
                    _gotoNext = 2824134i64;
                } else if (__value__ == (2824134i64)) {
                    //"file://#L0"
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2824155i64;
                    } else {
                        _gotoNext = 2825440i64;
                    };
                } else if (__value__ == (2824155i64)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _star_9 = @:tmpset0 __tmp__._0;
                        _chunk_10 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    //"file:///Users/o/.go/go1.21.3/src/path/match.go#L43"
                    if ((_star_9 && (_chunk_10 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 2824261i64;
                    } else {
                        _gotoNext = 2824423i64;
                    };
                } else if (__value__ == (2824261i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/path/match.go#L45"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2824423i64;
                } else if (__value__ == (2824423i64)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_10?.__copy__(), _name?.__copy__());
                        _t_11 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_12 = @:tmpset0 __tmp__._1;
                        _err_19 = @:tmpset0 __tmp__._2;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/path/match.go#L52"
                    if ((_ok_12 && (((_t_11.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2824661i64;
                    } else {
                        _gotoNext = 2824693i64;
                    };
                } else if (__value__ == (2824661i64)) {
                    _name = _t_11?.__copy__();
                    0i64;
                    _gotoNext = 2824134i64;
                } else if (__value__ == (2824693i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/path/match.go#L56"
                    if (_err_19 != null) {
                        _gotoNext = 2824707i64;
                    } else {
                        _gotoNext = 2824736i64;
                    };
                } else if (__value__ == (2824707i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/path/match.go#L57"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_19 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2824736i64;
                } else if (__value__ == (2824736i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/path/match.go#L59"
                    if (_star_9) {
                        _gotoNext = 2824744i64;
                    } else {
                        _gotoNext = 2825265i64;
                    };
                } else if (__value__ == (2824744i64)) {
                    _i_20 = (0 : stdgo.GoInt);
                    _gotoNext = 2824811i64;
                } else if (__value__ == (2824811i64)) {
                    //"file://#L0"
                    if (((_i_20 < (_name.length) : Bool) && (_name[(_i_20 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2824860i64;
                    } else {
                        _gotoNext = 2825265i64;
                    };
                } else if (__value__ == (2824856i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/path/match.go#L62"
                    _i_20++;
                    _gotoNext = 2824811i64;
                } else if (__value__ == (2824860i64)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_10?.__copy__(), (_name.__slice__((_i_20 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_21 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_22 = @:tmpset0 __tmp__._1;
                        _err_30 = @:tmpset0 __tmp__._2;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/path/match.go#L64"
                    if (_ok_22) {
                        _gotoNext = 2824920i64;
                    } else {
                        _gotoNext = 2825097i64;
                    };
                } else if (__value__ == (2824920i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/path/match.go#L66"
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_21.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2825027i64;
                    } else {
                        _gotoNext = 2825056i64;
                    };
                } else if (__value__ == (2825027i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/path/match.go#L62"
                    _i_20++;
                    _gotoNext = 2824811i64;
                } else if (__value__ == (2825056i64)) {
                    _name = _t_21?.__copy__();
                    _gotoNext = 2824134i64;
                } else if (__value__ == (2825097i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/path/match.go#L72"
                    if (_err_30 != null) {
                        _gotoNext = 2825111i64;
                    } else {
                        _gotoNext = 2824856i64;
                    };
                } else if (__value__ == (2825111i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/path/match.go#L73"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_30 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2824856i64;
                } else if (__value__ == (2825265i64)) {
                    0i64;
                    _gotoNext = 2825265i64;
                    //"file://#L0"
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2825286i64;
                    } else {
                        _gotoNext = 2825418i64;
                    };
                } else if (__value__ == (2825286i64)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _chunk_10 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    //"file:///Users/o/.go/go1.21.3/src/path/match.go#L81"
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_10?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
                            _err_31 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_31 != null) {
                            _gotoNext = 2825383i64;
                        } else {
                            _gotoNext = 2825265i64;
                        };
                    };
                } else if (__value__ == (2825383i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/path/match.go#L82"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_31 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2825265i64;
                } else if (__value__ == (2825418i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/path/match.go#L85"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2824134i64;
                } else if (__value__ == (2825440i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/path/match.go#L87"
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

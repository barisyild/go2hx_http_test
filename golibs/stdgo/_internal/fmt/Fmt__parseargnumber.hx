package stdgo._internal.fmt;
import stdgo._internal.errors.Errors;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.os.Os;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.io.Io;
import stdgo._internal.internal.fmtsort.Fmtsort;
import stdgo._internal.math.Math;
function _parseArgNumber(_format:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : Bool; } {
        var _index = (0 : stdgo.GoInt), _wid = (0 : stdgo.GoInt), _ok = false;
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L976"
        if (((_format.length) < (3 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L977"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : Bool; } = { _0 : (0 : stdgo.GoInt), _1 : (1 : stdgo.GoInt), _2 : false };
                _index = __tmp__._0;
                _wid = __tmp__._1;
                _ok = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L981"
        {
            var _i = @:assignType (1 : stdgo.GoInt);
            while ((_i < (_format.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L982"
                if (_format[(_i : stdgo.GoInt)] == ((93 : stdgo.GoUInt8))) {
                    var __tmp__ = stdgo._internal.fmt.Fmt__parsenum._parsenum(_format.__copy__(), (1 : stdgo.GoInt), _i), _width:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1, _newi:stdgo.GoInt = __tmp__._2;
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L984"
                    if ((!_ok || (_newi != _i) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L985"
                        return {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : Bool; } = { _0 : (0 : stdgo.GoInt), _1 : (_i + (1 : stdgo.GoInt) : stdgo.GoInt), _2 : false };
                            _index = __tmp__._0;
                            _wid = __tmp__._1;
                            _ok = __tmp__._2;
                            __tmp__;
                        };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L987"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : Bool; } = { _0 : (_width - (1 : stdgo.GoInt) : stdgo.GoInt), _1 : (_i + (1 : stdgo.GoInt) : stdgo.GoInt), _2 : true };
                        _index = __tmp__._0;
                        _wid = __tmp__._1;
                        _ok = __tmp__._2;
                        __tmp__;
                    };
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L990"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : Bool; } = { _0 : (0 : stdgo.GoInt), _1 : (1 : stdgo.GoInt), _2 : false };
            _index = __tmp__._0;
            _wid = __tmp__._1;
            _ok = __tmp__._2;
            __tmp__;
        };
    }

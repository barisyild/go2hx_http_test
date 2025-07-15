package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
private function _atoi__tp__0(_s:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _x = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _neg = @:assignType (false : Bool);
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L454"
        if ((((_s.length) > (0 : stdgo.GoInt) : Bool) && (((_s[(0 : stdgo.GoInt)] == (45 : stdgo.GoUInt8)) || (_s[(0 : stdgo.GoInt)] == (43 : stdgo.GoUInt8)) : Bool)) : Bool)) {
            _neg = _s[(0 : stdgo.GoInt)] == ((45 : stdgo.GoUInt8));
            _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var __tmp__ = (stdgo._internal.time.Time__leadingint._leadingInt(_s) : { var _0 : stdgo.GoUInt64; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; }), _q:stdgo.GoUInt64 = __tmp__._0, _rem:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        _x = (_q : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L460"
        if (((_err != null) || ((_rem.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/time/format.go#L461"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.time.Time__erratoi._errAtoi };
                _x = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L463"
        if (_neg) {
            _x = -_x;
        };
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L466"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _x, _1 : (null : stdgo.Error) };
            _x = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
overload inline extern function _atoi(_s:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return _atoi__tp__0(_s);
private function _atoi__tp__1(_s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _x = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _neg = @:assignType (false : Bool);
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L454"
        if ((((_s.length) > (0 : stdgo.GoInt) : Bool) && (((_s[(0 : stdgo.GoInt)] == (45 : stdgo.GoUInt8)) || (_s[(0 : stdgo.GoInt)] == (43 : stdgo.GoUInt8)) : Bool)) : Bool)) {
            _neg = _s[(0 : stdgo.GoInt)] == ((45 : stdgo.GoUInt8));
            _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        var __tmp__ = (stdgo._internal.time.Time__leadingint._leadingInt(_s?.__copy__()) : { var _0 : stdgo.GoUInt64; var _1 : stdgo.GoString; var _2 : stdgo.Error; }), _q:stdgo.GoUInt64 = __tmp__._0, _rem:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        _x = (_q : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L460"
        if (((_err != null) || ((_rem.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/time/format.go#L461"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.time.Time__erratoi._errAtoi };
                _x = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L463"
        if (_neg) {
            _x = -_x;
        };
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L466"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _x, _1 : (null : stdgo.Error) };
            _x = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
overload inline extern function _atoi(_s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return _atoi__tp__1(_s);

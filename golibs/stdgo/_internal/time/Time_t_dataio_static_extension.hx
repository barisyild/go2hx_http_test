package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
@:keep @:allow(stdgo._internal.time.Time.T_dataIO_asInterface) class T_dataIO_static_extension {
    @:keep
    @:tdfield
    static public function _rest( _d:stdgo.Ref<stdgo._internal.time.Time_t_dataio.T_dataIO>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _d:stdgo.Ref<stdgo._internal.time.Time_t_dataio.T_dataIO> = _d;
        var _r = (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p;
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p = (null : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L97"
        return _r;
    }
    @:keep
    @:tdfield
    static public function _byte( _d:stdgo.Ref<stdgo._internal.time.Time_t_dataio.T_dataIO>):{ var _0 : stdgo.GoUInt8; var _1 : Bool; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.time.Time_t_dataio.T_dataIO> = _d;
        var _n = (0 : stdgo.GoUInt8), _ok = false;
        var _p = _d._read((1 : stdgo.GoInt));
        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L86"
        if (((_p.length) < (1 : stdgo.GoInt) : Bool)) {
            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._error = true;
            //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L88"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : Bool; } = { _0 : (0 : stdgo.GoUInt8), _1 : false };
                _n = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L90"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : Bool; } = { _0 : _p[(0 : stdgo.GoInt)], _1 : true };
            _n = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _big8( _d:stdgo.Ref<stdgo._internal.time.Time_t_dataio.T_dataIO>):{ var _0 : stdgo.GoUInt64; var _1 : Bool; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.time.Time_t_dataio.T_dataIO> = _d;
        var _n = (0 : stdgo.GoUInt64), _ok = false;
        var __tmp__ = _d._big4(), _n1:stdgo.GoUInt32 = __tmp__._0, _ok1:Bool = __tmp__._1;
        var __tmp__ = _d._big4(), _n2:stdgo.GoUInt32 = __tmp__._0, _ok2:Bool = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L77"
        if ((!_ok1 || !_ok2 : Bool)) {
            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._error = true;
            //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L79"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : Bool; } = { _0 : (0i64 : stdgo.GoUInt64), _1 : false };
                _n = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L81"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : Bool; } = { _0 : ((((_n1 : stdgo.GoUInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) | (_n2 : stdgo.GoUInt64) : stdgo.GoUInt64), _1 : true };
            _n = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _big4( _d:stdgo.Ref<stdgo._internal.time.Time_t_dataio.T_dataIO>):{ var _0 : stdgo.GoUInt32; var _1 : Bool; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.time.Time_t_dataio.T_dataIO> = _d;
        var _n = (0 : stdgo.GoUInt32), _ok = false;
        var _p = _d._read((4 : stdgo.GoInt));
        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L67"
        if (((_p.length) < (4 : stdgo.GoInt) : Bool)) {
            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._error = true;
            //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L69"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt32; var _1 : Bool; } = { _0 : (0u32 : stdgo.GoUInt32), _1 : false };
                _n = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L71"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt32; var _1 : Bool; } = { _0 : ((((_p[(3 : stdgo.GoInt)] : stdgo.GoUInt32) | ((_p[(2 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_p[(1 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_p[(0 : stdgo.GoInt)] : stdgo.GoUInt32) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32), _1 : true };
            _n = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _read( _d:stdgo.Ref<stdgo._internal.time.Time_t_dataio.T_dataIO>, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _d:stdgo.Ref<stdgo._internal.time.Time_t_dataio.T_dataIO> = _d;
        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L55"
        if ((((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p.length) < _n : Bool)) {
            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p = (null : stdgo.Slice<stdgo.GoUInt8>);
            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._error = true;
            //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L58"
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _p = ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p = ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L62"
        return _p;
    }
}

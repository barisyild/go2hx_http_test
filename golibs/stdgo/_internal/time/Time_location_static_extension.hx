package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
@:keep @:allow(stdgo._internal.time.Time.Location_asInterface) class Location_static_extension {
    @:keep
    @:tdfield
    static public function _lookupName( _l:stdgo.Ref<stdgo._internal.time.Time_location.Location>, _name:stdgo.GoString, _unix:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        @:recv var _l:stdgo.Ref<stdgo._internal.time.Time_location.Location> = _l;
        var _offset = (0 : stdgo.GoInt), _ok = false;
        _l = _l._get();
        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L617"
        if ((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._zone != null) for (_i => _ in (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._zone) {
            var _zone = (stdgo.Go.setRef((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._zone[(_i : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_t_zonedott_zone.__type__stdgodot_internaldottimedotTime_t_zonedotT_zone })) : stdgo.Ref<stdgo._internal.time.Time_t_zone.T_zone>);
            //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L619"
            if ((@:checkr _zone ?? throw stdgo.Error._nullPointerDereference.__underlying__())._name == (_name)) {
                var __tmp__ = _l._lookup((_unix - ((@:checkr _zone ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset : stdgo.GoInt64) : stdgo.GoInt64)), _nam:stdgo.GoString = __tmp__._0, _offset:stdgo.GoInt = __tmp__._1, __1:stdgo.GoInt64 = __tmp__._2, __2:stdgo.GoInt64 = __tmp__._3, __3:Bool = __tmp__._4;
                //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L621"
                if (_nam == ((@:checkr _zone ?? throw stdgo.Error._nullPointerDereference.__underlying__())._name)) {
                    //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L622"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : _offset, _1 : true };
                        _offset = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L628"
        if ((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._zone != null) for (_i => _ in (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._zone) {
            var _zone = (stdgo.Go.setRef((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._zone[(_i : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_t_zonedott_zone.__type__stdgodot_internaldottimedotTime_t_zonedotT_zone })) : stdgo.Ref<stdgo._internal.time.Time_t_zone.T_zone>);
            //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L630"
            if ((@:checkr _zone ?? throw stdgo.Error._nullPointerDereference.__underlying__())._name == (_name)) {
                //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L631"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : (@:checkr _zone ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset, _1 : true };
                    _offset = __tmp__._0;
                    _ok = __tmp__._1;
                    __tmp__;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L636"
        return { _0 : _offset, _1 : _ok };
    }
    @:keep
    @:tdfield
    static public function _firstZoneUsed( _l:stdgo.Ref<stdgo._internal.time.Time_location.Location>):Bool return false;
    @:keep
    @:tdfield
    static public function _lookupFirstZone( _l:stdgo.Ref<stdgo._internal.time.Time_location.Location>):stdgo.GoInt {
        @:recv var _l:stdgo.Ref<stdgo._internal.time.Time_location.Location> = _l;
        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L231"
        if (!_l._firstZoneUsed()) {
            //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L232"
            return (0 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L236"
        if (((((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tx.length) > (0 : stdgo.GoInt) : Bool) && (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._zone[((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tx[(0 : stdgo.GoInt)]._index : stdgo.GoInt)]._isDST : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L237"
            {
                var _zi = @:assignType (((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tx[(0 : stdgo.GoInt)]._index : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt);
                while ((_zi >= (0 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L238"
                    if (!(@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._zone[(_zi : stdgo.GoInt)]._isDST) {
                        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L239"
                        return _zi;
                    };
                    _zi--;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L245"
        if ((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._zone != null) for (_zi => _ in (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._zone) {
            //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L246"
            if (!(@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._zone[(_zi : stdgo.GoInt)]._isDST) {
                //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L247"
                return _zi;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L252"
        return (0 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _lookup( _l:stdgo.Ref<stdgo._internal.time.Time_location.Location>, _sec:stdgo.GoInt64):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt64; var _3 : stdgo.GoInt64; var _4 : Bool; } {
        @:recv var _l:stdgo.Ref<stdgo._internal.time.Time_location.Location> = _l;
        var _name = ("" : stdgo.GoString), _offset = (0 : stdgo.GoInt), _start = (0 : stdgo.GoInt64), _end = (0 : stdgo.GoInt64), _isDST = false;
        _l = _l._get();
        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L148"
        if (((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._zone.length) == ((0 : stdgo.GoInt))) {
            _name = ("UTC" : stdgo.GoString);
            _offset = (0 : stdgo.GoInt);
            _start = (-9223372036854775808i64 : stdgo.GoInt64);
            _end = (9223372036854775807i64 : stdgo.GoInt64);
            _isDST = false;
            //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L154"
            return { _0 : _name, _1 : _offset, _2 : _start, _3 : _end, _4 : _isDST };
        };
        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L157"
        {
            var _zone = (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cacheZone;
            if (((({
                final value = _zone;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && ((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cacheStart <= _sec : Bool) : Bool) && (_sec < (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cacheEnd : Bool) : Bool)) {
                _name = (@:checkr _zone ?? throw stdgo.Error._nullPointerDereference.__underlying__())._name?.__copy__();
                _offset = (@:checkr _zone ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset;
                _start = (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cacheStart;
                _end = (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cacheEnd;
                _isDST = (@:checkr _zone ?? throw stdgo.Error._nullPointerDereference.__underlying__())._isDST;
                //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L163"
                return { _0 : _name, _1 : _offset, _2 : _start, _3 : _end, _4 : _isDST };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L166"
        if ((((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tx.length == (0 : stdgo.GoInt)) || (_sec < (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tx[(0 : stdgo.GoInt)]._when : Bool) : Bool)) {
            var _zone = (stdgo.Go.setRef((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._zone[(_l._lookupFirstZone() : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_t_zonedott_zone.__type__stdgodot_internaldottimedotTime_t_zonedotT_zone })) : stdgo.Ref<stdgo._internal.time.Time_t_zone.T_zone>);
            _name = (@:checkr _zone ?? throw stdgo.Error._nullPointerDereference.__underlying__())._name?.__copy__();
            _offset = (@:checkr _zone ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset;
            _start = (-9223372036854775808i64 : stdgo.GoInt64);
            //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L171"
            if ((((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tx.length) > (0 : stdgo.GoInt) : Bool)) {
                _end = (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tx[(0 : stdgo.GoInt)]._when;
            } else {
                _end = (9223372036854775807i64 : stdgo.GoInt64);
            };
            _isDST = (@:checkr _zone ?? throw stdgo.Error._nullPointerDereference.__underlying__())._isDST;
            //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L177"
            return { _0 : _name, _1 : _offset, _2 : _start, _3 : _end, _4 : _isDST };
        };
        var _tx = (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tx;
        _end = (9223372036854775807i64 : stdgo.GoInt64);
        var _lo = @:assignType (0 : stdgo.GoInt);
        var _hi = @:assignType (_tx.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L186"
        while (((_hi - _lo : stdgo.GoInt) > (1 : stdgo.GoInt) : Bool)) {
            var _m = @:assignType (_lo + (((_hi - _lo : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
            var _lim = @:assignType (_tx[(_m : stdgo.GoInt)]._when : stdgo.GoInt64);
            //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L189"
            if ((_sec < _lim : Bool)) {
                _end = _lim;
                _hi = _m;
            } else {
                _lo = _m;
            };
        };
        var _zone = (stdgo.Go.setRef((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._zone[(_tx[(_lo : stdgo.GoInt)]._index : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_t_zonedott_zone.__type__stdgodot_internaldottimedotTime_t_zonedotT_zone })) : stdgo.Ref<stdgo._internal.time.Time_t_zone.T_zone>);
        _name = (@:checkr _zone ?? throw stdgo.Error._nullPointerDereference.__underlying__())._name?.__copy__();
        _offset = (@:checkr _zone ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset;
        _start = _tx[(_lo : stdgo.GoInt)]._when;
        _isDST = (@:checkr _zone ?? throw stdgo.Error._nullPointerDereference.__underlying__())._isDST;
        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L205"
        if (((_lo == ((_tx.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) && ((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._extend != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L206"
            {
                var __tmp__ = stdgo._internal.time.Time__tzset._tzset((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._extend?.__copy__(), _start, _sec), _ename:stdgo.GoString = __tmp__._0, _eoffset:stdgo.GoInt = __tmp__._1, _estart:stdgo.GoInt64 = __tmp__._2, _eend:stdgo.GoInt64 = __tmp__._3, _eisDST:Bool = __tmp__._4, _ok:Bool = __tmp__._5;
                if (_ok) {
                    //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L207"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt64; var _3 : stdgo.GoInt64; var _4 : Bool; } = { _0 : _ename?.__copy__(), _1 : _eoffset, _2 : _estart, _3 : _eend, _4 : _eisDST };
                        _name = __tmp__._0;
                        _offset = __tmp__._1;
                        _start = __tmp__._2;
                        _end = __tmp__._3;
                        _isDST = __tmp__._4;
                        __tmp__;
                    };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L211"
        return { _0 : _name, _1 : _offset, _2 : _start, _3 : _end, _4 : _isDST };
    }
    @:keep
    @:tdfield
    static public function string( _l:stdgo.Ref<stdgo._internal.time.Time_location.Location>):stdgo.GoString {
        @:recv var _l:stdgo.Ref<stdgo._internal.time.Time_location.Location> = _l;
        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L100"
        return _l._get()._name?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _get( _l:stdgo.Ref<stdgo._internal.time.Time_location.Location>):stdgo.Ref<stdgo._internal.time.Time_location.Location> {
        @:recv var _l:stdgo.Ref<stdgo._internal.time.Time_location.Location> = _l;
        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L88"
        if (({
            final value = _l;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L89"
            return (stdgo.Go.setRef(stdgo._internal.time.Time__utcloc._utcLoc, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_locationdotlocation.__type__stdgodot_internaldottimedotTime_locationdotLocation })) : stdgo.Ref<stdgo._internal.time.Time_location.Location>);
        };
        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L91"
        if (_l == ((stdgo.Go.setRef(stdgo._internal.time.Time__localloc._localLoc, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_locationdotlocation.__type__stdgodot_internaldottimedotTime_locationdotLocation })) : stdgo.Ref<stdgo._internal.time.Time_location.Location>))) {
            //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L92"
            stdgo._internal.time.Time__localonce._localOnce.do_(stdgo._internal.time.Time__initlocal._initLocal);
        };
        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L94"
        return _l;
    }
}

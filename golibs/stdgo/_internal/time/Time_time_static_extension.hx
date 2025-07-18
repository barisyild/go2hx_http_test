package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
@:keep @:allow(stdgo._internal.time.Time.Time_asInterface) class Time_static_extension {
    @:keep
    @:tdfield
    static public function round( _t:stdgo._internal.time.Time_time.Time, _d:stdgo._internal.time.Time_duration.Duration):stdgo._internal.time.Time_time.Time {
        @:recv var _t:stdgo._internal.time.Time_time.Time = _t?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1546"
        _t._stripMono();
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1547"
        if ((_d <= (0i64 : stdgo._internal.time.Time_duration.Duration) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1548"
            return _t?.__copy__();
        };
        var __tmp__ = stdgo._internal.time.Time__div._div(_t?.__copy__(), _d), __1:stdgo.GoInt = __tmp__._0, _r:stdgo._internal.time.Time_duration.Duration = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1551"
        if (stdgo._internal.time.Time__lessthanhalf._lessThanHalf(_r, _d)) {
            //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1552"
            return _t.add(-_r)?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1554"
        return _t.add((_d - _r : stdgo._internal.time.Time_duration.Duration))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function truncate( _t:stdgo._internal.time.Time_time.Time, _d:stdgo._internal.time.Time_duration.Duration):stdgo._internal.time.Time_time.Time {
        @:recv var _t:stdgo._internal.time.Time_time.Time = _t?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1529"
        _t._stripMono();
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1530"
        if ((_d <= (0i64 : stdgo._internal.time.Time_duration.Duration) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1531"
            return _t?.__copy__();
        };
        var __tmp__ = stdgo._internal.time.Time__div._div(_t?.__copy__(), _d), __1:stdgo.GoInt = __tmp__._0, _r:stdgo._internal.time.Time_duration.Duration = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1534"
        return _t.add(-_r)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function isDST( _t:stdgo._internal.time.Time_time.Time):Bool {
        @:recv var _t:stdgo._internal.time.Time_time.Time = _t?.__copy__();
        var __tmp__ = _t._loc._lookup(_t.unix()), __1:stdgo.GoString = __tmp__._0, __2:stdgo.GoInt = __tmp__._1, __3:stdgo.GoInt64 = __tmp__._2, __4:stdgo.GoInt64 = __tmp__._3, _isDST:Bool = __tmp__._4;
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1424"
        return _isDST;
    }
    @:keep
    @:tdfield
    static public function unmarshalText( _t:stdgo.Ref<stdgo._internal.time.Time_time.Time>, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _t:stdgo.Ref<stdgo._internal.time.Time_time.Time> = _t;
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = stdgo._internal.time.Time__parsestrictrfc3339._parseStrictRFC3339(_data);
            var x = _t;
            x._wall = @:tmpset0 __tmp__._0?.__copy__()?._wall;
            x._ext = @:tmpset0 __tmp__._0?.__copy__()?._ext;
            x._loc = @:tmpset0 __tmp__._0?.__copy__()?._loc;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1388"
        return _err;
    }
    @:keep
    @:tdfield
    static public function marshalText( _t:stdgo._internal.time.Time_time.Time):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo._internal.time.Time_time.Time = _t?.__copy__();
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((("2006-01-02T15:04:05.999999999Z07:00" : stdgo.GoString) : stdgo.GoString).length)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = _t._appendStrictRFC3339(_b), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1377"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1378"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_((("Time.MarshalText: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__()) };
        };
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1380"
        return { _0 : _b, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function unmarshalJSON( _t:stdgo.Ref<stdgo._internal.time.Time_time.Time>, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _t:stdgo.Ref<stdgo._internal.time.Time_time.Time> = _t;
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1357"
        if ((_data : stdgo.GoString) == (("null" : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1358"
            return (null : stdgo.Error);
        };
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1361"
        if (((((_data.length) < (2 : stdgo.GoInt) : Bool) || _data[(0 : stdgo.GoInt)] != ((34 : stdgo.GoUInt8)) : Bool) || (_data[((_data.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] != (34 : stdgo.GoUInt8)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1362"
            return stdgo._internal.errors.Errors_new_.new_(("Time.UnmarshalJSON: input is not a JSON string" : stdgo.GoString));
        };
        _data = (_data.__slice__(((("\"" : stdgo.GoString) : stdgo.GoString).length), ((_data.length) - ((("\"" : stdgo.GoString) : stdgo.GoString).length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = stdgo._internal.time.Time__parsestrictrfc3339._parseStrictRFC3339(_data);
            var x = _t;
            x._wall = @:tmpset0 __tmp__._0?.__copy__()?._wall;
            x._ext = @:tmpset0 __tmp__._0?.__copy__()?._ext;
            x._loc = @:tmpset0 __tmp__._0?.__copy__()?._loc;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1367"
        return _err;
    }
    @:keep
    @:tdfield
    static public function marshalJSON( _t:stdgo._internal.time.Time_time.Time):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo._internal.time.Time_time.Time = _t?.__copy__();
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (37 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _b = (_b.__append__((34 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = _t._appendStrictRFC3339(_b), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _b = (_b.__append__((34 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1348"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1349"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_((("Time.MarshalJSON: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__()) };
        };
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1351"
        return { _0 : _b, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function gobDecode( _t:stdgo.Ref<stdgo._internal.time.Time_time.Time>, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _t:stdgo.Ref<stdgo._internal.time.Time_time.Time> = _t;
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1336"
        return _t.unmarshalBinary(_data);
    }
    @:keep
    @:tdfield
    static public function gobEncode( _t:stdgo._internal.time.Time_time.Time):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo._internal.time.Time_time.Time = _t?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1331"
        return _t.marshalBinary();
    }
    @:keep
    @:tdfield
    static public function unmarshalBinary( _t:stdgo.Ref<stdgo._internal.time.Time_time.Time>, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _t:stdgo.Ref<stdgo._internal.time.Time_time.Time> = _t;
        var _buf = _data;
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1280"
        if ((_buf.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1281"
            return stdgo._internal.errors.Errors_new_.new_(("Time.UnmarshalBinary: no data" : stdgo.GoString));
        };
        var _version = @:assignType (_buf[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1285"
        if (((_version != (1 : stdgo.GoUInt8)) && (_version != (2 : stdgo.GoUInt8)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1286"
            return stdgo._internal.errors.Errors_new_.new_(("Time.UnmarshalBinary: unsupported version" : stdgo.GoString));
        };
        var _wantLen = @:assignType (15 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1290"
        if (_version == ((2 : stdgo.GoUInt8))) {
            //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1291"
            _wantLen++;
        };
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1293"
        if ((_buf.length) != (_wantLen)) {
            //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1294"
            return stdgo._internal.errors.Errors_new_.new_(("Time.UnmarshalBinary: invalid length" : stdgo.GoString));
        };
        _buf = (_buf.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _sec = @:assignType ((((((((_buf[(7 : stdgo.GoInt)] : stdgo.GoInt64) | ((_buf[(6 : stdgo.GoInt)] : stdgo.GoInt64) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoInt64) | ((_buf[(5 : stdgo.GoInt)] : stdgo.GoInt64) << (16i64 : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoInt64) | ((_buf[(4 : stdgo.GoInt)] : stdgo.GoInt64) << (24i64 : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoInt64) | ((_buf[(3 : stdgo.GoInt)] : stdgo.GoInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoInt64) | ((_buf[(2 : stdgo.GoInt)] : stdgo.GoInt64) << (40i64 : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoInt64) | ((_buf[(1 : stdgo.GoInt)] : stdgo.GoInt64) << (48i64 : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoInt64) | ((_buf[(0 : stdgo.GoInt)] : stdgo.GoInt64) << (56i64 : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoInt64);
        _buf = (_buf.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _nsec = @:assignType ((((_buf[(3 : stdgo.GoInt)] : stdgo.GoInt32) | ((_buf[(2 : stdgo.GoInt)] : stdgo.GoInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoInt32) | ((_buf[(1 : stdgo.GoInt)] : stdgo.GoInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoInt32) | ((_buf[(0 : stdgo.GoInt)] : stdgo.GoInt32) << (24i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoInt32);
        _buf = (_buf.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _offset = @:assignType ((((_buf[(1 : stdgo.GoInt)] : stdgo.GoInt16) | ((_buf[(0 : stdgo.GoInt)] : stdgo.GoInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt16) : stdgo.GoInt16) : stdgo.GoInt) * (60 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1306"
        if (_version == ((2 : stdgo.GoUInt8))) {
            _offset = (_offset + ((_buf[(2 : stdgo.GoInt)] : stdgo.GoInt)) : stdgo.GoInt);
        };
        {
            var __tmp__ = (new stdgo._internal.time.Time_time.Time() : stdgo._internal.time.Time_time.Time);
            var x = (_t : stdgo._internal.time.Time_time.Time);
            x._wall = __tmp__?._wall;
            x._ext = __tmp__?._ext;
            x._loc = __tmp__?._loc;
        };
        (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wall = (_nsec : stdgo.GoUInt64);
        (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ext = _sec;
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1314"
        if (_offset == ((-60 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1315"
            _t._setLoc((stdgo.Go.setRef(stdgo._internal.time.Time__utcloc._utcLoc, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_locationdotlocation.__type__stdgodot_internaldottimedotTime_locationdotLocation })) : stdgo.Ref<stdgo._internal.time.Time_location.Location>));
        } else {
            var __tmp__ = stdgo._internal.time.Time_local.local._lookup(_t._unixSec()), __1:stdgo.GoString = __tmp__._0, _localoff:stdgo.GoInt = __tmp__._1, __2:stdgo.GoInt64 = __tmp__._2, __3:stdgo.GoInt64 = __tmp__._3, __4:Bool = __tmp__._4;
            if (_offset == (_localoff)) {
                //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1317"
                _t._setLoc(stdgo._internal.time.Time_local.local);
            } else {
                //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1319"
                _t._setLoc(stdgo._internal.time.Time_fixedzone.fixedZone((stdgo.Go.str() : stdgo.GoString)?.__copy__(), _offset));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1322"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function marshalBinary( _t:stdgo._internal.time.Time_time.Time):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo._internal.time.Time_time.Time = _t?.__copy__();
        var _offsetMin:stdgo.GoInt16 = (0 : stdgo.GoInt16);
        var _offsetSec:stdgo.GoInt8 = (0 : stdgo.GoInt8);
        var _version = @:assignType (1 : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1235"
        if (_t.location() == (stdgo._internal.time.Time_utc.uTC)) {
            _offsetMin = (-1 : stdgo.GoInt16);
        } else {
            var __tmp__ = _t.zone(), __1:stdgo.GoString = __tmp__._0, _offset:stdgo.GoInt = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1239"
            if ((_offset % (60 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                _version = (2 : stdgo.GoUInt8);
                _offsetSec = ((_offset % (60 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt8);
            };
            _offset = (_offset / ((60 : stdgo.GoInt)) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1245"
            if ((((_offset < (-32768 : stdgo.GoInt) : Bool) || _offset == ((-1 : stdgo.GoInt)) : Bool) || (_offset > (32767 : stdgo.GoInt) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1246"
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("Time.MarshalBinary: unexpected zone offset" : stdgo.GoString)) };
            };
            _offsetMin = (_offset : stdgo.GoInt16);
        };
        var _sec = @:assignType (_t._sec() : stdgo.GoInt64);
        var _nsec = @:assignType (_t._nsec() : stdgo.GoInt32);
        var _enc = (new stdgo.Slice<stdgo.GoUInt8>(15, 15, ...[
_version,
((_sec >> (56i64 : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoUInt8),
((_sec >> (48i64 : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoUInt8),
((_sec >> (40i64 : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoUInt8),
((_sec >> (32i64 : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoUInt8),
((_sec >> (24i64 : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoUInt8),
((_sec >> (16i64 : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoUInt8),
((_sec >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoUInt8),
(_sec : stdgo.GoUInt8),
((_nsec >> (24i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoUInt8),
((_nsec >> (16i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoUInt8),
((_nsec >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoUInt8),
(_nsec : stdgo.GoUInt8),
((_offsetMin >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt16) : stdgo.GoUInt8),
(_offsetMin : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1270"
        if (_version == ((2 : stdgo.GoUInt8))) {
            _enc = (_enc.__append__((_offsetSec : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1274"
        return { _0 : _enc, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function unixNano( _t:stdgo._internal.time.Time_time.Time):stdgo.GoInt64 {
        @:recv var _t:stdgo._internal.time.Time_time.Time = _t?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1221"
        return (((_t._unixSec()) * (1000000000i64 : stdgo.GoInt64) : stdgo.GoInt64) + (_t._nsec() : stdgo.GoInt64) : stdgo.GoInt64);
    }
    @:keep
    @:tdfield
    static public function unixMicro( _t:stdgo._internal.time.Time_time.Time):stdgo.GoInt64 {
        @:recv var _t:stdgo._internal.time.Time_time.Time = _t?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1211"
        return ((_t._unixSec() * (1000000i64 : stdgo.GoInt64) : stdgo.GoInt64) + ((_t._nsec() : stdgo.GoInt64) / (1000i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt64);
    }
    @:keep
    @:tdfield
    static public function unixMilli( _t:stdgo._internal.time.Time_time.Time):stdgo.GoInt64 {
        @:recv var _t:stdgo._internal.time.Time_time.Time = _t?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1202"
        return ((_t._unixSec() * (1000i64 : stdgo.GoInt64) : stdgo.GoInt64) + ((_t._nsec() : stdgo.GoInt64) / (1000000i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt64);
    }
    @:keep
    @:tdfield
    static public function unix( _t:stdgo._internal.time.Time_time.Time):stdgo.GoInt64 {
        @:recv var _t:stdgo._internal.time.Time_time.Time = _t?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1193"
        return _t._unixSec();
    }
    @:keep
    @:tdfield
    static public function zoneBounds( _t:stdgo._internal.time.Time_time.Time):{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : stdgo._internal.time.Time_time.Time; } {
        @:recv var _t:stdgo._internal.time.Time_time.Time = _t?.__copy__();
        var _start = ({} : stdgo._internal.time.Time_time.Time), _end = ({} : stdgo._internal.time.Time_time.Time);
        var __tmp__ = _t._loc._lookup(_t._unixSec()), __1:stdgo.GoString = __tmp__._0, __2:stdgo.GoInt = __tmp__._1, _startSec:stdgo.GoInt64 = __tmp__._2, _endSec:stdgo.GoInt64 = __tmp__._3, __3:Bool = __tmp__._4;
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1175"
        if (_startSec != ((-9223372036854775808i64 : stdgo.GoInt64))) {
            _start = stdgo._internal.time.Time__unixtime._unixTime(_startSec, (0 : stdgo.GoInt32))?.__copy__();
            //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1177"
            _start._setLoc(_t._loc);
        };
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1179"
        if (_endSec != ((9223372036854775807i64 : stdgo.GoInt64))) {
            _end = stdgo._internal.time.Time__unixtime._unixTime(_endSec, (0 : stdgo.GoInt32))?.__copy__();
            //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1181"
            _end._setLoc(_t._loc);
        };
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1183"
        return { _0 : _start, _1 : _end };
    }
    @:keep
    @:tdfield
    static public function zone( _t:stdgo._internal.time.Time_time.Time):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; } {
        @:recv var _t:stdgo._internal.time.Time_time.Time = _t?.__copy__();
        var _name = ("" : stdgo.GoString), _offset = (0 : stdgo.GoInt);
        {
            var __tmp__ = _t._loc._lookup(_t._unixSec());
            _name = @:tmpset0 __tmp__._0?.__copy__();
            _offset = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1165"
        return { _0 : _name, _1 : _offset };
    }
    @:keep
    @:tdfield
    static public function location( _t:stdgo._internal.time.Time_time.Time):stdgo.Ref<stdgo._internal.time.Time_location.Location> {
        @:recv var _t:stdgo._internal.time.Time_time.Time = _t?.__copy__();
        var _l = _t._loc;
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1155"
        if (({
            final value = _l;
            (value == null || (value : Dynamic).__nil__);
        })) {
            _l = stdgo._internal.time.Time_utc.uTC;
        };
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1158"
        return _l;
    }
    @:keep
    @:tdfield
    static public function in_( _t:stdgo._internal.time.Time_time.Time, _loc:stdgo.Ref<stdgo._internal.time.Time_location.Location>):stdgo._internal.time.Time_time.Time {
        @:recv var _t:stdgo._internal.time.Time_time.Time = _t?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1145"
        if (({
            final value = _loc;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1146"
            throw new stdgo.AnyInterface(("time: missing Location in call to Time.In" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1148"
        _t._setLoc(_loc);
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1149"
        return _t?.__copy__();
    }
    @:keep
    @:tdfield
    static public function local( _t:stdgo._internal.time.Time_time.Time):stdgo._internal.time.Time_time.Time {
        @:recv var _t:stdgo._internal.time.Time_time.Time = _t?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1135"
        _t._setLoc(stdgo._internal.time.Time_local.local);
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1136"
        return _t?.__copy__();
    }
    @:keep
    @:tdfield
    static public function uTC( _t:stdgo._internal.time.Time_time.Time):stdgo._internal.time.Time_time.Time {
        @:recv var _t:stdgo._internal.time.Time_time.Time = _t?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1129"
        _t._setLoc((stdgo.Go.setRef(stdgo._internal.time.Time__utcloc._utcLoc, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_locationdotlocation.__type__stdgodot_internaldottimedotTime_locationdotLocation })) : stdgo.Ref<stdgo._internal.time.Time_location.Location>));
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1130"
        return _t?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _date( _t:stdgo._internal.time.Time_time.Time, _full:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.time.Time_month.Month; var _2 : stdgo.GoInt; var _3 : stdgo.GoInt; } {
        @:recv var _t:stdgo._internal.time.Time_time.Time = _t?.__copy__();
        var _year = (0 : stdgo.GoInt), _month = ((0 : stdgo.GoInt) : stdgo._internal.time.Time_month.Month), _day = (0 : stdgo.GoInt), _yday = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L962"
        return stdgo._internal.time.Time__absdate._absDate(_t._abs(), _full);
    }
    @:keep
    @:tdfield
    static public function addDate( _t:stdgo._internal.time.Time_time.Time, _years:stdgo.GoInt, _months:stdgo.GoInt, _days:stdgo.GoInt):stdgo._internal.time.Time_time.Time {
        @:recv var _t:stdgo._internal.time.Time_time.Time = _t?.__copy__();
        var __tmp__ = _t.date(), _year:stdgo.GoInt = __tmp__._0, _month:stdgo._internal.time.Time_month.Month = __tmp__._1, _day:stdgo.GoInt = __tmp__._2;
        var __tmp__ = _t.clock(), _hour:stdgo.GoInt = __tmp__._0, _min:stdgo.GoInt = __tmp__._1, _sec:stdgo.GoInt = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L946"
        return stdgo._internal.time.Time_date.date((_year + _years : stdgo.GoInt), (_month + (_months : stdgo._internal.time.Time_month.Month) : stdgo._internal.time.Time_month.Month), (_day + _days : stdgo.GoInt), _hour, _min, _sec, (_t._nsec() : stdgo.GoInt), _t.location())?.__copy__();
    }
    @:keep
    @:tdfield
    static public function sub( _t:stdgo._internal.time.Time_time.Time, _u:stdgo._internal.time.Time_time.Time):stdgo._internal.time.Time_duration.Duration {
        @:recv var _t:stdgo._internal.time.Time_time.Time = _t?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L885"
        if (((_t._wall & _u._wall : stdgo.GoUInt64) & (-9223372036854775808i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
            var _te = @:assignType (_t._ext : stdgo.GoInt64);
            var _ue = @:assignType (_u._ext : stdgo.GoInt64);
            var _d = @:assignType ((_te - _ue : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
            //"file:///Users/o/.go/go1.21.3/src/time/time.go#L889"
            if (((_d < (0i64 : stdgo._internal.time.Time_duration.Duration) : Bool) && (_te > _ue : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/time/time.go#L890"
                return (9223372036854775807i64 : stdgo._internal.time.Time_duration.Duration);
            };
            //"file:///Users/o/.go/go1.21.3/src/time/time.go#L892"
            if (((_d > (0i64 : stdgo._internal.time.Time_duration.Duration) : Bool) && (_te < _ue : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/time/time.go#L893"
                return (-9223372036854775808i64 : stdgo._internal.time.Time_duration.Duration);
            };
            //"file:///Users/o/.go/go1.21.3/src/time/time.go#L895"
            return _d;
        };
        var _d = @:assignType ((((_t._sec() - _u._sec() : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration) * (1000000000i64 : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration) + ((_t._nsec() - _u._nsec() : stdgo.GoInt32) : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration);
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L899"
        if (_u.add(_d).equal(_t?.__copy__())) {
            //"file:///Users/o/.go/go1.21.3/src/time/time.go#L901"
            return _d;
        } else if (_t.before(_u?.__copy__())) {
            //"file:///Users/o/.go/go1.21.3/src/time/time.go#L903"
            return (-9223372036854775808i64 : stdgo._internal.time.Time_duration.Duration);
        } else {
            //"file:///Users/o/.go/go1.21.3/src/time/time.go#L905"
            return (9223372036854775807i64 : stdgo._internal.time.Time_duration.Duration);
        };
    }
    @:keep
    @:tdfield
    static public function add( _t:stdgo._internal.time.Time_time.Time, _d:stdgo._internal.time.Time_duration.Duration):stdgo._internal.time.Time_time.Time {
        @:recv var _t:stdgo._internal.time.Time_time.Time = _t?.__copy__();
        var _dsec = @:assignType ((_d / (1000000000i64 : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration) : stdgo.GoInt64);
        var _nsec = @:assignType (_t._nsec() + ((_d % (1000000000i64 : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration) : stdgo.GoInt32) : stdgo.GoInt32);
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L859"
        if ((_nsec >= (1000000000 : stdgo.GoInt32) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/time/time.go#L860"
            _dsec++;
            _nsec = (_nsec - ((1000000000 : stdgo.GoInt32)) : stdgo.GoInt32);
        } else if ((_nsec < (0 : stdgo.GoInt32) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/time/time.go#L863"
            _dsec--;
            _nsec = (_nsec + ((1000000000 : stdgo.GoInt32)) : stdgo.GoInt32);
        };
        _t._wall = ((_t._wall & (((1073741823i64 : stdgo.GoUInt64) ^ (-1i64 : stdgo.GoInt32) : stdgo.GoUInt64)) : stdgo.GoUInt64) | (_nsec : stdgo.GoUInt64) : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L867"
        _t._addSec(_dsec);
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L868"
        if ((_t._wall & (-9223372036854775808i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
            var _te = @:assignType (_t._ext + (_d : stdgo.GoInt64) : stdgo.GoInt64);
            //"file:///Users/o/.go/go1.21.3/src/time/time.go#L870"
            if ((((_d < (0i64 : stdgo._internal.time.Time_duration.Duration) : Bool) && (_te > _t._ext : Bool) : Bool) || ((_d > (0i64 : stdgo._internal.time.Time_duration.Duration) : Bool) && (_te < _t._ext : Bool) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/time/time.go#L872"
                _t._stripMono();
            } else {
                _t._ext = _te;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L877"
        return _t?.__copy__();
    }
    @:keep
    @:tdfield
    static public function yearDay( _t:stdgo._internal.time.Time_time.Time):stdgo.GoInt {
        @:recv var _t:stdgo._internal.time.Time_time.Time = _t?.__copy__();
        var __tmp__ = _t._date(false), __1:stdgo.GoInt = __tmp__._0, __2:stdgo._internal.time.Time_month.Month = __tmp__._1, __3:stdgo.GoInt = __tmp__._2, _yday:stdgo.GoInt = __tmp__._3;
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L606"
        return (_yday + (1 : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function nanosecond( _t:stdgo._internal.time.Time_time.Time):stdgo.GoInt {
        @:recv var _t:stdgo._internal.time.Time_time.Time = _t?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L599"
        return (_t._nsec() : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function second( _t:stdgo._internal.time.Time_time.Time):stdgo.GoInt {
        @:recv var _t:stdgo._internal.time.Time_time.Time = _t?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L593"
        return ((_t._abs() % (60i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function minute( _t:stdgo._internal.time.Time_time.Time):stdgo.GoInt {
        @:recv var _t:stdgo._internal.time.Time_time.Time = _t?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L588"
        return (((_t._abs() % (3600i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt) / (60 : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function hour( _t:stdgo._internal.time.Time_time.Time):stdgo.GoInt {
        @:recv var _t:stdgo._internal.time.Time_time.Time = _t?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L583"
        return (((_t._abs() % (86400i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt) / (3600 : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function clock( _t:stdgo._internal.time.Time_time.Time):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; } {
        @:recv var _t:stdgo._internal.time.Time_time.Time = _t?.__copy__();
        var _hour = (0 : stdgo.GoInt), _min = (0 : stdgo.GoInt), _sec = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L568"
        return stdgo._internal.time.Time__absclock._absClock(_t._abs());
    }
    @:keep
    @:tdfield
    static public function iSOWeek( _t:stdgo._internal.time.Time_time.Time):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } {
        @:recv var _t:stdgo._internal.time.Time_time.Time = _t?.__copy__();
        var _year = (0 : stdgo.GoInt), _week = (0 : stdgo.GoInt);
        var _abs = @:assignType (_t._abs() : stdgo.GoUInt64);
        var _d = @:assignType ((4 : stdgo._internal.time.Time_weekday.Weekday) - stdgo._internal.time.Time__absweekday._absWeekday(_abs) : stdgo._internal.time.Time_weekday.Weekday);
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L557"
        if (_d == ((4 : stdgo._internal.time.Time_weekday.Weekday))) {
            _d = (-3 : stdgo._internal.time.Time_weekday.Weekday);
        };
        _abs = (_abs + (((_d : stdgo.GoUInt64) * (86400i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        var __tmp__ = stdgo._internal.time.Time__absdate._absDate(_abs, false), _year:stdgo.GoInt = __tmp__._0, __1:stdgo._internal.time.Time_month.Month = __tmp__._1, __2:stdgo.GoInt = __tmp__._2, _yday:stdgo.GoInt = __tmp__._3;
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L563"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } = { _0 : _year, _1 : ((_yday / (7 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) };
            _year = __tmp__._0;
            _week = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function weekday( _t:stdgo._internal.time.Time_time.Time):stdgo._internal.time.Time_weekday.Weekday {
        @:recv var _t:stdgo._internal.time.Time_time.Time = _t?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L529"
        return stdgo._internal.time.Time__absweekday._absWeekday(_t._abs());
    }
    @:keep
    @:tdfield
    static public function day( _t:stdgo._internal.time.Time_time.Time):stdgo.GoInt {
        @:recv var _t:stdgo._internal.time.Time_time.Time = _t?.__copy__();
        var __tmp__ = _t._date(true), __1:stdgo.GoInt = __tmp__._0, __2:stdgo._internal.time.Time_month.Month = __tmp__._1, _day:stdgo.GoInt = __tmp__._2, __3:stdgo.GoInt = __tmp__._3;
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L524"
        return _day;
    }
    @:keep
    @:tdfield
    static public function month( _t:stdgo._internal.time.Time_time.Time):stdgo._internal.time.Time_month.Month {
        @:recv var _t:stdgo._internal.time.Time_time.Time = _t?.__copy__();
        var __tmp__ = _t._date(true), __1:stdgo.GoInt = __tmp__._0, _month:stdgo._internal.time.Time_month.Month = __tmp__._1, __2:stdgo.GoInt = __tmp__._2, __3:stdgo.GoInt = __tmp__._3;
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L518"
        return _month;
    }
    @:keep
    @:tdfield
    static public function year( _t:stdgo._internal.time.Time_time.Time):stdgo.GoInt {
        @:recv var _t:stdgo._internal.time.Time_time.Time = _t?.__copy__();
        var __tmp__ = _t._date(false), _year:stdgo.GoInt = __tmp__._0, __1:stdgo._internal.time.Time_month.Month = __tmp__._1, __2:stdgo.GoInt = __tmp__._2, __3:stdgo.GoInt = __tmp__._3;
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L512"
        return _year;
    }
    @:keep
    @:tdfield
    static public function date( _t:stdgo._internal.time.Time_time.Time):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.time.Time_month.Month; var _2 : stdgo.GoInt; } {
        @:recv var _t:stdgo._internal.time.Time_time.Time = _t?.__copy__();
        var _year = (0 : stdgo.GoInt), _month = ((0 : stdgo.GoInt) : stdgo._internal.time.Time_month.Month), _day = (0 : stdgo.GoInt);
        {
            var __tmp__ = _t._date(true);
            _year = @:tmpset0 __tmp__._0;
            _month = @:tmpset0 __tmp__._1;
            _day = @:tmpset0 __tmp__._2;
        };
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L506"
        return { _0 : _year, _1 : _month, _2 : _day };
    }
    @:keep
    @:tdfield
    static public function _locabs( _t:stdgo._internal.time.Time_time.Time):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoUInt64; } {
        @:recv var _t:stdgo._internal.time.Time_time.Time = _t?.__copy__();
        var _name = ("" : stdgo.GoString), _offset = (0 : stdgo.GoInt), _abs = (0 : stdgo.GoUInt64);
        var _l = _t._loc;
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L483"
        if ((({
            final value = _l;
            (value == null || (value : Dynamic).__nil__);
        }) || (_l == (stdgo.Go.setRef(stdgo._internal.time.Time__localloc._localLoc, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_locationdotlocation.__type__stdgodot_internaldottimedotTime_locationdotLocation })) : stdgo.Ref<stdgo._internal.time.Time_location.Location>)) : Bool)) {
            _l = _l._get();
        };
        var _sec = @:assignType (_t._unixSec() : stdgo.GoInt64);
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L488"
        if (_l != ((stdgo.Go.setRef(stdgo._internal.time.Time__utcloc._utcLoc, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_locationdotlocation.__type__stdgodot_internaldottimedotTime_locationdotLocation })) : stdgo.Ref<stdgo._internal.time.Time_location.Location>))) {
            //"file:///Users/o/.go/go1.21.3/src/time/time.go#L489"
            if (((({
                final value = (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cacheZone;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && ((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cacheStart <= _sec : Bool) : Bool) && (_sec < (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cacheEnd : Bool) : Bool)) {
                _name = (@:checkr (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cacheZone ?? throw stdgo.Error._nullPointerDereference.__underlying__())._name?.__copy__();
                _offset = (@:checkr (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cacheZone ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset;
            } else {
                {
                    var __tmp__ = _l._lookup(_sec);
                    _name = @:tmpset0 __tmp__._0?.__copy__();
                    _offset = @:tmpset0 __tmp__._1;
                };
            };
            _sec = (_sec + ((_offset : stdgo.GoInt64)) : stdgo.GoInt64);
        } else {
            _name = ("UTC" : stdgo.GoString);
        };
        _abs = ((_sec + (9223372028715321600i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L500"
        return { _0 : _name, _1 : _offset, _2 : _abs };
    }
    @:keep
    @:tdfield
    static public function _abs( _t:stdgo._internal.time.Time_time.Time):stdgo.GoUInt64 {
        @:recv var _t:stdgo._internal.time.Time_time.Time = _t?.__copy__();
        var _l = _t._loc;
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L464"
        if ((({
            final value = _l;
            (value == null || (value : Dynamic).__nil__);
        }) || (_l == (stdgo.Go.setRef(stdgo._internal.time.Time__localloc._localLoc, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_locationdotlocation.__type__stdgodot_internaldottimedotTime_locationdotLocation })) : stdgo.Ref<stdgo._internal.time.Time_location.Location>)) : Bool)) {
            _l = _l._get();
        };
        var _sec = @:assignType (_t._unixSec() : stdgo.GoInt64);
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L468"
        if (_l != ((stdgo.Go.setRef(stdgo._internal.time.Time__utcloc._utcLoc, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_locationdotlocation.__type__stdgodot_internaldottimedotTime_locationdotLocation })) : stdgo.Ref<stdgo._internal.time.Time_location.Location>))) {
            //"file:///Users/o/.go/go1.21.3/src/time/time.go#L469"
            if (((({
                final value = (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cacheZone;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && ((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cacheStart <= _sec : Bool) : Bool) && (_sec < (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cacheEnd : Bool) : Bool)) {
                _sec = (_sec + (((@:checkr (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cacheZone ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset : stdgo.GoInt64)) : stdgo.GoInt64);
            } else {
                var __tmp__ = _l._lookup(_sec), __1:stdgo.GoString = __tmp__._0, _offset:stdgo.GoInt = __tmp__._1, __2:stdgo.GoInt64 = __tmp__._2, __3:stdgo.GoInt64 = __tmp__._3, __4:Bool = __tmp__._4;
                _sec = (_sec + ((_offset : stdgo.GoInt64)) : stdgo.GoInt64);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L476"
        return ((_sec + (9223372028715321600i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoUInt64);
    }
    @:keep
    @:tdfield
    static public function isZero( _t:stdgo._internal.time.Time_time.Time):Bool {
        @:recv var _t:stdgo._internal.time.Time_time.Time = _t?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L456"
        return ((_t._sec() == (0i64 : stdgo.GoInt64)) && (_t._nsec() == (0 : stdgo.GoInt32)) : Bool);
    }
    @:keep
    @:tdfield
    static public function equal( _t:stdgo._internal.time.Time_time.Time, _u:stdgo._internal.time.Time_time.Time):Bool {
        @:recv var _t:stdgo._internal.time.Time_time.Time = _t?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L296"
        if (((_t._wall & _u._wall : stdgo.GoUInt64) & (-9223372036854775808i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
            //"file:///Users/o/.go/go1.21.3/src/time/time.go#L297"
            return _t._ext == (_u._ext);
        };
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L299"
        return ((_t._sec() == _u._sec()) && (_t._nsec() == _u._nsec()) : Bool);
    }
    @:keep
    @:tdfield
    static public function compare( _t:stdgo._internal.time.Time_time.Time, _u:stdgo._internal.time.Time_time.Time):stdgo.GoInt {
        @:recv var _t:stdgo._internal.time.Time_time.Time = _t?.__copy__();
        var _tc:stdgo.GoInt64 = (0 : stdgo.GoInt64), _uc:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L273"
        if (((_t._wall & _u._wall : stdgo.GoUInt64) & (-9223372036854775808i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
            {
                final __tmp__0 = _t._ext;
                final __tmp__1 = _u._ext;
                _tc = @:binopAssign __tmp__0;
                _uc = @:binopAssign __tmp__1;
            };
        } else {
            {
                final __tmp__0 = _t._sec();
                final __tmp__1 = _u._sec();
                _tc = @:binopAssign __tmp__0;
                _uc = @:binopAssign __tmp__1;
            };
            //"file:///Users/o/.go/go1.21.3/src/time/time.go#L277"
            if (_tc == (_uc)) {
                {
                    final __tmp__0 = (_t._nsec() : stdgo.GoInt64);
                    final __tmp__1 = (_u._nsec() : stdgo.GoInt64);
                    _tc = @:binopAssign __tmp__0;
                    _uc = @:binopAssign __tmp__1;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L281"
        if ((_tc < _uc : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/time/time.go#L283"
            return (-1 : stdgo.GoInt);
        } else if ((_tc > _uc : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/time/time.go#L285"
            return (1 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L287"
        return (0 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function before( _t:stdgo._internal.time.Time_time.Time, _u:stdgo._internal.time.Time_time.Time):Bool {
        @:recv var _t:stdgo._internal.time.Time_time.Time = _t?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L261"
        if (((_t._wall & _u._wall : stdgo.GoUInt64) & (-9223372036854775808i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
            //"file:///Users/o/.go/go1.21.3/src/time/time.go#L262"
            return (_t._ext < _u._ext : Bool);
        };
        var _ts = @:assignType (_t._sec() : stdgo.GoInt64);
        var _us = @:assignType (_u._sec() : stdgo.GoInt64);
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L266"
        return ((_ts < _us : Bool) || (_ts == (_us) && (_t._nsec() < _u._nsec() : Bool) : Bool) : Bool);
    }
    @:keep
    @:tdfield
    static public function after( _t:stdgo._internal.time.Time_time.Time, _u:stdgo._internal.time.Time_time.Time):Bool {
        @:recv var _t:stdgo._internal.time.Time_time.Time = _t?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L251"
        if (((_t._wall & _u._wall : stdgo.GoUInt64) & (-9223372036854775808i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
            //"file:///Users/o/.go/go1.21.3/src/time/time.go#L252"
            return (_t._ext > _u._ext : Bool);
        };
        var _ts = @:assignType (_t._sec() : stdgo.GoInt64);
        var _us = @:assignType (_u._sec() : stdgo.GoInt64);
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L256"
        return ((_ts > _us : Bool) || (_ts == (_us) && (_t._nsec() > _u._nsec() : Bool) : Bool) : Bool);
    }
    @:keep
    @:tdfield
    static public function _mono( _t:stdgo.Ref<stdgo._internal.time.Time_time.Time>):stdgo.GoInt64 {
        @:recv var _t:stdgo.Ref<stdgo._internal.time.Time_time.Time> = _t;
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L243"
        if (((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wall & (-9223372036854775808i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == ((0i64 : stdgo.GoUInt64))) {
            //"file:///Users/o/.go/go1.21.3/src/time/time.go#L244"
            return (0i64 : stdgo.GoInt64);
        };
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L246"
        return (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ext;
    }
    @:keep
    @:tdfield
    static public function _setMono( _t:stdgo.Ref<stdgo._internal.time.Time_time.Time>, _m:stdgo.GoInt64):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.time.Time_time.Time> = _t;
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L227"
        if (((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wall & (-9223372036854775808i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == ((0i64 : stdgo.GoUInt64))) {
            var _sec = @:assignType ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ext : stdgo.GoInt64);
            //"file:///Users/o/.go/go1.21.3/src/time/time.go#L229"
            if (((_sec < (59453308800i64 : stdgo.GoInt64) : Bool) || ((68043243391i64 : stdgo.GoInt64) < _sec : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/time/time.go#L230"
                return;
            };
            (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wall = ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wall | (((-9223372036854775808i64 : stdgo.GoUInt64) | (((_sec - (59453308800i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoUInt64) << (30i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ext = _m;
    }
    @:keep
    @:tdfield
    static public function _stripMono( _t:stdgo.Ref<stdgo._internal.time.Time_time.Time>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.time.Time_time.Time> = _t;
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L216"
        if (((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wall & (-9223372036854775808i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
            (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ext = _t._sec();
            (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wall = ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wall & ((1073741823i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
    }
    @:keep
    @:tdfield
    static public function _setLoc( _t:stdgo.Ref<stdgo._internal.time.Time_time.Time>, _loc:stdgo.Ref<stdgo._internal.time.Time_location.Location>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.time.Time_time.Time> = _t;
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L207"
        if (_loc == ((stdgo.Go.setRef(stdgo._internal.time.Time__utcloc._utcLoc, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_locationdotlocation.__type__stdgodot_internaldottimedotTime_locationdotLocation })) : stdgo.Ref<stdgo._internal.time.Time_location.Location>))) {
            _loc = null;
        };
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L210"
        _t._stripMono();
        (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._loc = _loc;
    }
    @:keep
    @:tdfield
    static public function _addSec( _t:stdgo.Ref<stdgo._internal.time.Time_time.Time>, _d:stdgo.GoInt64):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.time.Time_time.Time> = _t;
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L182"
        if (((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wall & (-9223372036854775808i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
            var _sec = @:assignType ((((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wall << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >> (31i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt64);
            var _dsec = @:assignType (_sec + _d : stdgo.GoInt64);
            //"file:///Users/o/.go/go1.21.3/src/time/time.go#L185"
            if ((((0i64 : stdgo.GoInt64) <= _dsec : Bool) && (_dsec <= (8589934591i64 : stdgo.GoInt64) : Bool) : Bool)) {
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wall = ((((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wall & (1073741823i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_dsec : stdgo.GoUInt64) << (30i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | (-9223372036854775808i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                //"file:///Users/o/.go/go1.21.3/src/time/time.go#L187"
                return;
            };
            //"file:///Users/o/.go/go1.21.3/src/time/time.go#L191"
            _t._stripMono();
        };
        var _sum = @:assignType ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ext + _d : stdgo.GoInt64);
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L196"
        if (((_sum > (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ext : Bool)) == ((_d > (0i64 : stdgo.GoInt64) : Bool))) {
            (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ext = _sum;
        } else if ((_d > (0i64 : stdgo.GoInt64) : Bool)) {
            (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ext = (9223372036854775807i64 : stdgo.GoInt64);
        } else {
            (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ext = (-9223372036854775807i64 : stdgo.GoInt64);
        };
    }
    @:keep
    @:tdfield
    static public function _unixSec( _t:stdgo.Ref<stdgo._internal.time.Time_time.Time>):stdgo.GoInt64 {
        @:recv var _t:stdgo.Ref<stdgo._internal.time.Time_time.Time> = _t;
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L178"
        return (_t._sec() + (-62135596800i64 : stdgo.GoInt64) : stdgo.GoInt64);
    }
    @:keep
    @:tdfield
    static public function _sec( _t:stdgo.Ref<stdgo._internal.time.Time_time.Time>):stdgo.GoInt64 {
        @:recv var _t:stdgo.Ref<stdgo._internal.time.Time_time.Time> = _t;
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L171"
        if (((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wall & (-9223372036854775808i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
            //"file:///Users/o/.go/go1.21.3/src/time/time.go#L172"
            return ((59453308800i64 : stdgo.GoInt64) + ((((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wall << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >> (31i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoInt64);
        };
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L174"
        return (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ext;
    }
    @:keep
    @:tdfield
    static public function _nsec( _t:stdgo.Ref<stdgo._internal.time.Time_time.Time>):stdgo.GoInt32 {
        @:recv var _t:stdgo.Ref<stdgo._internal.time.Time_time.Time> = _t;
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L166"
        return (((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wall & (1073741823i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt32);
    }
    @:keep
    @:tdfield
    static public function _appendStrictRFC3339( _t:stdgo._internal.time.Time_time.Time, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo._internal.time.Time_time.Time = _t?.__copy__();
        var _n0 = @:assignType (_b.length : stdgo.GoInt);
        _b = _t._appendFormatRFC3339(_b, true);
        var _num2 = function(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt8 {
            //"file:///Users/o/.go/go1.21.3/src/time/format_rfc3339.go#L69"
            return (((10 : stdgo.GoUInt8) * ((_b[(0 : stdgo.GoInt)] - (48 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt8) + ((_b[(1 : stdgo.GoInt)] - (48 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt8);
        };
        //"file:///Users/o/.go/go1.21.3/src/time/format_rfc3339.go#L70"
        if (_b[(_n0 + ((("9999" : stdgo.GoString) : stdgo.GoString).length) : stdgo.GoInt)] != ((45 : stdgo.GoUInt8))) {
            //"file:///Users/o/.go/go1.21.3/src/time/format_rfc3339.go#L72"
            return { _0 : _b, _1 : stdgo._internal.errors.Errors_new_.new_(("year outside of range [0,9999]" : stdgo.GoString)) };
        } else if (_b[((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] != ((90 : stdgo.GoUInt8))) {
            var _c = @:assignType (_b[((_b.length) - ((("Z07:00" : stdgo.GoString) : stdgo.GoString).length) : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/time/format_rfc3339.go#L75"
            if ((((((48 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (57 : stdgo.GoUInt8) : Bool) : Bool)) || (_num2((_b.__slice__(((_b.length) - ((("07:00" : stdgo.GoString) : stdgo.GoString).length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) >= (24 : stdgo.GoUInt8) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/time/format_rfc3339.go#L76"
                return { _0 : _b, _1 : stdgo._internal.errors.Errors_new_.new_(("timezone hour outside of range [0,23]" : stdgo.GoString)) };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/time/format_rfc3339.go#L79"
        return { _0 : _b, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _appendFormatRFC3339( _t:stdgo._internal.time.Time_time.Time, _b:stdgo.Slice<stdgo.GoUInt8>, _nanos:Bool):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _t:stdgo._internal.time.Time_time.Time = _t?.__copy__();
        var __tmp__ = _t._locabs(), __1:stdgo.GoString = __tmp__._0, _offset:stdgo.GoInt = __tmp__._1, _abs:stdgo.GoUInt64 = __tmp__._2;
        var __tmp__ = stdgo._internal.time.Time__absdate._absDate(_abs, true), _year:stdgo.GoInt = __tmp__._0, _month:stdgo._internal.time.Time_month.Month = __tmp__._1, _day:stdgo.GoInt = __tmp__._2, __2:stdgo.GoInt = __tmp__._3;
        _b = stdgo._internal.time.Time__appendint._appendInt(_b, _year, (4 : stdgo.GoInt));
        _b = (_b.__append__((45 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        _b = stdgo._internal.time.Time__appendint._appendInt(_b, (_month : stdgo.GoInt), (2 : stdgo.GoInt));
        _b = (_b.__append__((45 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        _b = stdgo._internal.time.Time__appendint._appendInt(_b, _day, (2 : stdgo.GoInt));
        _b = (_b.__append__((84 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = stdgo._internal.time.Time__absclock._absClock(_abs), _hour:stdgo.GoInt = __tmp__._0, _min:stdgo.GoInt = __tmp__._1, _sec:stdgo.GoInt = __tmp__._2;
        _b = stdgo._internal.time.Time__appendint._appendInt(_b, _hour, (2 : stdgo.GoInt));
        _b = (_b.__append__((58 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        _b = stdgo._internal.time.Time__appendint._appendInt(_b, _min, (2 : stdgo.GoInt));
        _b = (_b.__append__((58 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        _b = stdgo._internal.time.Time__appendint._appendInt(_b, _sec, (2 : stdgo.GoInt));
        //"file:///Users/o/.go/go1.21.3/src/time/format_rfc3339.go#L39"
        if (_nanos) {
            var _std = @:assignType (stdgo._internal.time.Time__stdfracsecond._stdFracSecond((35 : stdgo.GoInt), (9 : stdgo.GoInt), (46 : stdgo.GoInt)) : stdgo.GoInt);
            _b = stdgo._internal.time.Time__appendnano._appendNano(_b, _t.nanosecond(), _std);
        };
        //"file:///Users/o/.go/go1.21.3/src/time/format_rfc3339.go#L44"
        if (_offset == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/time/format_rfc3339.go#L45"
            return (_b.__append__((90 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _zone = @:assignType (_offset / (60 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/time/format_rfc3339.go#L50"
        if ((_zone < (0 : stdgo.GoInt) : Bool)) {
            _b = (_b.__append__((45 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
            _zone = -_zone;
        } else {
            _b = (_b.__append__((43 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        _b = stdgo._internal.time.Time__appendint._appendInt(_b, (_zone / (60 : stdgo.GoInt) : stdgo.GoInt), (2 : stdgo.GoInt));
        _b = (_b.__append__((58 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        _b = stdgo._internal.time.Time__appendint._appendInt(_b, (_zone % (60 : stdgo.GoInt) : stdgo.GoInt), (2 : stdgo.GoInt));
        //"file:///Users/o/.go/go1.21.3/src/time/format_rfc3339.go#L59"
        return _b;
    }
    @:keep
    @:tdfield
    static public function _appendFormat( _t:stdgo._internal.time.Time_time.Time, _b:stdgo.Slice<stdgo.GoUInt8>, _layout:stdgo.GoString):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _t:stdgo._internal.time.Time_time.Time = _t?.__copy__();
        var __tmp__ = _t._locabs(), _name:stdgo.GoString = __tmp__._0, _offset:stdgo.GoInt = __tmp__._1, _abs:stdgo.GoUInt64 = __tmp__._2;
var _year:stdgo.GoInt = (-1 : stdgo.GoInt), _month:stdgo._internal.time.Time_month.Month = ((0 : stdgo.GoInt) : stdgo._internal.time.Time_month.Month), _day:stdgo.GoInt = (0 : stdgo.GoInt), _yday:stdgo.GoInt = (0 : stdgo.GoInt), _hour:stdgo.GoInt = (-1 : stdgo.GoInt), _min:stdgo.GoInt = (0 : stdgo.GoInt), _sec:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L662"
        while (_layout != ((stdgo.Go.str() : stdgo.GoString))) {
            var __tmp__ = stdgo._internal.time.Time__nextstdchunk._nextStdChunk(_layout?.__copy__()), _prefix:stdgo.GoString = __tmp__._0, _std:stdgo.GoInt = __tmp__._1, _suffix:stdgo.GoString = __tmp__._2;
            //"file:///Users/o/.go/go1.21.3/src/time/format.go#L664"
            if (_prefix != ((stdgo.Go.str() : stdgo.GoString))) {
                _b = (_b.__append__(...(_prefix : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
            };
            //"file:///Users/o/.go/go1.21.3/src/time/format.go#L667"
            if (_std == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/time/format.go#L668"
                break;
            };
            _layout = _suffix?.__copy__();
            //"file:///Users/o/.go/go1.21.3/src/time/format.go#L673"
            if (((_year < (0 : stdgo.GoInt) : Bool) && ((_std & (256 : stdgo.GoInt) : stdgo.GoInt) != (0 : stdgo.GoInt)) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.time.Time__absdate._absDate(_abs, true);
                    _year = @:tmpset0 __tmp__._0;
                    _month = @:tmpset0 __tmp__._1;
                    _day = @:tmpset0 __tmp__._2;
                    _yday = @:tmpset0 __tmp__._3;
                };
                //"file:///Users/o/.go/go1.21.3/src/time/format.go#L675"
                _yday++;
            };
            //"file:///Users/o/.go/go1.21.3/src/time/format.go#L679"
            if (((_hour < (0 : stdgo.GoInt) : Bool) && ((_std & (512 : stdgo.GoInt) : stdgo.GoInt) != (0 : stdgo.GoInt)) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.time.Time__absclock._absClock(_abs);
                    _hour = @:tmpset0 __tmp__._0;
                    _min = @:tmpset0 __tmp__._1;
                    _sec = @:tmpset0 __tmp__._2;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/time/format.go#L683"
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = (_std & (65535 : stdgo.GoInt) : stdgo.GoInt);
                        if (__value__ == ((276 : stdgo.GoInt))) {
                            var _y = @:assignType (_year : stdgo.GoInt);
                            //"file:///Users/o/.go/go1.21.3/src/time/format.go#L686"
                            if ((_y < (0 : stdgo.GoInt) : Bool)) {
                                _y = -_y;
                            };
                            _b = stdgo._internal.time.Time__appendint._appendInt(_b, (_y % (100 : stdgo.GoInt) : stdgo.GoInt), (2 : stdgo.GoInt));
                            break;
                        } else if (__value__ == ((275 : stdgo.GoInt))) {
                            _b = stdgo._internal.time.Time__appendint._appendInt(_b, _year, (4 : stdgo.GoInt));
                            break;
                        } else if (__value__ == ((258 : stdgo.GoInt))) {
                            _b = (_b.__append__(...(((_month.string() : stdgo.GoString).__slice__(0, (3 : stdgo.GoInt)) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                            break;
                        } else if (__value__ == ((257 : stdgo.GoInt))) {
                            var _m = @:assignType ((_month.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                            _b = (_b.__append__(...(_m : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                            break;
                        } else if (__value__ == ((259 : stdgo.GoInt))) {
                            _b = stdgo._internal.time.Time__appendint._appendInt(_b, (_month : stdgo.GoInt), (0 : stdgo.GoInt));
                            break;
                        } else if (__value__ == ((260 : stdgo.GoInt))) {
                            _b = stdgo._internal.time.Time__appendint._appendInt(_b, (_month : stdgo.GoInt), (2 : stdgo.GoInt));
                            break;
                        } else if (__value__ == ((262 : stdgo.GoInt))) {
                            _b = (_b.__append__(...(((stdgo._internal.time.Time__absweekday._absWeekday(_abs).string() : stdgo.GoString).__slice__(0, (3 : stdgo.GoInt)) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                            break;
                        } else if (__value__ == ((261 : stdgo.GoInt))) {
                            var _s = @:assignType ((stdgo._internal.time.Time__absweekday._absWeekday(_abs).string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                            _b = (_b.__append__(...(_s : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                            break;
                        } else if (__value__ == ((263 : stdgo.GoInt))) {
                            _b = stdgo._internal.time.Time__appendint._appendInt(_b, _day, (0 : stdgo.GoInt));
                            break;
                        } else if (__value__ == ((264 : stdgo.GoInt))) {
                            //"file:///Users/o/.go/go1.21.3/src/time/format.go#L709"
                            if ((_day < (10 : stdgo.GoInt) : Bool)) {
                                _b = (_b.__append__((32 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                            };
                            _b = stdgo._internal.time.Time__appendint._appendInt(_b, _day, (0 : stdgo.GoInt));
                            break;
                        } else if (__value__ == ((265 : stdgo.GoInt))) {
                            _b = stdgo._internal.time.Time__appendint._appendInt(_b, _day, (2 : stdgo.GoInt));
                            break;
                        } else if (__value__ == ((266 : stdgo.GoInt))) {
                            //"file:///Users/o/.go/go1.21.3/src/time/format.go#L716"
                            if ((_yday < (100 : stdgo.GoInt) : Bool)) {
                                _b = (_b.__append__((32 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                                //"file:///Users/o/.go/go1.21.3/src/time/format.go#L718"
                                if ((_yday < (10 : stdgo.GoInt) : Bool)) {
                                    _b = (_b.__append__((32 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                                };
                            };
                            _b = stdgo._internal.time.Time__appendint._appendInt(_b, _yday, (0 : stdgo.GoInt));
                            break;
                        } else if (__value__ == ((267 : stdgo.GoInt))) {
                            _b = stdgo._internal.time.Time__appendint._appendInt(_b, _yday, (3 : stdgo.GoInt));
                            break;
                        } else if (__value__ == ((524 : stdgo.GoInt))) {
                            _b = stdgo._internal.time.Time__appendint._appendInt(_b, _hour, (2 : stdgo.GoInt));
                            break;
                        } else if (__value__ == ((525 : stdgo.GoInt))) {
                            var _hr = @:assignType (_hour % (12 : stdgo.GoInt) : stdgo.GoInt);
                            //"file:///Users/o/.go/go1.21.3/src/time/format.go#L730"
                            if (_hr == ((0 : stdgo.GoInt))) {
                                _hr = (12 : stdgo.GoInt);
                            };
                            _b = stdgo._internal.time.Time__appendint._appendInt(_b, _hr, (0 : stdgo.GoInt));
                            break;
                        } else if (__value__ == ((526 : stdgo.GoInt))) {
                            var _hr = @:assignType (_hour % (12 : stdgo.GoInt) : stdgo.GoInt);
                            //"file:///Users/o/.go/go1.21.3/src/time/format.go#L737"
                            if (_hr == ((0 : stdgo.GoInt))) {
                                _hr = (12 : stdgo.GoInt);
                            };
                            _b = stdgo._internal.time.Time__appendint._appendInt(_b, _hr, (2 : stdgo.GoInt));
                            break;
                        } else if (__value__ == ((527 : stdgo.GoInt))) {
                            _b = stdgo._internal.time.Time__appendint._appendInt(_b, _min, (0 : stdgo.GoInt));
                            break;
                        } else if (__value__ == ((528 : stdgo.GoInt))) {
                            _b = stdgo._internal.time.Time__appendint._appendInt(_b, _min, (2 : stdgo.GoInt));
                            break;
                        } else if (__value__ == ((529 : stdgo.GoInt))) {
                            _b = stdgo._internal.time.Time__appendint._appendInt(_b, _sec, (0 : stdgo.GoInt));
                            break;
                        } else if (__value__ == ((530 : stdgo.GoInt))) {
                            _b = stdgo._internal.time.Time__appendint._appendInt(_b, _sec, (2 : stdgo.GoInt));
                            break;
                        } else if (__value__ == ((533 : stdgo.GoInt))) {
                            //"file:///Users/o/.go/go1.21.3/src/time/format.go#L750"
                            if ((_hour >= (12 : stdgo.GoInt) : Bool)) {
                                _b = (_b.__append__(...((("PM" : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                            } else {
                                _b = (_b.__append__(...((("AM" : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                            };
                            break;
                        } else if (__value__ == ((534 : stdgo.GoInt))) {
                            //"file:///Users/o/.go/go1.21.3/src/time/format.go#L756"
                            if ((_hour >= (12 : stdgo.GoInt) : Bool)) {
                                _b = (_b.__append__(...((("pm" : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                            } else {
                                _b = (_b.__append__(...((("am" : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                            };
                            break;
                        } else if (__value__ == ((24 : stdgo.GoInt)) || __value__ == ((27 : stdgo.GoInt)) || __value__ == ((25 : stdgo.GoInt)) || __value__ == ((26 : stdgo.GoInt)) || __value__ == ((28 : stdgo.GoInt)) || __value__ == ((29 : stdgo.GoInt)) || __value__ == ((32 : stdgo.GoInt)) || __value__ == ((30 : stdgo.GoInt)) || __value__ == ((31 : stdgo.GoInt)) || __value__ == ((33 : stdgo.GoInt))) {
                            //"file:///Users/o/.go/go1.21.3/src/time/format.go#L764"
                            if (((_offset == (0 : stdgo.GoInt)) && (((((_std == ((24 : stdgo.GoInt)) || _std == ((27 : stdgo.GoInt)) : Bool) || _std == ((25 : stdgo.GoInt)) : Bool) || _std == ((26 : stdgo.GoInt)) : Bool) || (_std == (28 : stdgo.GoInt)) : Bool)) : Bool)) {
                                _b = (_b.__append__((90 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                                //"file:///Users/o/.go/go1.21.3/src/time/format.go#L766"
                                break;
                            };
                            var _zone = @:assignType (_offset / (60 : stdgo.GoInt) : stdgo.GoInt);
                            var _absoffset = @:assignType (_offset : stdgo.GoInt);
                            //"file:///Users/o/.go/go1.21.3/src/time/format.go#L770"
                            if ((_zone < (0 : stdgo.GoInt) : Bool)) {
                                _b = (_b.__append__((45 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                                _zone = -_zone;
                                _absoffset = -_absoffset;
                            } else {
                                _b = (_b.__append__((43 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                            };
                            _b = stdgo._internal.time.Time__appendint._appendInt(_b, (_zone / (60 : stdgo.GoInt) : stdgo.GoInt), (2 : stdgo.GoInt));
                            //"file:///Users/o/.go/go1.21.3/src/time/format.go#L778"
                            if ((((_std == ((27 : stdgo.GoInt)) || _std == ((32 : stdgo.GoInt)) : Bool) || _std == ((28 : stdgo.GoInt)) : Bool) || (_std == (33 : stdgo.GoInt)) : Bool)) {
                                _b = (_b.__append__((58 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                            };
                            //"file:///Users/o/.go/go1.21.3/src/time/format.go#L781"
                            if (((_std != (31 : stdgo.GoInt)) && (_std != (26 : stdgo.GoInt)) : Bool)) {
                                _b = stdgo._internal.time.Time__appendint._appendInt(_b, (_zone % (60 : stdgo.GoInt) : stdgo.GoInt), (2 : stdgo.GoInt));
                            };
                            //"file:///Users/o/.go/go1.21.3/src/time/format.go#L786"
                            if ((((_std == ((25 : stdgo.GoInt)) || _std == ((30 : stdgo.GoInt)) : Bool) || _std == ((33 : stdgo.GoInt)) : Bool) || (_std == (28 : stdgo.GoInt)) : Bool)) {
                                //"file:///Users/o/.go/go1.21.3/src/time/format.go#L787"
                                if (((_std == (33 : stdgo.GoInt)) || (_std == (28 : stdgo.GoInt)) : Bool)) {
                                    _b = (_b.__append__((58 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                                };
                                _b = stdgo._internal.time.Time__appendint._appendInt(_b, (_absoffset % (60 : stdgo.GoInt) : stdgo.GoInt), (2 : stdgo.GoInt));
                            };
                            break;
                        } else if (__value__ == ((23 : stdgo.GoInt))) {
                            //"file:///Users/o/.go/go1.21.3/src/time/format.go#L794"
                            if (_name != ((stdgo.Go.str() : stdgo.GoString))) {
                                _b = (_b.__append__(...(_name : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                                //"file:///Users/o/.go/go1.21.3/src/time/format.go#L796"
                                break;
                            };
                            var _zone = @:assignType (_offset / (60 : stdgo.GoInt) : stdgo.GoInt);
                            //"file:///Users/o/.go/go1.21.3/src/time/format.go#L801"
                            if ((_zone < (0 : stdgo.GoInt) : Bool)) {
                                _b = (_b.__append__((45 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                                _zone = -_zone;
                            } else {
                                _b = (_b.__append__((43 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                            };
                            _b = stdgo._internal.time.Time__appendint._appendInt(_b, (_zone / (60 : stdgo.GoInt) : stdgo.GoInt), (2 : stdgo.GoInt));
                            _b = stdgo._internal.time.Time__appendint._appendInt(_b, (_zone % (60 : stdgo.GoInt) : stdgo.GoInt), (2 : stdgo.GoInt));
                            break;
                        } else if (__value__ == ((34 : stdgo.GoInt)) || __value__ == ((35 : stdgo.GoInt))) {
                            _b = stdgo._internal.time.Time__appendnano._appendNano(_b, _t.nanosecond(), _std);
                            break;
                        };
                    };
                    break;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L813"
        return _b;
    }
    @:keep
    @:tdfield
    static public function appendFormat( _t:stdgo._internal.time.Time_time.Time, _b:stdgo.Slice<stdgo.GoUInt8>, _layout:stdgo.GoString):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _t:stdgo._internal.time.Time_time.Time = _t?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L638"
        {
            final __value__ = _layout;
            if (__value__ == (("2006-01-02T15:04:05Z07:00" : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/time/format.go#L640"
                return _t._appendFormatRFC3339(_b, false);
            } else if (__value__ == (("2006-01-02T15:04:05.999999999Z07:00" : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/time/format.go#L642"
                return _t._appendFormatRFC3339(_b, true);
            } else {
                //"file:///Users/o/.go/go1.21.3/src/time/format.go#L644"
                return _t._appendFormat(_b, _layout?.__copy__());
            };
        };
    }
    @:keep
    @:tdfield
    static public function format( _t:stdgo._internal.time.Time_time.Time, _layout:stdgo.GoString):stdgo.GoString {
        @:recv var _t:stdgo._internal.time.Time_time.Time = _t?.__copy__();
        {};
        var _b:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _max = @:assignType ((_layout.length) + (10 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L624"
        if ((_max < (64 : stdgo.GoInt) : Bool)) {
            var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(64, 64).__setNumber32__();
            _b = (_buf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        } else {
            _b = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), _max).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        _b = _t.appendFormat(_b, _layout?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L631"
        return (_b : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function goString( _t:stdgo._internal.time.Time_time.Time):stdgo.GoString {
        @:recv var _t:stdgo._internal.time.Time_time.Time = _t?.__copy__();
        var _abs = @:assignType (_t._abs() : stdgo.GoUInt64);
        var __tmp__ = stdgo._internal.time.Time__absdate._absDate(_abs, true), _year:stdgo.GoInt = __tmp__._0, _month:stdgo._internal.time.Time_month.Month = __tmp__._1, _day:stdgo.GoInt = __tmp__._2, __1:stdgo.GoInt = __tmp__._3;
        var __tmp__ = stdgo._internal.time.Time__absclock._absClock(_abs), _hour:stdgo.GoInt = __tmp__._0, _minute:stdgo.GoInt = __tmp__._1, _second:stdgo.GoInt = __tmp__._2;
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((("time.Date(9999, time.September, 31, 23, 59, 59, 999999999, time.Local)" : stdgo.GoString) : stdgo.GoString).length)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _buf = (_buf.__append__(...((("time.Date(" : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        _buf = stdgo._internal.time.Time__appendint._appendInt(_buf, _year, (0 : stdgo.GoInt));
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L566"
        if ((((1 : stdgo._internal.time.Time_month.Month) <= _month : Bool) && (_month <= (12 : stdgo._internal.time.Time_month.Month) : Bool) : Bool)) {
            _buf = (_buf.__append__(...(((", time." : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
            _buf = (_buf.__append__(...(stdgo._internal.time.Time__longmonthnames._longMonthNames[((_month - (1 : stdgo._internal.time.Time_month.Month) : stdgo._internal.time.Time_month.Month) : stdgo.GoInt)] : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        } else {
            _buf = stdgo._internal.time.Time__appendint._appendInt(_buf, (_month : stdgo.GoInt), (0 : stdgo.GoInt));
        };
        _buf = (_buf.__append__(...(((", " : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        _buf = stdgo._internal.time.Time__appendint._appendInt(_buf, _day, (0 : stdgo.GoInt));
        _buf = (_buf.__append__(...(((", " : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        _buf = stdgo._internal.time.Time__appendint._appendInt(_buf, _hour, (0 : stdgo.GoInt));
        _buf = (_buf.__append__(...(((", " : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        _buf = stdgo._internal.time.Time__appendint._appendInt(_buf, _minute, (0 : stdgo.GoInt));
        _buf = (_buf.__append__(...(((", " : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        _buf = stdgo._internal.time.Time__appendint._appendInt(_buf, _second, (0 : stdgo.GoInt));
        _buf = (_buf.__append__(...(((", " : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        _buf = stdgo._internal.time.Time__appendint._appendInt(_buf, _t.nanosecond(), (0 : stdgo.GoInt));
        _buf = (_buf.__append__(...(((", " : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L585"
        {
            var _loc = _t.location();
            {
                final __value__ = _loc;
                if (__value__ == (stdgo._internal.time.Time_utc.uTC) || ({
                    final value = __value__;
                    (value == null || (value : Dynamic).__nil__);
                })) {
                    _buf = (_buf.__append__(...((("time.UTC" : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                } else if (__value__ == (stdgo._internal.time.Time_local.local)) {
                    _buf = (_buf.__append__(...((("time.Local" : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                } else {
                    _buf = (_buf.__append__(...((("time.Location(" : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                    _buf = (_buf.__append__(...(stdgo._internal.time.Time__quote._quote((@:checkr _loc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._name?.__copy__()) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                    _buf = (_buf.__append__((41 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                };
            };
        };
        _buf = (_buf.__append__((41 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L611"
        return (_buf : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _t:stdgo._internal.time.Time_time.Time):stdgo.GoString {
        @:recv var _t:stdgo._internal.time.Time_time.Time = _t?.__copy__();
        var _s = @:assignType (_t.format(("2006-01-02 15:04:05.999999999 -0700 MST" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L531"
        if ((_t._wall & (-9223372036854775808i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
            var _m2 = @:assignType (_t._ext : stdgo.GoUInt64);
            var _sign = @:assignType ((43 : stdgo.GoUInt8) : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/time/format.go#L534"
            if ((_t._ext < (0i64 : stdgo.GoInt64) : Bool)) {
                _sign = (45 : stdgo.GoUInt8);
                _m2 = -_m2;
            };
            var __0 = @:assignType (_m2 / (1000000000i64 : stdgo.GoUInt64) : stdgo.GoUInt64), __1 = @:assignType (_m2 % (1000000000i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
var _m2 = __1, _m1 = __0;
            var __0 = @:assignType (_m1 / (1000000000i64 : stdgo.GoUInt64) : stdgo.GoUInt64), __1 = @:assignType (_m1 % (1000000000i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
var _m1 = __1, _m0 = __0;
            var _buf = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (24 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            _buf = (_buf.__append__(...(((" m=" : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
            _buf = (_buf.__append__(_sign) : stdgo.Slice<stdgo.GoUInt8>);
            var _wid = @:assignType (0 : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/time/format.go#L544"
            if (_m0 != ((0i64 : stdgo.GoUInt64))) {
                _buf = stdgo._internal.time.Time__appendint._appendInt(_buf, (_m0 : stdgo.GoInt), (0 : stdgo.GoInt));
                _wid = (9 : stdgo.GoInt);
            };
            _buf = stdgo._internal.time.Time__appendint._appendInt(_buf, (_m1 : stdgo.GoInt), _wid);
            _buf = (_buf.__append__((46 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
            _buf = stdgo._internal.time.Time__appendint._appendInt(_buf, (_m2 : stdgo.GoInt), (9 : stdgo.GoInt));
            _s = (_s + ((_buf : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L553"
        return _s?.__copy__();
    }
}

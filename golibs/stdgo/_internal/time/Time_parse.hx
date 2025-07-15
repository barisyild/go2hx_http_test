package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
function parse(_layout:stdgo.GoString, _value:stdgo.GoString):{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L1009"
        if (((_layout == ("2006-01-02T15:04:05Z07:00" : stdgo.GoString)) || (_layout == ("2006-01-02T15:04:05.999999999Z07:00" : stdgo.GoString)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/time/format.go#L1010"
            {
                var __tmp__ = (stdgo._internal.time.Time__parserfc3339._parseRFC3339(_value?.__copy__(), stdgo._internal.time.Time_local.local) : { var _0 : stdgo._internal.time.Time_time.Time; var _1 : Bool; }), _t:stdgo._internal.time.Time_time.Time = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    //"file:///Users/o/.go/go1.21.3/src/time/format.go#L1011"
                    return { _0 : _t?.__copy__(), _1 : (null : stdgo.Error) };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L1014"
        return stdgo._internal.time.Time__parse._parse(_layout?.__copy__(), _value?.__copy__(), stdgo._internal.time.Time_utc.uTC, stdgo._internal.time.Time_local.local);
    }

package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
function since(_t:stdgo._internal.time.Time_time.Time):stdgo._internal.time.Time_duration.Duration {
        var _now:stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L913"
        if ((_t._wall & (-9223372036854775808i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
            _now = (new stdgo._internal.time.Time_time.Time((-9223372036854775808i64 : stdgo.GoUInt64), (stdgo._internal.time.Time__runtimenano._runtimeNano() - stdgo._internal.time.Time__startnano._startNano : stdgo.GoInt64), null) : stdgo._internal.time.Time_time.Time);
        } else {
            _now = stdgo._internal.time.Time_now.now()?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L919"
        return _now.sub(_t?.__copy__());
    }

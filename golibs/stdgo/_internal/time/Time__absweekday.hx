package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
function _absWeekday(_abs:stdgo.GoUInt64):stdgo._internal.time.Time_weekday.Weekday {
        var _sec = @:assignType (((_abs + (86400i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) % (604800i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L536"
        return (((_sec : stdgo.GoInt) / (86400 : stdgo.GoInt) : stdgo.GoInt) : stdgo._internal.time.Time_weekday.Weekday);
    }

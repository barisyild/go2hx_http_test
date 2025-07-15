package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
function unixMilli(_msec:stdgo.GoInt64):stdgo._internal.time.Time_time.Time {
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1412"
        return stdgo._internal.time.Time_unix.unix((_msec / (1000i64 : stdgo.GoInt64) : stdgo.GoInt64), (((_msec % (1000i64 : stdgo.GoInt64) : stdgo.GoInt64)) * (1000000i64 : stdgo.GoInt64) : stdgo.GoInt64))?.__copy__();
    }

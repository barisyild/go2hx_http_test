package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
function _unixTime(_sec:stdgo.GoInt64, _nsec:stdgo.GoInt32):stdgo._internal.time.Time_time.Time {
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1124"
        return (new stdgo._internal.time.Time_time.Time((_nsec : stdgo.GoUInt64), (_sec + (62135596800i64 : stdgo.GoInt64) : stdgo.GoInt64), stdgo._internal.time.Time_local.local) : stdgo._internal.time.Time_time.Time);
    }

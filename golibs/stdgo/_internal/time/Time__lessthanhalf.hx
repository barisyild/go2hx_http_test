package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
function _lessThanHalf(_x:stdgo._internal.time.Time_duration.Duration, _y:stdgo._internal.time.Time_duration.Duration):Bool {
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L809"
        return (((_x : stdgo.GoUInt64) + (_x : stdgo.GoUInt64) : stdgo.GoUInt64) < (_y : stdgo.GoUInt64) : Bool);
    }

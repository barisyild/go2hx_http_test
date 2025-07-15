package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
function after(_d:stdgo._internal.time.Time_duration.Duration):stdgo.Chan<stdgo._internal.time.Time_time.Time> {
        //"file:///Users/o/.go/go1.21.3/src/time/sleep.go#L157"
        return stdgo._internal.time.Time_newtimer.newTimer(_d).c;
    }

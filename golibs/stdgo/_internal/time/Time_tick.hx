package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
function tick(_d:stdgo._internal.time.Time_duration.Duration):stdgo.Chan<stdgo._internal.time.Time_time.Time> {
        //"file:///Users/o/.go/go1.21.3/src/time/tick.go#L67"
        if ((_d <= (0i64 : stdgo._internal.time.Time_duration.Duration) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/time/tick.go#L68"
            return (null : stdgo.Chan<stdgo._internal.time.Time_time.Time>);
        };
        //"file:///Users/o/.go/go1.21.3/src/time/tick.go#L70"
        return stdgo._internal.time.Time_newticker.newTicker(_d).c;
    }

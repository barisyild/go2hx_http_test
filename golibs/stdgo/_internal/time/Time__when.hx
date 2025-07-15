package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
function _when(_d:stdgo._internal.time.Time_duration.Duration):stdgo.GoInt64 {
        //"file:///Users/o/.go/go1.21.3/src/time/sleep.go#L29"
        if ((_d <= (0i64 : stdgo._internal.time.Time_duration.Duration) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/time/sleep.go#L30"
            return stdgo._internal.time.Time__runtimenano._runtimeNano();
        };
        var _t = @:assignType (stdgo._internal.time.Time__runtimenano._runtimeNano() + (_d : stdgo.GoInt64) : stdgo.GoInt64);
        //"file:///Users/o/.go/go1.21.3/src/time/sleep.go#L33"
        if ((_t < (0i64 : stdgo.GoInt64) : Bool)) {
            _t = (9223372036854775807i64 : stdgo.GoInt64);
        };
        //"file:///Users/o/.go/go1.21.3/src/time/sleep.go#L38"
        return _t;
    }

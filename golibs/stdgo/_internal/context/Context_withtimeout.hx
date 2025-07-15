package stdgo._internal.context;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.time.Time;
function withTimeout(_parent:stdgo._internal.context.Context_context.Context, _timeout:stdgo._internal.time.Time_duration.Duration):{ var _0 : stdgo._internal.context.Context_context.Context; var _1 : stdgo._internal.context.Context_cancelfunc.CancelFunc; } {
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L685"
        return stdgo._internal.context.Context_withdeadline.withDeadline(_parent, stdgo._internal.time.Time_now.now().add(_timeout)?.__copy__());
    }

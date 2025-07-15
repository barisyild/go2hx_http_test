package stdgo._internal.context;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.time.Time;
function withDeadline(_parent:stdgo._internal.context.Context_context.Context, _d:stdgo._internal.time.Time_time.Time):{ var _0 : stdgo._internal.context.Context_context.Context; var _1 : stdgo._internal.context.Context_cancelfunc.CancelFunc; } {
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L607"
        return stdgo._internal.context.Context_withdeadlinecause.withDeadlineCause(_parent, _d?.__copy__(), (null : stdgo.Error));
    }

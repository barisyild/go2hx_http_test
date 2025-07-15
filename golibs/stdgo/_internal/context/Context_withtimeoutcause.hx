package stdgo._internal.context;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.time.Time;
function withTimeoutCause(_parent:stdgo._internal.context.Context_context.Context, _timeout:stdgo._internal.time.Time_duration.Duration, _cause:stdgo.Error):{ var _0 : stdgo._internal.context.Context_context.Context; var _1 : stdgo._internal.context.Context_cancelfunc.CancelFunc; } {
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L692"
        return stdgo._internal.context.Context_withdeadlinecause.withDeadlineCause(_parent, stdgo._internal.time.Time_now.now().add(_timeout)?.__copy__(), _cause);
    }

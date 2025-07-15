package stdgo._internal.context;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.time.Time;
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = stdgo._internal.context.Context_canceled.canceled, __tmp__1 = stdgo._internal.context.Context_deadlineexceeded.deadlineExceeded, __tmp__2 = stdgo._internal.context.Context__closedchan._closedchan;
            //"file:///Users/o/.go/go1.21.3/src/context/context.go#L411"
            if (stdgo._internal.context.Context__closedchan._closedchan != null) stdgo._internal.context.Context__closedchan._closedchan.__close__();
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };

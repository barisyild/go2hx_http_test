package stdgo._internal.context;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.time.Time;
@:keep @:allow(stdgo._internal.context.Context.T_deadlineExceededError_asInterface) class T_deadlineExceededError_static_extension {
    @:keep
    @:tdfield
    static public function temporary( _:stdgo._internal.context.Context_t_deadlineexceedederror.T_deadlineExceededError):Bool {
        @:recv var _:stdgo._internal.context.Context_t_deadlineexceedederror.T_deadlineExceededError = _?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L173"
        return true;
    }
    @:keep
    @:tdfield
    static public function timeout( _:stdgo._internal.context.Context_t_deadlineexceedederror.T_deadlineExceededError):Bool {
        @:recv var _:stdgo._internal.context.Context_t_deadlineexceedederror.T_deadlineExceededError = _?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L172"
        return true;
    }
    @:keep
    @:tdfield
    static public function error( _:stdgo._internal.context.Context_t_deadlineexceedederror.T_deadlineExceededError):stdgo.GoString {
        @:recv var _:stdgo._internal.context.Context_t_deadlineexceedederror.T_deadlineExceededError = _?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L171"
        return ("context deadline exceeded" : stdgo.GoString);
    }
}

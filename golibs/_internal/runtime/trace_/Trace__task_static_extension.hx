package _internal.runtime.trace_;
import stdgo._internal.context.Context;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.runtime.Runtime;
@:keep @:allow(_internal.runtime.trace_.Trace_.Task_asInterface) class Task_static_extension {
    @:keep
    @:tdfield
    static public function end( _t:stdgo.Ref<_internal.runtime.trace_.Trace_task.Task>):Void {
        @:recv var _t:stdgo.Ref<_internal.runtime.trace_.Trace_task.Task> = _t;
        //"file:///Users/o/.go/go1.21.3/src/runtime/trace/annotation.go#L80"
        _internal.runtime.trace_.Trace___usertaskend._userTaskEnd((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._id);
    }
}

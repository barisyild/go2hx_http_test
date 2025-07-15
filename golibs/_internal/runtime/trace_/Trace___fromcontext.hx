package _internal.runtime.trace_;
import stdgo._internal.context.Context;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.runtime.Runtime;
function _fromContext(_ctx:stdgo._internal.context.Context_context.Context):stdgo.Ref<_internal.runtime.trace_.Trace_task.Task> {
        //"file:///Users/o/.go/go1.21.3/src/runtime/trace/annotation.go#L66"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(_ctx.value(new stdgo.AnyInterface(stdgo.Go.asInterface((new _internal.runtime.trace_.Trace_t_tracecontextkey.T_traceContextKey() : _internal.runtime.trace_.Trace_t_tracecontextkey.T_traceContextKey), _internal.gotype.Gotype___type___internaldotruntimedottrace_dottrace_t_tracecontextkeydott_tracecontextkey.__type___internaldotruntimedottrace_dotTrace_t_tracecontextkeydotT_traceContextKey), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotruntimedottrace_dottrace_t_tracecontextkeydott_tracecontextkey.__type___internaldotruntimedottrace_dotTrace_t_tracecontextkeydotT_traceContextKey))), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotruntimedottrace_dottrace_taskdottask.__type___internaldotruntimedottrace_dotTrace_taskdotTask })) : stdgo.Ref<_internal.runtime.trace_.Trace_task.Task>), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo.Ref<_internal.runtime.trace_.Trace_task.Task>), _1 : false };
            }, _s = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/runtime/trace/annotation.go#L67"
                return _s;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/runtime/trace/annotation.go#L69"
        return (stdgo.Go.setRef(_internal.runtime.trace_.Trace___bgtask._bgTask, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotruntimedottrace_dottrace_taskdottask.__type___internaldotruntimedottrace_dotTrace_taskdotTask })) : stdgo.Ref<_internal.runtime.trace_.Trace_task.Task>);
    }

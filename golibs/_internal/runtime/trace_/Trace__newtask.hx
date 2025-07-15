package _internal.runtime.trace_;
import stdgo._internal.context.Context;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.runtime.Runtime;
function newTask(_pctx:stdgo._internal.context.Context_context.Context, _taskType:stdgo.GoString):{ var _0 : stdgo._internal.context.Context_context.Context; var _1 : stdgo.Ref<_internal.runtime.trace_.Trace_task.Task>; } {
        var _ctx = (null : stdgo._internal.context.Context_context.Context), _task = (null : stdgo.Ref<_internal.runtime.trace_.Trace_task.Task>);
        var _pid = @:assignType (_internal.runtime.trace_.Trace___fromcontext._fromContext(_pctx)._id : stdgo.GoUInt64);
        var _id = @:assignType (_internal.runtime.trace_.Trace___newid._newID() : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/runtime/trace/annotation.go#L41"
        _internal.runtime.trace_.Trace___usertaskcreate._userTaskCreate(_id, _pid, _taskType?.__copy__());
        var _s = (stdgo.Go.setRef(({ _id : _id } : _internal.runtime.trace_.Trace_task.Task), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotruntimedottrace_dottrace_taskdottask.__type___internaldotruntimedottrace_dotTrace_taskdotTask })) : stdgo.Ref<_internal.runtime.trace_.Trace_task.Task>);
        //"file:///Users/o/.go/go1.21.3/src/runtime/trace/annotation.go#L43"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.context.Context_context.Context; var _1 : stdgo.Ref<_internal.runtime.trace_.Trace_task.Task>; } = { _0 : stdgo._internal.context.Context_withvalue.withValue(_pctx, new stdgo.AnyInterface(stdgo.Go.asInterface((new _internal.runtime.trace_.Trace_t_tracecontextkey.T_traceContextKey() : _internal.runtime.trace_.Trace_t_tracecontextkey.T_traceContextKey), _internal.gotype.Gotype___type___internaldotruntimedottrace_dottrace_t_tracecontextkeydott_tracecontextkey.__type___internaldotruntimedottrace_dotTrace_t_tracecontextkeydotT_traceContextKey), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotruntimedottrace_dottrace_t_tracecontextkeydott_tracecontextkey.__type___internaldotruntimedottrace_dotTrace_t_tracecontextkeydotT_traceContextKey)), new stdgo.AnyInterface(stdgo.Go.asInterface(_s, _internal.gotype.Gotype___type___internaldotruntimedottrace_dottrace_taskdottask.__type___internaldotruntimedottrace_dotTrace_taskdotTask), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotruntimedottrace_dottrace_taskdottask.__type___internaldotruntimedottrace_dotTrace_taskdotTask })))), _1 : _s };
            _ctx = __tmp__._0;
            _task = __tmp__._1;
            __tmp__;
        };
    }

package stdgo._internal.context;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.time.Time;
function withCancelCause(_parent:stdgo._internal.context.Context_context.Context):{ var _0 : stdgo._internal.context.Context_context.Context; var _1 : stdgo._internal.context.Context_cancelcausefunc.CancelCauseFunc; } {
        var _ctx = (null : stdgo._internal.context.Context_context.Context), _cancel = (null : stdgo._internal.context.Context_cancelcausefunc.CancelCauseFunc);
        var _c = stdgo._internal.context.Context__withcancel._withCancel(_parent);
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L265"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.context.Context_context.Context; var _1 : stdgo._internal.context.Context_cancelcausefunc.CancelCauseFunc; } = { _0 : stdgo.Go.asInterface(_c, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_cancelctxdott_cancelctx.__type__stdgodot_internaldotcontextdotContext_t_cancelctxdotT_cancelCtx })), _1 : function(_cause:stdgo.Error):Void {
                //"file:///Users/o/.go/go1.21.3/src/context/context.go#L265"
                _c._cancel(true, stdgo._internal.context.Context_canceled.canceled, _cause);
            } };
            _ctx = __tmp__._0;
            _cancel = __tmp__._1;
            __tmp__;
        };
    }

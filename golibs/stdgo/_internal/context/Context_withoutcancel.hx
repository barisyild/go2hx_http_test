package stdgo._internal.context;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.time.Time;
function withoutCancel(_parent:stdgo._internal.context.Context_context.Context):stdgo._internal.context.Context_context.Context {
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L567"
        if (_parent == null) {
            //"file:///Users/o/.go/go1.21.3/src/context/context.go#L568"
            throw new stdgo.AnyInterface(("cannot create context from nil parent" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L570"
        return stdgo.Go.asInterface((new stdgo._internal.context.Context_t_withoutcancelctx.T_withoutCancelCtx(_parent) : stdgo._internal.context.Context_t_withoutcancelctx.T_withoutCancelCtx), _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_withoutcancelctxdott_withoutcancelctx.__type__stdgodot_internaldotcontextdotContext_t_withoutcancelctxdotT_withoutCancelCtx);
    }

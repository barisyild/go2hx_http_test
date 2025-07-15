package stdgo._internal.context;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.time.Time;
function _withCancel(_parent:stdgo._internal.context.Context_context.Context):stdgo.Ref<stdgo._internal.context.Context_t_cancelctx.T_cancelCtx> {
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L269"
        if (_parent == null) {
            //"file:///Users/o/.go/go1.21.3/src/context/context.go#L270"
            throw new stdgo.AnyInterface(("cannot create context from nil parent" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        var _c = (stdgo.Go.setRef((new stdgo._internal.context.Context_t_cancelctx.T_cancelCtx() : stdgo._internal.context.Context_t_cancelctx.T_cancelCtx), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_cancelctxdott_cancelctx.__type__stdgodot_internaldotcontextdotContext_t_cancelctxdotT_cancelCtx })) : stdgo.Ref<stdgo._internal.context.Context_t_cancelctx.T_cancelCtx>);
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L273"
        _c._propagateCancel(_parent, stdgo.Go.asInterface(_c, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_cancelctxdott_cancelctx.__type__stdgodot_internaldotcontextdotContext_t_cancelctxdotT_cancelCtx })));
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L274"
        return _c;
    }

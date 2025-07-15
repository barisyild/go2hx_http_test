package stdgo._internal.context;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.time.Time;
function afterFunc(_ctx:stdgo._internal.context.Context_context.Context, _f:() -> Void):() -> Bool {
        var _stop = null;
        var _a = (stdgo.Go.setRef(({ _f : _f } : stdgo._internal.context.Context_t_afterfuncctx.T_afterFuncCtx), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_afterfuncctxdott_afterfuncctx.__type__stdgodot_internaldotcontextdotContext_t_afterfuncctxdotT_afterFuncCtx })) : stdgo.Ref<stdgo._internal.context.Context_t_afterfuncctx.T_afterFuncCtx>);
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L314"
        (@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cancelCtx._propagateCancel(_ctx, stdgo.Go.asInterface(_a, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_afterfuncctxdott_afterfuncctx.__type__stdgodot_internaldotcontextdotContext_t_afterfuncctxdotT_afterFuncCtx })));
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L315"
        return _stop = function():Bool {
            var _stopped = @:assignType (false : Bool);
            //"file:///Users/o/.go/go1.21.3/src/context/context.go#L317"
            (@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._once.do_(function():Void {
                _stopped = true;
            });
            //"file:///Users/o/.go/go1.21.3/src/context/context.go#L320"
            if (_stopped) {
                //"file:///Users/o/.go/go1.21.3/src/context/context.go#L321"
                _a._cancel(true, stdgo._internal.context.Context_canceled.canceled, (null : stdgo.Error));
            };
            //"file:///Users/o/.go/go1.21.3/src/context/context.go#L323"
            return _stopped;
        };
    }

package stdgo._internal.context;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.time.Time;
function _parentCancelCtx(_parent:stdgo._internal.context.Context_context.Context):{ var _0 : stdgo.Ref<stdgo._internal.context.Context_t_cancelctx.T_cancelCtx>; var _1 : Bool; } {
        var _done = _parent.done();
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L369"
        if (((_done == stdgo._internal.context.Context__closedchan._closedchan) || (_done == null) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/context/context.go#L370"
            return { _0 : null, _1 : false };
        };
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(_parent.value(new stdgo.AnyInterface(stdgo.Go.pointer(stdgo._internal.context.Context__cancelctxkey._cancelCtxKey), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) })))), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_cancelctxdott_cancelctx.__type__stdgodot_internaldotcontextdotContext_t_cancelctxdotT_cancelCtx })) : stdgo.Ref<stdgo._internal.context.Context_t_cancelctx.T_cancelCtx>), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo.Ref<stdgo._internal.context.Context_t_cancelctx.T_cancelCtx>), _1 : false };
        }, _p = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L373"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/context/context.go#L374"
            return { _0 : null, _1 : false };
        };
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._done.load(), stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.structType([]) })) : stdgo.Chan<stdgo._internal.context.Context_t__struct_0.T__struct_0>), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo.Chan<stdgo._internal.context.Context_t__struct_0.T__struct_0>), _1 : false };
        }, _pdone = __tmp__._0, __0 = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L377"
        if (_pdone != (_done)) {
            //"file:///Users/o/.go/go1.21.3/src/context/context.go#L378"
            return { _0 : null, _1 : false };
        };
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L380"
        return { _0 : _p, _1 : true };
    }

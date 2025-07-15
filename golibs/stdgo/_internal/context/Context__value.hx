package stdgo._internal.context;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.time.Time;
function _value(_c:stdgo._internal.context.Context_context.Context, _key:stdgo.AnyInterface):stdgo.AnyInterface {
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L755"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/context/context.go#L756"
            {
                final __type__ = _c;
                if (stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_contextdotcontext.__type__stdgodot_internaldotcontextdotContext_contextdotContext)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_valuectxdott_valuectx.__type__stdgodot_internaldotcontextdotContext_t_valuectxdotT_valueCtx }))) {
                    var _ctx:stdgo.Ref<stdgo._internal.context.Context_t_valuectx.T_valueCtx> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.context.Context_t_valuectx.T_valueCtx>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.context.Context_t_valuectx.T_valueCtx>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.context.Context_t_valuectx.T_valueCtx>) : __type__.__underlying__().value);
                    //"file:///Users/o/.go/go1.21.3/src/context/context.go#L758"
                    if (_key == ((@:checkr _ctx ?? throw stdgo.Error._nullPointerDereference.__underlying__())._key)) {
                        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L759"
                        return (@:checkr _ctx ?? throw stdgo.Error._nullPointerDereference.__underlying__())._val;
                    };
                    _c = (@:checkr _ctx ?? throw stdgo.Error._nullPointerDereference.__underlying__()).context;
                } else if (stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_contextdotcontext.__type__stdgodot_internaldotcontextdotContext_contextdotContext)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_cancelctxdott_cancelctx.__type__stdgodot_internaldotcontextdotContext_t_cancelctxdotT_cancelCtx }))) {
                    var _ctx:stdgo.Ref<stdgo._internal.context.Context_t_cancelctx.T_cancelCtx> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.context.Context_t_cancelctx.T_cancelCtx>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.context.Context_t_cancelctx.T_cancelCtx>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.context.Context_t_cancelctx.T_cancelCtx>) : __type__.__underlying__().value);
                    //"file:///Users/o/.go/go1.21.3/src/context/context.go#L763"
                    if (_key == (new stdgo.AnyInterface(stdgo.Go.pointer(stdgo._internal.context.Context__cancelctxkey._cancelCtxKey).value, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))))) {
                        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L764"
                        return ({
                            final __t__ = _c;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_contextdotcontext.__type__stdgodot_internaldotcontextdotContext_contextdotContext)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        });
                    };
                    _c = (@:checkr _ctx ?? throw stdgo.Error._nullPointerDereference.__underlying__()).context;
                } else if (stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_contextdotcontext.__type__stdgodot_internaldotcontextdotContext_contextdotContext)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_withoutcancelctxdott_withoutcancelctx.__type__stdgodot_internaldotcontextdotContext_t_withoutcancelctxdotT_withoutCancelCtx)) {
                    var _ctx:stdgo._internal.context.Context_t_withoutcancelctx.T_withoutCancelCtx = __type__ == null ? ({} : stdgo._internal.context.Context_t_withoutcancelctx.T_withoutCancelCtx) : __type__.__underlying__() == null ? ({} : stdgo._internal.context.Context_t_withoutcancelctx.T_withoutCancelCtx) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.context.Context_t_withoutcancelctx.T_withoutCancelCtx) : __type__.__underlying__().value);
                    //"file:///Users/o/.go/go1.21.3/src/context/context.go#L768"
                    if (_key == (new stdgo.AnyInterface(stdgo.Go.pointer(stdgo._internal.context.Context__cancelctxkey._cancelCtxKey).value, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))))) {
                        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L771"
                        return (null : stdgo.AnyInterface);
                    };
                    _c = _ctx._c;
                } else if (stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_contextdotcontext.__type__stdgodot_internaldotcontextdotContext_contextdotContext)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_timerctxdott_timerctx.__type__stdgodot_internaldotcontextdotContext_t_timerctxdotT_timerCtx }))) {
                    var _ctx:stdgo.Ref<stdgo._internal.context.Context_t_timerctx.T_timerCtx> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.context.Context_t_timerctx.T_timerCtx>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.context.Context_t_timerctx.T_timerCtx>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.context.Context_t_timerctx.T_timerCtx>) : __type__.__underlying__().value);
                    //"file:///Users/o/.go/go1.21.3/src/context/context.go#L775"
                    if (_key == (new stdgo.AnyInterface(stdgo.Go.pointer(stdgo._internal.context.Context__cancelctxkey._cancelCtxKey).value, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))))) {
                        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L776"
                        return new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _ctx ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cancelCtx, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_cancelctxdott_cancelctx.__type__stdgodot_internaldotcontextdotContext_t_cancelctxdotT_cancelCtx })) : stdgo.Ref<stdgo._internal.context.Context_t_cancelctx.T_cancelCtx>), _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_cancelctxdott_cancelctx.__type__stdgodot_internaldotcontextdotContext_t_cancelctxdotT_cancelCtx), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_cancelctxdott_cancelctx.__type__stdgodot_internaldotcontextdotContext_t_cancelctxdotT_cancelCtx })));
                    };
                    _c = (@:checkr _ctx ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cancelCtx.context;
                } else if (stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_contextdotcontext.__type__stdgodot_internaldotcontextdotContext_contextdotContext)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_backgroundctxdott_backgroundctx.__type__stdgodot_internaldotcontextdotContext_t_backgroundctxdotT_backgroundCtx) || stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_contextdotcontext.__type__stdgodot_internaldotcontextdotContext_contextdotContext)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_todoctxdott_todoctx.__type__stdgodot_internaldotcontextdotContext_t_todoctxdotT_todoCtx)) {
                    var _ctx:stdgo._internal.context.Context_context.Context = __type__ == null ? (null : stdgo._internal.context.Context_context.Context) : cast __type__;
                    //"file:///Users/o/.go/go1.21.3/src/context/context.go#L780"
                    return (null : stdgo.AnyInterface);
                } else {
                    var _ctx:stdgo._internal.context.Context_context.Context = __type__ == null ? (null : stdgo._internal.context.Context_context.Context) : cast __type__;
                    //"file:///Users/o/.go/go1.21.3/src/context/context.go#L782"
                    return _c.value(_key);
                };
            };
        };
    }

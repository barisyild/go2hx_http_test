package stdgo._internal.context;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.time.Time;
function withValue(_parent:stdgo._internal.context.Context_context.Context, _key:stdgo.AnyInterface, _val:stdgo.AnyInterface):stdgo._internal.context.Context_context.Context {
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L709"
        if (_parent == null) {
            //"file:///Users/o/.go/go1.21.3/src/context/context.go#L710"
            throw new stdgo.AnyInterface(("cannot create context from nil parent" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L712"
        if (({
            final value = _key;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/context/context.go#L713"
            throw new stdgo.AnyInterface(("nil key" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L715"
        if (!stdgo._internal.internal.reflectlite.Reflectlite_typeof.typeOf(_key).comparable_()) {
            //"file:///Users/o/.go/go1.21.3/src/context/context.go#L716"
            throw new stdgo.AnyInterface(("key is not comparable" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L718"
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.context.Context_t_valuectx.T_valueCtx(_parent, _key, _val) : stdgo._internal.context.Context_t_valuectx.T_valueCtx), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_valuectxdott_valuectx.__type__stdgodot_internaldotcontextdotContext_t_valuectxdotT_valueCtx })) : stdgo.Ref<stdgo._internal.context.Context_t_valuectx.T_valueCtx>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_valuectxdott_valuectx.__type__stdgodot_internaldotcontextdotContext_t_valuectxdotT_valueCtx }));
    }

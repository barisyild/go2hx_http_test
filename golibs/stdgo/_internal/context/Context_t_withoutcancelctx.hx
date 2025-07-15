package stdgo._internal.context;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.time.Time;
@:structInit @:using(stdgo._internal.context.Context_t_withoutcancelctx_static_extension.T_withoutCancelCtx_static_extension) @:using(stdgo._internal.context.Context_t_withoutcancelctx_static_extension.T_withoutCancelCtx_static_extension) class T_withoutCancelCtx {
    public var _c : stdgo._internal.context.Context_context.Context = (null : stdgo._internal.context.Context_context.Context);
    public function new(?_c:stdgo._internal.context.Context_context.Context) {
        if (_c != null) this._c = _c;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_c", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_contextdotcontext.__type__stdgodot_internaldotcontextdotContext_contextdotContext }, optional : false }])));
    public function __copy__() {
        return new T_withoutCancelCtx(_c);
    }
}

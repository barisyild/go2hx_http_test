package stdgo._internal.context;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.time.Time;
@:structInit @:using(stdgo._internal.context.Context_t_emptyctx_static_extension.T_emptyCtx_static_extension) @:using(stdgo._internal.context.Context_t_emptyctx_static_extension.T_emptyCtx_static_extension) class T_emptyCtx {
    public function new() {}
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([])));
    public function __copy__() {
        return new T_emptyCtx();
    }
}

package stdgo._internal.context;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.time.Time;
@:keep @:allow(stdgo._internal.context.Context.T_withoutCancelCtx_asInterface) class T_withoutCancelCtx_static_extension {
    @:keep
    @:tdfield
    static public function string( _c:stdgo._internal.context.Context_t_withoutcancelctx.T_withoutCancelCtx):stdgo.GoString {
        @:recv var _c:stdgo._internal.context.Context_t_withoutcancelctx.T_withoutCancelCtx = _c?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L594"
        return (stdgo._internal.context.Context__contextname._contextName(_c._c) + (".WithoutCancel" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function value( _c:stdgo._internal.context.Context_t_withoutcancelctx.T_withoutCancelCtx, _key:stdgo.AnyInterface):stdgo.AnyInterface {
        @:recv var _c:stdgo._internal.context.Context_t_withoutcancelctx.T_withoutCancelCtx = _c?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L590"
        return stdgo._internal.context.Context__value._value(stdgo.Go.asInterface(_c, _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_withoutcancelctxdott_withoutcancelctx.__type__stdgodot_internaldotcontextdotContext_t_withoutcancelctxdotT_withoutCancelCtx), _key);
    }
    @:keep
    @:tdfield
    static public function err( _:stdgo._internal.context.Context_t_withoutcancelctx.T_withoutCancelCtx):stdgo.Error {
        @:recv var _:stdgo._internal.context.Context_t_withoutcancelctx.T_withoutCancelCtx = _?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L586"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function done( _:stdgo._internal.context.Context_t_withoutcancelctx.T_withoutCancelCtx):stdgo.Chan<stdgo._internal.context.Context_t__struct_0.T__struct_0> {
        @:recv var _:stdgo._internal.context.Context_t_withoutcancelctx.T_withoutCancelCtx = _?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L582"
        return (null : stdgo.Chan<stdgo._internal.context.Context_t__struct_0.T__struct_0>);
    }
    @:keep
    @:tdfield
    static public function deadline( _:stdgo._internal.context.Context_t_withoutcancelctx.T_withoutCancelCtx):{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : Bool; } {
        @:recv var _:stdgo._internal.context.Context_t_withoutcancelctx.T_withoutCancelCtx = _?.__copy__();
        var _deadline = ({} : stdgo._internal.time.Time_time.Time), _ok = false;
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L578"
        return { _0 : _deadline, _1 : _ok };
    }
}

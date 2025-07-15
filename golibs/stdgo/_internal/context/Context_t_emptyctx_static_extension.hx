package stdgo._internal.context;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.time.Time;
@:keep @:allow(stdgo._internal.context.Context.T_emptyCtx_asInterface) class T_emptyCtx_static_extension {
    @:keep
    @:tdfield
    static public function value( _:stdgo._internal.context.Context_t_emptyctx.T_emptyCtx, _key:stdgo.AnyInterface):stdgo.AnyInterface {
        @:recv var _:stdgo._internal.context.Context_t_emptyctx.T_emptyCtx = _?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L192"
        return (null : stdgo.AnyInterface);
    }
    @:keep
    @:tdfield
    static public function err( _:stdgo._internal.context.Context_t_emptyctx.T_emptyCtx):stdgo.Error {
        @:recv var _:stdgo._internal.context.Context_t_emptyctx.T_emptyCtx = _?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L188"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function done( _:stdgo._internal.context.Context_t_emptyctx.T_emptyCtx):stdgo.Chan<stdgo._internal.context.Context_t__struct_0.T__struct_0> {
        @:recv var _:stdgo._internal.context.Context_t_emptyctx.T_emptyCtx = _?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L184"
        return (null : stdgo.Chan<stdgo._internal.context.Context_t__struct_0.T__struct_0>);
    }
    @:keep
    @:tdfield
    static public function deadline( _:stdgo._internal.context.Context_t_emptyctx.T_emptyCtx):{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : Bool; } {
        @:recv var _:stdgo._internal.context.Context_t_emptyctx.T_emptyCtx = _?.__copy__();
        var _deadline = ({} : stdgo._internal.time.Time_time.Time), _ok = false;
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L180"
        return { _0 : _deadline, _1 : _ok };
    }
}

package stdgo._internal.context;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.time.Time;
@:keep @:allow(stdgo._internal.context.Context.T_backgroundCtx_asInterface) class T_backgroundCtx_static_extension {
    @:keep
    @:tdfield
    static public function string( _:stdgo._internal.context.Context_t_backgroundctx.T_backgroundCtx):stdgo.GoString {
        @:recv var _:stdgo._internal.context.Context_t_backgroundctx.T_backgroundCtx = _?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L198"
        return ("context.Background" : stdgo.GoString);
    }
    @:embedded
    @:embeddededffieldsffun
    public static function value( __self__:stdgo._internal.context.Context_t_backgroundctx.T_backgroundCtx, _0:stdgo.AnyInterface):stdgo.AnyInterface return @:_5 __self__.value(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function err( __self__:stdgo._internal.context.Context_t_backgroundctx.T_backgroundCtx):stdgo.Error return @:_5 __self__.err();
    @:embedded
    @:embeddededffieldsffun
    public static function done( __self__:stdgo._internal.context.Context_t_backgroundctx.T_backgroundCtx):stdgo.Chan<{ }> return @:_5 __self__.done();
    @:embedded
    @:embeddededffieldsffun
    public static function deadline( __self__:stdgo._internal.context.Context_t_backgroundctx.T_backgroundCtx):{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : Bool; } return @:_5 __self__.deadline();
}

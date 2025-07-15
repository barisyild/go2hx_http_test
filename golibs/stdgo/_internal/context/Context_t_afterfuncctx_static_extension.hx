package stdgo._internal.context;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.time.Time;
@:keep @:allow(stdgo._internal.context.Context.T_afterFuncCtx_asInterface) class T_afterFuncCtx_static_extension {
    @:keep
    @:tdfield
    static public function _cancel( _a:stdgo.Ref<stdgo._internal.context.Context_t_afterfuncctx.T_afterFuncCtx>, _removeFromParent:Bool, _err:stdgo.Error, _cause:stdgo.Error):Void {
        @:recv var _a:stdgo.Ref<stdgo._internal.context.Context_t_afterfuncctx.T_afterFuncCtx> = _a;
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L338"
        (@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cancelCtx._cancel(false, _err, _cause);
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L339"
        if (_removeFromParent) {
            //"file:///Users/o/.go/go1.21.3/src/context/context.go#L340"
            stdgo._internal.context.Context__removechild._removeChild((@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cancelCtx.context, stdgo.Go.asInterface(_a, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_afterfuncctxdott_afterfuncctx.__type__stdgodot_internaldotcontextdotContext_t_afterfuncctxdotT_afterFuncCtx })));
        };
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L342"
        (@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._once.do_(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/context/context.go#L343"
            {
                {};
                stdgo.Go.routine(() -> (@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._f());
            };
        });
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _propagateCancel( __self__:stdgo._internal.context.Context_t_afterfuncctx.T_afterFuncCtx, _0:stdgo._internal.context.Context_context.Context, _1:stdgo._internal.context.Context_t_canceler.T_canceler):Void return @:_5 __self__._propagateCancel(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function value( __self__:stdgo._internal.context.Context_t_afterfuncctx.T_afterFuncCtx, _0:stdgo.AnyInterface):stdgo.AnyInterface return @:_5 __self__.value(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function string( __self__:stdgo._internal.context.Context_t_afterfuncctx.T_afterFuncCtx):stdgo.GoString return @:_5 __self__.string();
    @:embedded
    @:embeddededffieldsffun
    public static function err( __self__:stdgo._internal.context.Context_t_afterfuncctx.T_afterFuncCtx):stdgo.Error return @:_5 __self__.err();
    @:embedded
    @:embeddededffieldsffun
    public static function done( __self__:stdgo._internal.context.Context_t_afterfuncctx.T_afterFuncCtx):stdgo.Chan<{ }> return @:_5 __self__.done();
    @:embedded
    @:embeddededffieldsffun
    public static function deadline( __self__:stdgo._internal.context.Context_t_afterfuncctx.T_afterFuncCtx):{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : Bool; } return @:_5 __self__.deadline();
}

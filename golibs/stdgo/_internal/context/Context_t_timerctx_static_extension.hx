package stdgo._internal.context;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.time.Time;
@:keep @:allow(stdgo._internal.context.Context.T_timerCtx_asInterface) class T_timerCtx_static_extension {
    @:keep
    @:tdfield
    static public function _cancel( _c:stdgo.Ref<stdgo._internal.context.Context_t_timerctx.T_timerCtx>, _removeFromParent:Bool, _err:stdgo.Error, _cause:stdgo.Error):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.context.Context_t_timerctx.T_timerCtx> = _c;
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L661"
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cancelCtx._cancel(false, _err, _cause);
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L662"
        if (_removeFromParent) {
            //"file:///Users/o/.go/go1.21.3/src/context/context.go#L664"
            stdgo._internal.context.Context__removechild._removeChild((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cancelCtx.context, stdgo.Go.asInterface(_c, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_timerctxdott_timerctx.__type__stdgodot_internaldotcontextdotContext_t_timerctxdotT_timerCtx })));
        };
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L666"
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cancelCtx._mu.lock();
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L667"
        if (({
            final value = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._timer;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/context/context.go#L668"
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._timer.stop();
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._timer = null;
        };
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L671"
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cancelCtx._mu.unlock();
    }
    @:keep
    @:tdfield
    static public function string( _c:stdgo.Ref<stdgo._internal.context.Context_t_timerctx.T_timerCtx>):stdgo.GoString {
        @:recv var _c:stdgo.Ref<stdgo._internal.context.Context_t_timerctx.T_timerCtx> = _c;
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L655"
        return (((((stdgo._internal.context.Context__contextname._contextName((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cancelCtx.context) + (".WithDeadline(" : stdgo.GoString)?.__copy__() : stdgo.GoString) + ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._deadline.string() : stdgo.GoString)?.__copy__() : stdgo.GoString) + (" [" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (stdgo._internal.time.Time_until.until((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._deadline?.__copy__()).string() : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("])" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function deadline( _c:stdgo.Ref<stdgo._internal.context.Context_t_timerctx.T_timerCtx>):{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : Bool; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.context.Context_t_timerctx.T_timerCtx> = _c;
        var _deadline = ({} : stdgo._internal.time.Time_time.Time), _ok = false;
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L651"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : Bool; } = { _0 : (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._deadline?.__copy__(), _1 : true };
            _deadline = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _propagateCancel( __self__:stdgo._internal.context.Context_t_timerctx.T_timerCtx, _0:stdgo._internal.context.Context_context.Context, _1:stdgo._internal.context.Context_t_canceler.T_canceler):Void return @:_5 __self__._propagateCancel(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function value( __self__:stdgo._internal.context.Context_t_timerctx.T_timerCtx, _0:stdgo.AnyInterface):stdgo.AnyInterface return @:_5 __self__.value(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function err( __self__:stdgo._internal.context.Context_t_timerctx.T_timerCtx):stdgo.Error return @:_5 __self__.err();
    @:embedded
    @:embeddededffieldsffun
    public static function done( __self__:stdgo._internal.context.Context_t_timerctx.T_timerCtx):stdgo.Chan<{ }> return @:_5 __self__.done();
}

package stdgo._internal.context;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.time.Time;
class T_afterFuncCtx_asInterface {
    @:keep
    public dynamic function _cancel(_removeFromParent:Bool, _err:stdgo.Error, _cause:stdgo.Error):Void @:_0 __self__.value._cancel(_removeFromParent, _err, _cause);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _propagateCancel(_0:stdgo._internal.context.Context_context.Context, _1:stdgo._internal.context.Context_t_canceler.T_canceler):Void @:_0 __self__.value._propagateCancel(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function value(_0:stdgo.AnyInterface):stdgo.AnyInterface return @:_0 __self__.value.value(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function err():stdgo.Error return @:_0 __self__.value.err();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function done():stdgo.Chan<{ }> return @:_0 __self__.value.done();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function deadline():{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : Bool; } return @:_0 __self__.value.deadline();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.context.Context_t_afterfuncctxpointer.T_afterFuncCtxPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

package stdgo._internal.net.http.httptrace;
import stdgo._internal.context.Context;
import stdgo._internal.reflect.Reflect;
class ClientTrace_asInterface {
    @:keep
    public dynamic function _hasNetHooks():Bool return @:_0 __self__.value._hasNetHooks();
    @:keep
    public dynamic function _compose(_old:stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_clienttrace.ClientTrace>):Void @:_0 __self__.value._compose(_old);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.httptrace.Httptrace_clienttracepointer.ClientTracePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

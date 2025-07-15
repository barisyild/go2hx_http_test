package _internal.golangdotorg.x.text.unicode.norm;
import _internal.golangdotorg.x.text.transform.Transform;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
class T_streamSafe_asInterface {
    @:keep
    public dynamic function _isMax():Bool return @:_0 __self__.value._isMax();
    @:keep
    @:pointer
    public dynamic function _backwards(_p:_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties):_internal.golangdotorg.x.text.unicode.norm.Norm_t_ssstate.T_ssState return @:_0 __self__._backwards(_p);
    @:keep
    @:pointer
    public dynamic function _next(_p:_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties):_internal.golangdotorg.x.text.unicode.norm.Norm_t_ssstate.T_ssState return @:_0 __self__._next(_p);
    @:keep
    @:pointer
    public dynamic function _first(_p:_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties):Void @:_0 __self__._first(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafepointer.T_streamSafePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

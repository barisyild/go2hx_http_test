package _internal.golangdotorg.x.text.transform;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.unicode.utf8.Utf8;
class T_link_asInterface {
    @:keep
    public dynamic function _dst():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._dst();
    @:keep
    public dynamic function _src():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._src();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.golangdotorg.x.text.transform.Transform_t_linkpointer.T_linkPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

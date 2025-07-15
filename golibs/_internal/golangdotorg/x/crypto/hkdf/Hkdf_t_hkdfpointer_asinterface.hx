package _internal.golangdotorg.x.crypto.hkdf;
import stdgo._internal.crypto.hmac.Hmac;
import stdgo._internal.errors.Errors;
class T_hkdfPointer_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.golangdotorg.x.crypto.hkdf.Hkdf_t_hkdfpointerpointer.T_hkdfPointerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

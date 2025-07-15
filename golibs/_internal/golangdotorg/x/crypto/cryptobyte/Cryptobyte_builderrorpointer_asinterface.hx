package _internal.golangdotorg.x.crypto.cryptobyte;
import stdgo._internal.math.big.Big;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.asn1.Asn1;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.time.Time;
class BuildErrorPointer_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builderrorpointerpointer.BuildErrorPointerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

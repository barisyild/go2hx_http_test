package stdgo._internal.crypto.dsa;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.math.big.Big;
import stdgo._internal.crypto.internal.randutil.Randutil;
class ParametersPointer_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.dsa.Dsa_parameterspointerpointer.ParametersPointerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

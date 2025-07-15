package stdgo._internal.math.big;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.math.Math;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.math.rand.Rand;
class T__struct_32_asInterface {
    @:embedded
    @:localembedfields
    public dynamic function _doSlow(_0:() -> Void):Void @:_0 __self__.value._doSlow(_0);
    @:embedded
    @:localembedfields
    public dynamic function do_(_0:() -> Void):Void @:_0 __self__.value.do_(_0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.math.big.Big_t__struct_32pointer.T__struct_32Pointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

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
class T_decimal_asInterface {
    @:keep
    public dynamic function _roundDown(_n:stdgo.GoInt):Void @:_0 __self__.value._roundDown(_n);
    @:keep
    public dynamic function _roundUp(_n:stdgo.GoInt):Void @:_0 __self__.value._roundUp(_n);
    @:keep
    public dynamic function _round(_n:stdgo.GoInt):Void @:_0 __self__.value._round(_n);
    @:keep
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    public dynamic function _init(_m:stdgo._internal.math.big.Big_t_nat.T_nat, _shift:stdgo.GoInt):Void @:_0 __self__.value._init(_m, _shift);
    @:keep
    public dynamic function _at(_i:stdgo.GoInt):stdgo.GoUInt8 return @:_0 __self__.value._at(_i);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.math.big.Big_t_decimalpointer.T_decimalPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

package stdgo._internal.crypto.des;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.strconv.Strconv;
class T_tripleDESCipher_asInterface {
    @:keep
    public dynamic function decrypt(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void @:_0 __self__.value.decrypt(_dst, _src);
    @:keep
    public dynamic function encrypt(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void @:_0 __self__.value.encrypt(_dst, _src);
    @:keep
    public dynamic function blockSize():stdgo.GoInt return @:_0 __self__.value.blockSize();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.des.Des_t_tripledescipherpointer.T_tripleDESCipherPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

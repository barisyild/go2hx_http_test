package stdgo._internal.crypto.internal.nistec;
import stdgo._internal.errors.Errors;
import stdgo._internal.crypto.subtle.Subtle;
class P256Point_asInterface {
    @:keep
    public dynamic function scalarBaseMult(_scalar:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>; var _1 : stdgo.Error; } return @:_0 __self__.value.scalarBaseMult(_scalar);
    @:keep
    public dynamic function _generatorTable():stdgo.Ref<stdgo.GoArray<stdgo._internal.crypto.internal.nistec.Nistec_t_p256table.T_p256Table>> return @:_0 __self__.value._generatorTable();
    @:keep
    public dynamic function scalarMult(_q:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>, _scalar:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>; var _1 : stdgo.Error; } return @:_0 __self__.value.scalarMult(_q, _scalar);
    @:keep
    public dynamic function select(_p1:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>, _p2:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>, _cond:stdgo.GoInt):stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point> return @:_0 __self__.value.select(_p1, _p2, _cond);
    @:keep
    public dynamic function double(_p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>):stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point> return @:_0 __self__.value.double(_p);
    @:keep
    public dynamic function add(_p1:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>, _p2:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>):stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point> return @:_0 __self__.value.add(_p1, _p2);
    @:keep
    public dynamic function _bytesCompressed(_out:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._bytesCompressed(_out);
    @:keep
    public dynamic function bytesCompressed():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.bytesCompressed();
    @:keep
    public dynamic function _bytesX(_out:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value._bytesX(_out);
    @:keep
    public dynamic function bytesX():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.bytesX();
    @:keep
    public dynamic function _bytes(_out:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._bytes(_out);
    @:keep
    public dynamic function bytes():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.bytes();
    @:keep
    public dynamic function setBytes(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>; var _1 : stdgo.Error; } return @:_0 __self__.value.setBytes(_b);
    @:keep
    public dynamic function set(_q:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>):stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point> return @:_0 __self__.value.set(_q);
    @:keep
    public dynamic function setGenerator():stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point> return @:_0 __self__.value.setGenerator();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.internal.nistec.Nistec_p256pointpointer.P256PointPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

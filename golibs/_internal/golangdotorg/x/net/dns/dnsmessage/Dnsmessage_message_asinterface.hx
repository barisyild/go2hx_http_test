package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
class Message_asInterface {
    @:keep
    public dynamic function goString():stdgo.GoString return @:_0 __self__.value.goString();
    @:keep
    public dynamic function appendPack(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.appendPack(_b);
    @:keep
    public dynamic function pack():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.pack();
    @:keep
    public dynamic function unpack(_msg:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value.unpack(_msg);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _pack():{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoUInt16; } return @:_0 __self__.value._pack();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_messagepointer.MessagePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

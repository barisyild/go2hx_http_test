package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
class T_header_asInterface {
    @:keep
    public dynamic function _header():_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_header.Header return @:_0 __self__.value._header();
    @:keep
    public dynamic function _unpack(_msg:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value._unpack(_msg, _off);
    @:keep
    public dynamic function _pack(_msg:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._pack(_msg);
    @:keep
    public dynamic function _count(_sec:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section):stdgo.GoUInt16 return @:_0 __self__.value._count(_sec);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_headerpointer.T_headerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

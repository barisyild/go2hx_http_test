package stdgo._internal.net.netip;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.errors.Errors;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.internal.intern.Intern;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.math.bits.Bits;
class Addr_asInterface {
    @:keep
    public dynamic function unmarshalBinary(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value.unmarshalBinary(_b);
    @:keep
    public dynamic function marshalBinary():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.marshalBinary();
    @:keep
    public dynamic function _marshalBinaryWithTrailingBytes(_trailingBytes:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._marshalBinaryWithTrailingBytes(_trailingBytes);
    @:keep
    public dynamic function unmarshalText(_text:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value.unmarshalText(_text);
    @:keep
    public dynamic function marshalText():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.marshalText();
    @:keep
    public dynamic function stringExpanded():stdgo.GoString return @:_0 __self__.value.stringExpanded();
    @:keep
    public dynamic function _appendTo6(_ret:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._appendTo6(_ret);
    @:keep
    public dynamic function _string6():stdgo.GoString return @:_0 __self__.value._string6();
    @:keep
    public dynamic function _appendTo4(_ret:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._appendTo4(_ret);
    @:keep
    public dynamic function _string4():stdgo.GoString return @:_0 __self__.value._string4();
    @:keep
    public dynamic function appendTo(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.appendTo(_b);
    @:keep
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    public dynamic function prev():stdgo._internal.net.netip.Netip_addr.Addr return @:_0 __self__.value.prev();
    @:keep
    public dynamic function next():stdgo._internal.net.netip.Netip_addr.Addr return @:_0 __self__.value.next();
    @:keep
    public dynamic function asSlice():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.asSlice();
    @:keep
    public dynamic function as4():stdgo.GoArray<stdgo.GoUInt8> return @:_0 __self__.value.as4();
    @:keep
    public dynamic function as16():stdgo.GoArray<stdgo.GoUInt8> return @:_0 __self__.value.as16();
    @:keep
    public dynamic function prefix(_b:stdgo.GoInt):{ var _0 : stdgo._internal.net.netip.Netip_prefix.Prefix; var _1 : stdgo.Error; } return @:_0 __self__.value.prefix(_b);
    @:keep
    public dynamic function isUnspecified():Bool return @:_0 __self__.value.isUnspecified();
    @:keep
    public dynamic function isPrivate():Bool return @:_0 __self__.value.isPrivate();
    @:keep
    public dynamic function isGlobalUnicast():Bool return @:_0 __self__.value.isGlobalUnicast();
    @:keep
    public dynamic function isLinkLocalMulticast():Bool return @:_0 __self__.value.isLinkLocalMulticast();
    @:keep
    public dynamic function isInterfaceLocalMulticast():Bool return @:_0 __self__.value.isInterfaceLocalMulticast();
    @:keep
    public dynamic function isMulticast():Bool return @:_0 __self__.value.isMulticast();
    @:keep
    public dynamic function isLoopback():Bool return @:_0 __self__.value.isLoopback();
    @:keep
    public dynamic function isLinkLocalUnicast():Bool return @:_0 __self__.value.isLinkLocalUnicast();
    @:keep
    public dynamic function _hasZone():Bool return @:_0 __self__.value._hasZone();
    @:keep
    public dynamic function _withoutZone():stdgo._internal.net.netip.Netip_addr.Addr return @:_0 __self__.value._withoutZone();
    @:keep
    public dynamic function withZone(_zone:stdgo.GoString):stdgo._internal.net.netip.Netip_addr.Addr return @:_0 __self__.value.withZone(_zone);
    @:keep
    public dynamic function unmap():stdgo._internal.net.netip.Netip_addr.Addr return @:_0 __self__.value.unmap();
    @:keep
    public dynamic function is6():Bool return @:_0 __self__.value.is6();
    @:keep
    public dynamic function is4In6():Bool return @:_0 __self__.value.is4In6();
    @:keep
    public dynamic function is4():Bool return @:_0 __self__.value.is4();
    @:keep
    public dynamic function less(_ip2:stdgo._internal.net.netip.Netip_addr.Addr):Bool return @:_0 __self__.value.less(_ip2);
    @:keep
    public dynamic function compare(_ip2:stdgo._internal.net.netip.Netip_addr.Addr):stdgo.GoInt return @:_0 __self__.value.compare(_ip2);
    @:keep
    public dynamic function zone():stdgo.GoString return @:_0 __self__.value.zone();
    @:keep
    public dynamic function bitLen():stdgo.GoInt return @:_0 __self__.value.bitLen();
    @:keep
    public dynamic function isValid():Bool return @:_0 __self__.value.isValid();
    @:keep
    public dynamic function _isZero():Bool return @:_0 __self__.value._isZero();
    @:keep
    public dynamic function _v6u16(_i:stdgo.GoUInt8):stdgo.GoUInt16 return @:_0 __self__.value._v6u16(_i);
    @:keep
    public dynamic function _v6(_i:stdgo.GoUInt8):stdgo.GoUInt8 return @:_0 __self__.value._v6(_i);
    @:keep
    public dynamic function _v4(_i:stdgo.GoUInt8):stdgo.GoUInt8 return @:_0 __self__.value._v4(_i);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.netip.Netip_addrpointer.AddrPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

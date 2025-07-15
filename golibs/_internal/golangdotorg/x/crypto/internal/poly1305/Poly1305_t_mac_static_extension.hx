package _internal.golangdotorg.x.crypto.internal.poly1305;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.encoding.binary.Binary;
@:keep @:allow(_internal.golangdotorg.x.crypto.internal.poly1305.Poly1305.T_mac_asInterface) class T_mac_static_extension {
    @:embedded
    @:embeddededffieldsffun
    public static function write( __self__:_internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_t_mac.T_mac, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.write(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function sum( __self__:_internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_t_mac.T_mac, _0:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):Void return @:_5 __self__.sum(_0);
}

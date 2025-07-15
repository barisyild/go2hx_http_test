package _internal.golangdotorg.x.crypto.internal.poly1305;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.encoding.binary.Binary;
@:structInit @:using(_internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_mac_static_extension.MAC_static_extension) @:using(_internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_mac_static_extension.MAC_static_extension) class MAC {
    @:embedded
    public var _mac : _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_t_mac.T_mac = ({} : _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_t_mac.T_mac);
    public var _finalized : Bool = false;
    public function new(?_mac:_internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_t_mac.T_mac, ?_finalized:Bool) {
        if (_mac != null) this._mac = _mac;
        if (_finalized != null) this._finalized = _finalized;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_mac", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotinternaldotpoly1305dotpoly1305_t_macdott_mac.__type___internaldotgolangdotorgdotxdotcryptodotinternaldotpoly1305dotPoly1305_t_macdotT_mac }, optional : false }, { name : "_finalized", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public function __copy__() {
        return new MAC(_mac, _finalized);
    }
}

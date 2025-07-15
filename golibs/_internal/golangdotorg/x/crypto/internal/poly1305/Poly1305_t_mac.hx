package _internal.golangdotorg.x.crypto.internal.poly1305;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.encoding.binary.Binary;
@:structInit @:using(_internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_t_mac_static_extension.T_mac_static_extension) @:using(_internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_t_mac_static_extension.T_mac_static_extension) class T_mac {
    @:embedded
    public var _macGeneric : _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_t_macgeneric.T_macGeneric = ({} : _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_t_macgeneric.T_macGeneric);
    public function new(?_macGeneric:_internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_t_macgeneric.T_macGeneric) {
        if (_macGeneric != null) this._macGeneric = _macGeneric;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_macGeneric", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotinternaldotpoly1305dotpoly1305_t_macgenericdott_macgeneric.__type___internaldotgolangdotorgdotxdotcryptodotinternaldotpoly1305dotPoly1305_t_macgenericdotT_macGeneric }, optional : false }])));
    public var sum(get, never) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>> -> Void;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_sum():stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>> -> Void return @:check32 this._macGeneric.sum;
    public var write(get, never) : stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_write():stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check32 this._macGeneric.write;
    public function __copy__() {
        return new T_mac(_macGeneric);
    }
}

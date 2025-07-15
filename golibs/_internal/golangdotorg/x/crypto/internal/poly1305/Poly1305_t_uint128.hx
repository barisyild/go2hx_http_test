package _internal.golangdotorg.x.crypto.internal.poly1305;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.encoding.binary.Binary;
@:structInit @:using(_internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_t_uint128_static_extension.T_uint128_static_extension) @:using(_internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_t_uint128_static_extension.T_uint128_static_extension) class T_uint128 {
    public var _lo : stdgo.GoUInt64 = 0;
    public var _hi : stdgo.GoUInt64 = 0;
    public function new(?_lo:stdgo.GoUInt64, ?_hi:stdgo.GoUInt64) {
        if (_lo != null) this._lo = _lo;
        if (_hi != null) this._hi = _hi;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_lo", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint64_kind) }, optional : false }, { name : "_hi", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint64_kind) }, optional : false }])));
    public function __copy__() {
        return new T_uint128(_lo, _hi);
    }
}

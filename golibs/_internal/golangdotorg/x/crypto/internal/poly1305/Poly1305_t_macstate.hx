package _internal.golangdotorg.x.crypto.internal.poly1305;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.encoding.binary.Binary;
@:structInit @:using(_internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_t_macstate_static_extension.T_macState_static_extension) @:using(_internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_t_macstate_static_extension.T_macState_static_extension) class T_macState {
    public var _h : stdgo.GoArray<stdgo.GoUInt64> = new stdgo.GoArray<stdgo.GoUInt64>(3, 3).__setNumber64__();
    public var _r : stdgo.GoArray<stdgo.GoUInt64> = new stdgo.GoArray<stdgo.GoUInt64>(2, 2).__setNumber64__();
    public var _s : stdgo.GoArray<stdgo.GoUInt64> = new stdgo.GoArray<stdgo.GoUInt64>(2, 2).__setNumber64__();
    public function new(?_h:stdgo.GoArray<stdgo.GoUInt64>, ?_r:stdgo.GoArray<stdgo.GoUInt64>, ?_s:stdgo.GoArray<stdgo.GoUInt64>) {
        if (_h != null) this._h = _h;
        if (_r != null) this._r = _r;
        if (_s != null) this._s = _s;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_h", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint64_kind) }, 3) }, optional : false }, { name : "_r", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint64_kind) }, 2) }, optional : false }, { name : "_s", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint64_kind) }, 2) }, optional : false }])));
    public function __copy__() {
        return new T_macState(_h, _r, _s);
    }
}

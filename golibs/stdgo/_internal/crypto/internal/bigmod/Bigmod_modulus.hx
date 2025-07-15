package stdgo._internal.crypto.internal.bigmod;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.errors.Errors;
import stdgo._internal.unsafe.Unsafe;
@:structInit @:using(stdgo._internal.crypto.internal.bigmod.Bigmod_modulus_static_extension.Modulus_static_extension) @:using(stdgo._internal.crypto.internal.bigmod.Bigmod_modulus_static_extension.Modulus_static_extension) class Modulus {
    public var _nat : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> = (null : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>);
    public var _leading : stdgo.GoInt = 0;
    public var _m0inv : stdgo.GoUInt = 0;
    public var _rr : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> = (null : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>);
    public function new(?_nat:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>, ?_leading:stdgo.GoInt, ?_m0inv:stdgo.GoUInt, ?_rr:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>) {
        if (_nat != null) this._nat = _nat;
        if (_leading != null) this._leading = _leading;
        if (_m0inv != null) this._m0inv = _m0inv;
        if (_rr != null) this._rr = _rr;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_nat", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotbigmoddotbigmod_natdotnat.__type__stdgodot_internaldotcryptodotinternaldotbigmoddotBigmod_natdotNat }) }, optional : false }, { name : "_leading", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_m0inv", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint_kind) }, optional : false }, { name : "_rr", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotbigmoddotbigmod_natdotnat.__type__stdgodot_internaldotcryptodotinternaldotbigmoddotBigmod_natdotNat }) }, optional : false }])));
    public function __copy__() {
        return new Modulus(_nat, _leading, _m0inv, _rr);
    }
}

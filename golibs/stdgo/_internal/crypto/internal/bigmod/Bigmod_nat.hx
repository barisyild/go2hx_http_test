package stdgo._internal.crypto.internal.bigmod;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.errors.Errors;
import stdgo._internal.unsafe.Unsafe;
@:structInit @:using(stdgo._internal.crypto.internal.bigmod.Bigmod_nat_static_extension.Nat_static_extension) @:using(stdgo._internal.crypto.internal.bigmod.Bigmod_nat_static_extension.Nat_static_extension) class Nat {
    public var _limbs : stdgo.Slice<stdgo.GoUInt> = (null : stdgo.Slice<stdgo.GoUInt>);
    public function new(?_limbs:stdgo.Slice<stdgo.GoUInt>) {
        if (_limbs != null) this._limbs = _limbs;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_limbs", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint_kind) }) }, optional : false }])));
    public function __copy__() {
        return new Nat(_limbs);
    }
}

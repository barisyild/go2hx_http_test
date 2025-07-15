package stdgo._internal.crypto.internal.bigmod;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.errors.Errors;
import stdgo._internal.unsafe.Unsafe;
function newNat():stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> {
        var _limbs = (new stdgo.Slice<stdgo.GoUInt>((0 : stdgo.GoInt).toBasic(), (64 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/bigmod/nat.go#L72"
        return (stdgo.Go.setRef((new stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat(_limbs) : stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotbigmoddotbigmod_natdotnat.__type__stdgodot_internaldotcryptodotinternaldotbigmoddotBigmod_natdotNat })) : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>);
    }

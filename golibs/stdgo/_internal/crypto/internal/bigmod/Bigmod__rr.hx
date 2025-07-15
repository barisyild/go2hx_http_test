package stdgo._internal.crypto.internal.bigmod;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.errors.Errors;
import stdgo._internal.unsafe.Unsafe;
function _rr(_m:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>):stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> {
        var _rr = stdgo._internal.crypto.internal.bigmod.Bigmod_newnat.newNat().expandFor(_m);
        var _n = @:assignType ((@:checkr _rr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._limbs.length : stdgo.GoInt);
        (@:checkr _rr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._limbs[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (1u32 : stdgo.GoUInt);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/bigmod/nat.go#L326"
        {
            var _i = @:assignType (_n - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i < ((2 : stdgo.GoInt) * _n : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/bigmod/nat.go#L327"
                _rr._shiftIn((0u32 : stdgo.GoUInt), _m);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/bigmod/nat.go#L329"
        return _rr;
    }

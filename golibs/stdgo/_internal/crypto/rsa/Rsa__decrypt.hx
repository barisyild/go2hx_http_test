package stdgo._internal.crypto.rsa;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.big.Big;
import stdgo._internal.crypto.internal.randutil.Randutil;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.crypto.internal.boring.bbig.Bbig;
import stdgo._internal.crypto.internal.bigmod.Bigmod;
import stdgo._internal.math.Math;
import stdgo._internal.crypto.rand.Rand;
function _decrypt(_priv:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>, _ciphertext:stdgo.Slice<stdgo.GoUInt8>, _check:Bool):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L642"
        if ((((@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).primes.length) <= (2 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L643"
            stdgo._internal.crypto.internal.boring.Boring_unreachable.unreachable();
        };
        var _err:stdgo.Error = (null : stdgo.Error), _m:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> = (null : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>), _c:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> = (null : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>), n:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus> = (null : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>), _t0 = stdgo._internal.crypto.internal.bigmod.Bigmod_newnat.newNat();
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L652"
        if (({
            final value = (@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).precomputed._n;
            (value == null || (value : Dynamic).__nil__);
        })) {
            {
                var __tmp__ = stdgo._internal.crypto.internal.bigmod.Bigmod_newmodulusfrombig.newModulusFromBig((@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).publicKey.n);
                n = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L654"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L655"
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.rsa.Rsa_errdecryption.errDecryption };
            };
            {
                var __tmp__ = stdgo._internal.crypto.internal.bigmod.Bigmod_newnat.newNat().setBytes(_ciphertext, n);
                _c = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L658"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L659"
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.rsa.Rsa_errdecryption.errDecryption };
            };
            _m = stdgo._internal.crypto.internal.bigmod.Bigmod_newnat.newNat().exp(_c, (@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).d.bytes(), n);
        } else {
            n = (@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).precomputed._n;
            var __0 = (@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).precomputed._p, __1 = (@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).precomputed._q;
var q = __1, p = __0;
            var __tmp__ = stdgo._internal.crypto.internal.bigmod.Bigmod_newnat.newNat().setBytes((@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).precomputed.qinv.bytes(), p), qinv:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L666"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L667"
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.rsa.Rsa_errdecryption.errDecryption };
            };
            {
                var __tmp__ = stdgo._internal.crypto.internal.bigmod.Bigmod_newnat.newNat().setBytes(_ciphertext, n);
                _c = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L670"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L671"
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.rsa.Rsa_errdecryption.errDecryption };
            };
            _m = stdgo._internal.crypto.internal.bigmod.Bigmod_newnat.newNat().exp(_t0.mod(_c, p), (@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).precomputed.dp.bytes(), p);
            var _m2 = stdgo._internal.crypto.internal.bigmod.Bigmod_newnat.newNat().exp(_t0.mod(_c, q), (@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).precomputed.dq.bytes(), q);
            //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L679"
            _m.sub(_t0.mod(_m2, p), p);
            //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L681"
            _m.mul(qinv, p);
            //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L683"
            _m.expandFor(n).mul(_t0.mod(q.nat(), n), n);
            //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L685"
            _m.add(_m2.expandFor(n), n);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L688"
        if (_check) {
            var _c1 = stdgo._internal.crypto.internal.bigmod.Bigmod_newnat.newNat().expShort(_m, ((@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).publicKey.e : stdgo.GoUInt), n);
            //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L690"
            if (_c1.equal(_c) != ((1u32 : stdgo._internal.crypto.internal.bigmod.Bigmod_t_choice.T_choice))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L691"
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.rsa.Rsa_errdecryption.errDecryption };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L695"
        return { _0 : _m.bytes(n), _1 : (null : stdgo.Error) };
    }

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
function _encrypt(_pub:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>, _plaintext:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L479"
        stdgo._internal.crypto.internal.boring.Boring_unreachable.unreachable();
        var __tmp__ = stdgo._internal.crypto.internal.bigmod.Bigmod_newmodulusfrombig.newModulusFromBig((@:checkr _pub ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n), n:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L486"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L487"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var __tmp__ = stdgo._internal.crypto.internal.bigmod.Bigmod_newnat.newNat().setBytes(_plaintext, n), _m:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L490"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L491"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var _e = @:assignType ((@:checkr _pub ?? throw stdgo.Error._nullPointerDereference.__underlying__()).e : stdgo.GoUInt);
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L495"
        return { _0 : stdgo._internal.crypto.internal.bigmod.Bigmod_newnat.newNat().expShort(_m, _e, n).bytes(n), _1 : (null : stdgo.Error) };
    }

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
function _checkPub(_pub:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>):stdgo.Error {
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L96"
        if (({
            final value = (@:checkr _pub ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L97"
            return stdgo._internal.crypto.rsa.Rsa__errpublicmodulus._errPublicModulus;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L99"
        if (((@:checkr _pub ?? throw stdgo.Error._nullPointerDereference.__underlying__()).e < (2 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L100"
            return stdgo._internal.crypto.rsa.Rsa__errpublicexponentsmall._errPublicExponentSmall;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L102"
        if (((@:checkr _pub ?? throw stdgo.Error._nullPointerDereference.__underlying__()).e > (2147483647 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L103"
            return stdgo._internal.crypto.rsa.Rsa__errpublicexponentlarge._errPublicExponentLarge;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L105"
        return (null : stdgo.Error);
    }

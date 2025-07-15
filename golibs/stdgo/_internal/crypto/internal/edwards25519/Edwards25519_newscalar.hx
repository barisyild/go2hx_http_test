package stdgo._internal.crypto.internal.edwards25519;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.subtle.Subtle;
function newScalar():stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar> {
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L58"
        return (stdgo.Go.setRef((new stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar() : stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotedwards25519_scalardotscalar.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotEdwards25519_scalardotScalar })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>);
    }

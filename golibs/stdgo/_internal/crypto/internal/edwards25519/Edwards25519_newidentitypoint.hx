package stdgo._internal.crypto.internal.edwards25519;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.subtle.Subtle;
function newIdentityPoint():stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point> {
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L72"
        return (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotedwards25519_pointdotpoint.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotEdwards25519_pointdotPoint })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>).set(stdgo._internal.crypto.internal.edwards25519.Edwards25519__identity._identity);
    }

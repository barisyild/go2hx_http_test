package stdgo._internal.crypto.internal.edwards25519;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.subtle.Subtle;
function _basepointNafTable():stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_naflookuptable8.T_nafLookupTable8> {
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L128"
        stdgo._internal.crypto.internal.edwards25519.Edwards25519__basepointnaftableprecomp._basepointNafTablePrecomp._initOnce.do_(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L129"
            stdgo._internal.crypto.internal.edwards25519.Edwards25519__basepointnaftableprecomp._basepointNafTablePrecomp._table.fromP3(stdgo._internal.crypto.internal.edwards25519.Edwards25519_newgeneratorpoint.newGeneratorPoint());
        });
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L131"
        return (stdgo.Go.setRef(stdgo._internal.crypto.internal.edwards25519.Edwards25519__basepointnaftableprecomp._basepointNafTablePrecomp._table, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotedwards25519_t_naflookuptable8dott_naflookuptable8.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotEdwards25519_t_naflookuptable8dotT_nafLookupTable8 })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_naflookuptable8.T_nafLookupTable8>);
    }

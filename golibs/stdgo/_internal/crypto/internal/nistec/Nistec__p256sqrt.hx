package stdgo._internal.crypto.internal.nistec;
import stdgo._internal.errors.Errors;
import stdgo._internal.crypto.subtle.Subtle;
function _p256Sqrt(_e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>, _x:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>):Bool {
        var _isSquare = false;
        var _candidate = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p256elementdotp256element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p256elementdotP256Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L448"
        stdgo._internal.crypto.internal.nistec.Nistec__p256sqrtcandidate._p256SqrtCandidate(_candidate, _x);
        var _square = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p256elementdotp256element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p256elementdotP256Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>).square(_candidate);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L450"
        if (_square.equal(_x) != ((1 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L451"
            return _isSquare = false;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L453"
        _e.set(_candidate);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L454"
        return _isSquare = true;
    }

package stdgo._internal.crypto.internal.nistec;
import stdgo._internal.errors.Errors;
import stdgo._internal.crypto.subtle.Subtle;
function _p384Sqrt(_e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>, _x:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>):Bool {
        var _isSquare = false;
        var _candidate = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p384elementdotp384element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p384elementdotP384Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L446"
        stdgo._internal.crypto.internal.nistec.Nistec__p384sqrtcandidate._p384SqrtCandidate(_candidate, _x);
        var _square = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p384elementdotp384element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p384elementdotP384Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>).square(_candidate);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L448"
        if (_square.equal(_x) != ((1 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L449"
            return _isSquare = false;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L451"
        _e.set(_candidate);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L452"
        return _isSquare = true;
    }

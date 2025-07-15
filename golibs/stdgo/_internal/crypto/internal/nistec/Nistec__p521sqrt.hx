package stdgo._internal.crypto.internal.nistec;
import stdgo._internal.errors.Errors;
import stdgo._internal.crypto.subtle.Subtle;
function _p521Sqrt(_e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>, _x:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>):Bool {
        var _isSquare = false;
        var _candidate = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p521elementdotp521element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p521elementdotP521Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L446"
        stdgo._internal.crypto.internal.nistec.Nistec__p521sqrtcandidate._p521SqrtCandidate(_candidate, _x);
        var _square = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p521elementdotp521element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p521elementdotP521Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>).square(_candidate);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L448"
        if (_square.equal(_x) != ((1 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L449"
            return _isSquare = false;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L451"
        _e.set(_candidate);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L452"
        return _isSquare = true;
    }

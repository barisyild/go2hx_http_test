package stdgo._internal.crypto.internal.nistec;
import stdgo._internal.errors.Errors;
import stdgo._internal.crypto.subtle.Subtle;
function _p521CheckOnCurve(_x:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>, _y:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>):stdgo.Error {
        var _rhs = stdgo._internal.crypto.internal.nistec.Nistec__p521polynomial._p521Polynomial((stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p521elementdotp521element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p521elementdotP521Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>), _x);
        var _lhs = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p521elementdotp521element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p521elementdotP521Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>).square(_y);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L136"
        if (_rhs.equal(_lhs) != ((1 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L137"
            return stdgo._internal.errors.Errors_new_.new_(("P521 point not on curve" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L139"
        return (null : stdgo.Error);
    }

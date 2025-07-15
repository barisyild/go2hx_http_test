package stdgo._internal.crypto.internal.nistec;
import stdgo._internal.errors.Errors;
import stdgo._internal.crypto.subtle.Subtle;
function _p224CheckOnCurve(_x:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>, _y:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>):stdgo.Error {
        var _rhs = stdgo._internal.crypto.internal.nistec.Nistec__p224polynomial._p224Polynomial((stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p224elementdotp224element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p224elementdotP224Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>), _x);
        var _lhs = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p224elementdotp224element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p224elementdotP224Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>).square(_y);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p224.go#L136"
        if (_rhs.equal(_lhs) != ((1 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p224.go#L137"
            return stdgo._internal.errors.Errors_new_.new_(("P224 point not on curve" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p224.go#L139"
        return (null : stdgo.Error);
    }

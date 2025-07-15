package stdgo._internal.crypto.internal.nistec;
import stdgo._internal.errors.Errors;
import stdgo._internal.crypto.subtle.Subtle;
function _p521Polynomial(_y2:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>, _x:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>):stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element> {
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L122"
        _y2.square(_x);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L123"
        _y2.mul(_y2, _x);
        var _threeX = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p521elementdotp521element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p521elementdotP521Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>).add(_x, _x);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L126"
        _threeX.add(_threeX, _x);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L127"
        _y2.sub(_y2, _threeX);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L129"
        return _y2.add(_y2, stdgo._internal.crypto.internal.nistec.Nistec__p521b._p521B());
    }

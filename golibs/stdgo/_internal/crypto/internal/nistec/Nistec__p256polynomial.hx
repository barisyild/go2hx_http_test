package stdgo._internal.crypto.internal.nistec;
import stdgo._internal.errors.Errors;
import stdgo._internal.crypto.subtle.Subtle;
function _p256Polynomial(_y2:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>, _x:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>):stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element> {
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L124"
        _y2.square(_x);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L125"
        _y2.mul(_y2, _x);
        var _threeX = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p256elementdotp256element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p256elementdotP256Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>).add(_x, _x);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L128"
        _threeX.add(_threeX, _x);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L129"
        _y2.sub(_y2, _threeX);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L131"
        return _y2.add(_y2, stdgo._internal.crypto.internal.nistec.Nistec__p256b._p256B());
    }

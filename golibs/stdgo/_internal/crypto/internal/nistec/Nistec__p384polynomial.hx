package stdgo._internal.crypto.internal.nistec;
import stdgo._internal.errors.Errors;
import stdgo._internal.crypto.subtle.Subtle;
function _p384Polynomial(_y2:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>, _x:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>):stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element> {
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L122"
        _y2.square(_x);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L123"
        _y2.mul(_y2, _x);
        var _threeX = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p384elementdotp384element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p384elementdotP384Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>).add(_x, _x);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L126"
        _threeX.add(_threeX, _x);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L127"
        _y2.sub(_y2, _threeX);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L129"
        return _y2.add(_y2, stdgo._internal.crypto.internal.nistec.Nistec__p384b._p384B());
    }

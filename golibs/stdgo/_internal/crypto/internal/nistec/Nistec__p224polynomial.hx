package stdgo._internal.crypto.internal.nistec;
import stdgo._internal.errors.Errors;
import stdgo._internal.crypto.subtle.Subtle;
function _p224Polynomial(_y2:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>, _x:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>):stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element> {
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p224.go#L122"
        _y2.square(_x);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p224.go#L123"
        _y2.mul(_y2, _x);
        var _threeX = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p224elementdotp224element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p224elementdotP224Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>).add(_x, _x);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p224.go#L126"
        _threeX.add(_threeX, _x);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p224.go#L127"
        _y2.sub(_y2, _threeX);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p224.go#L129"
        return _y2.add(_y2, stdgo._internal.crypto.internal.nistec.Nistec__p224b._p224B());
    }

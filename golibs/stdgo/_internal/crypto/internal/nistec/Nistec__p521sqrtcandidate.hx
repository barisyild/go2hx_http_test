package stdgo._internal.crypto.internal.nistec;
import stdgo._internal.errors.Errors;
import stdgo._internal.crypto.subtle.Subtle;
function _p521SqrtCandidate(_z:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>, _x:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>):Void {
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L465"
        _z.square(_x);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L466"
        {
            var _s = @:assignType (1 : stdgo.GoInt);
            while ((_s < (519 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L467"
                _z.square(_z);
                _s++;
            };
        };
    }

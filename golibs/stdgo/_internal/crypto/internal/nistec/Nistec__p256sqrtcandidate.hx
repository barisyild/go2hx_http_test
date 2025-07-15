package stdgo._internal.crypto.internal.nistec;
import stdgo._internal.errors.Errors;
import stdgo._internal.crypto.subtle.Subtle;
function _p256SqrtCandidate(_z:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>, _x:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>):Void {
        var _t0 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p256elementdotp256element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p256elementdotP256Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L476"
        _z.square(_x);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L477"
        _z.mul(_x, _z);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L478"
        _t0.square(_z);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L479"
        {
            var _s = @:assignType (1 : stdgo.GoInt);
            while ((_s < (2 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L480"
                _t0.square(_t0);
                _s++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L482"
        _z.mul(_z, _t0);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L483"
        _t0.square(_z);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L484"
        {
            var _s = @:assignType (1 : stdgo.GoInt);
            while ((_s < (4 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L485"
                _t0.square(_t0);
                _s++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L487"
        _z.mul(_z, _t0);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L488"
        _t0.square(_z);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L489"
        {
            var _s = @:assignType (1 : stdgo.GoInt);
            while ((_s < (8 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L490"
                _t0.square(_t0);
                _s++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L492"
        _z.mul(_z, _t0);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L493"
        _t0.square(_z);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L494"
        {
            var _s = @:assignType (1 : stdgo.GoInt);
            while ((_s < (16 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L495"
                _t0.square(_t0);
                _s++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L497"
        _z.mul(_z, _t0);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L498"
        {
            var _s = @:assignType (0 : stdgo.GoInt);
            while ((_s < (32 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L499"
                _z.square(_z);
                _s++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L501"
        _z.mul(_x, _z);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L502"
        {
            var _s = @:assignType (0 : stdgo.GoInt);
            while ((_s < (96 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L503"
                _z.square(_z);
                _s++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L505"
        _z.mul(_x, _z);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L506"
        {
            var _s = @:assignType (0 : stdgo.GoInt);
            while ((_s < (94 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L507"
                _z.square(_z);
                _s++;
            };
        };
    }

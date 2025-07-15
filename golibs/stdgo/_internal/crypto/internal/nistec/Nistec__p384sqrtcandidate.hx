package stdgo._internal.crypto.internal.nistec;
import stdgo._internal.errors.Errors;
import stdgo._internal.crypto.subtle.Subtle;
function _p384SqrtCandidate(_z:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>, _x:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>):Void {
        var _t0 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p384elementdotp384element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p384elementdotP384Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>);
        var _t1 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p384elementdotp384element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p384elementdotP384Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>);
        var _t2 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p384elementdotp384element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p384elementdotP384Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L484"
        _z.square(_x);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L485"
        _z.mul(_x, _z);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L486"
        _z.square(_z);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L487"
        _t0.mul(_x, _z);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L488"
        _z.square(_t0);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L489"
        {
            var _s = @:assignType (1 : stdgo.GoInt);
            while ((_s < (3 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L490"
                _z.square(_z);
                _s++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L492"
        _t1.mul(_t0, _z);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L493"
        _t2.square(_t1);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L494"
        _z.mul(_x, _t2);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L495"
        {
            var _s = @:assignType (0 : stdgo.GoInt);
            while ((_s < (5 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L496"
                _t2.square(_t2);
                _s++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L498"
        _t1.mul(_t1, _t2);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L499"
        _t2.square(_t1);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L500"
        {
            var _s = @:assignType (1 : stdgo.GoInt);
            while ((_s < (12 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L501"
                _t2.square(_t2);
                _s++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L503"
        _t1.mul(_t1, _t2);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L504"
        {
            var _s = @:assignType (0 : stdgo.GoInt);
            while ((_s < (7 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L505"
                _t1.square(_t1);
                _s++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L507"
        _t1.mul(_z, _t1);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L508"
        _z.square(_t1);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L509"
        _z.mul(_x, _z);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L510"
        _t2.square(_z);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L511"
        {
            var _s = @:assignType (1 : stdgo.GoInt);
            while ((_s < (31 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L512"
                _t2.square(_t2);
                _s++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L514"
        _t1.mul(_t1, _t2);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L515"
        _t2.square(_t1);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L516"
        {
            var _s = @:assignType (1 : stdgo.GoInt);
            while ((_s < (63 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L517"
                _t2.square(_t2);
                _s++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L519"
        _t1.mul(_t1, _t2);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L520"
        _t2.square(_t1);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L521"
        {
            var _s = @:assignType (1 : stdgo.GoInt);
            while ((_s < (126 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L522"
                _t2.square(_t2);
                _s++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L524"
        _t1.mul(_t1, _t2);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L525"
        {
            var _s = @:assignType (0 : stdgo.GoInt);
            while ((_s < (3 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L526"
                _t1.square(_t1);
                _s++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L528"
        _t0.mul(_t0, _t1);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L529"
        {
            var _s = @:assignType (0 : stdgo.GoInt);
            while ((_s < (33 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L530"
                _t0.square(_t0);
                _s++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L532"
        _z.mul(_z, _t0);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L533"
        {
            var _s = @:assignType (0 : stdgo.GoInt);
            while ((_s < (64 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L534"
                _z.square(_z);
                _s++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L536"
        _z.mul(_x, _z);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L537"
        {
            var _s = @:assignType (0 : stdgo.GoInt);
            while ((_s < (30 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L538"
                _z.square(_z);
                _s++;
            };
        };
    }

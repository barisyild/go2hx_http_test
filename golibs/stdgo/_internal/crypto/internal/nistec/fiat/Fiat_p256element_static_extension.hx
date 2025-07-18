package stdgo._internal.crypto.internal.nistec.fiat;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.errors.Errors;
@:keep @:allow(stdgo._internal.crypto.internal.nistec.fiat.Fiat.P256Element_asInterface) class P256Element_static_extension {
    @:keep
    @:tdfield
    static public function invert( _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>, _x:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>):stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element> {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element> = _e;
        var _z = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p256elementdotp256element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p256elementdotP256Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>).set(_e);
        var _t0 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p256elementdotp256element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p256elementdotP256Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>);
        var _t1 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p256elementdotp256element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p256elementdotP256Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256_invert.go#L37"
        _z.square(_x);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256_invert.go#L38"
        _z.mul(_x, _z);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256_invert.go#L39"
        _z.square(_z);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256_invert.go#L40"
        _z.mul(_x, _z);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256_invert.go#L41"
        _t0.square(_z);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256_invert.go#L42"
        {
            var _s = @:assignType (1 : stdgo.GoInt);
            while ((_s < (3 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256_invert.go#L43"
                _t0.square(_t0);
                _s++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256_invert.go#L45"
        _t0.mul(_z, _t0);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256_invert.go#L46"
        _t1.square(_t0);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256_invert.go#L47"
        {
            var _s = @:assignType (1 : stdgo.GoInt);
            while ((_s < (6 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256_invert.go#L48"
                _t1.square(_t1);
                _s++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256_invert.go#L50"
        _t0.mul(_t0, _t1);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256_invert.go#L51"
        {
            var _s = @:assignType (0 : stdgo.GoInt);
            while ((_s < (3 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256_invert.go#L52"
                _t0.square(_t0);
                _s++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256_invert.go#L54"
        _z.mul(_z, _t0);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256_invert.go#L55"
        _t0.square(_z);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256_invert.go#L56"
        _t0.mul(_x, _t0);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256_invert.go#L57"
        _t1.square(_t0);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256_invert.go#L58"
        {
            var _s = @:assignType (1 : stdgo.GoInt);
            while ((_s < (16 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256_invert.go#L59"
                _t1.square(_t1);
                _s++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256_invert.go#L61"
        _t0.mul(_t0, _t1);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256_invert.go#L62"
        {
            var _s = @:assignType (0 : stdgo.GoInt);
            while ((_s < (15 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256_invert.go#L63"
                _t0.square(_t0);
                _s++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256_invert.go#L65"
        _z.mul(_z, _t0);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256_invert.go#L66"
        {
            var _s = @:assignType (0 : stdgo.GoInt);
            while ((_s < (17 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256_invert.go#L67"
                _t0.square(_t0);
                _s++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256_invert.go#L69"
        _t0.mul(_x, _t0);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256_invert.go#L70"
        {
            var _s = @:assignType (0 : stdgo.GoInt);
            while ((_s < (143 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256_invert.go#L71"
                _t0.square(_t0);
                _s++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256_invert.go#L73"
        _t0.mul(_z, _t0);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256_invert.go#L74"
        {
            var _s = @:assignType (0 : stdgo.GoInt);
            while ((_s < (47 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256_invert.go#L75"
                _t0.square(_t0);
                _s++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256_invert.go#L77"
        _z.mul(_z, _t0);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256_invert.go#L78"
        {
            var _s = @:assignType (0 : stdgo.GoInt);
            while ((_s < (2 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256_invert.go#L79"
                _z.square(_z);
                _s++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256_invert.go#L81"
        _z.mul(_x, _z);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256_invert.go#L83"
        return _e.set(_z);
    }
    @:keep
    @:tdfield
    static public function select( _v:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>, _a:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>, _b:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>, _cond:stdgo.GoInt):stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element> = _v;
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256.go#L125"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p256selectznz._p256Selectznz(((stdgo.Go.setRef((@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_t_p256montgomerydomainfieldelementdott_p256montgomerydomainfieldelement.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_t_p256montgomerydomainfieldelementdotT_p256MontgomeryDomainFieldElement })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256montgomerydomainfieldelement.T_p256MontgomeryDomainFieldElement>) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>), (_cond : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1), ((stdgo.Go.setRef((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_t_p256montgomerydomainfieldelementdott_p256montgomerydomainfieldelement.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_t_p256montgomerydomainfieldelementdotT_p256MontgomeryDomainFieldElement })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256montgomerydomainfieldelement.T_p256MontgomeryDomainFieldElement>) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>), ((stdgo.Go.setRef((@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_t_p256montgomerydomainfieldelementdott_p256montgomerydomainfieldelement.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_t_p256montgomerydomainfieldelementdotT_p256MontgomeryDomainFieldElement })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256montgomerydomainfieldelement.T_p256MontgomeryDomainFieldElement>) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256.go#L127"
        return _v;
    }
    @:keep
    @:tdfield
    static public function square( _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>, _t:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>):stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element> {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element> = _e;
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256.go#L119"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p256square._p256Square((stdgo.Go.setRef((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_t_p256montgomerydomainfieldelementdott_p256montgomerydomainfieldelement.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_t_p256montgomerydomainfieldelementdotT_p256MontgomeryDomainFieldElement })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256montgomerydomainfieldelement.T_p256MontgomeryDomainFieldElement>), (stdgo.Go.setRef((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_t_p256montgomerydomainfieldelementdott_p256montgomerydomainfieldelement.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_t_p256montgomerydomainfieldelementdotT_p256MontgomeryDomainFieldElement })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256montgomerydomainfieldelement.T_p256MontgomeryDomainFieldElement>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256.go#L120"
        return _e;
    }
    @:keep
    @:tdfield
    static public function mul( _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>, _t1:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>, _t2:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>):stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element> {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element> = _e;
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256.go#L113"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p256mul._p256Mul((stdgo.Go.setRef((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_t_p256montgomerydomainfieldelementdott_p256montgomerydomainfieldelement.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_t_p256montgomerydomainfieldelementdotT_p256MontgomeryDomainFieldElement })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256montgomerydomainfieldelement.T_p256MontgomeryDomainFieldElement>), (stdgo.Go.setRef((@:checkr _t1 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_t_p256montgomerydomainfieldelementdott_p256montgomerydomainfieldelement.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_t_p256montgomerydomainfieldelementdotT_p256MontgomeryDomainFieldElement })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256montgomerydomainfieldelement.T_p256MontgomeryDomainFieldElement>), (stdgo.Go.setRef((@:checkr _t2 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_t_p256montgomerydomainfieldelementdott_p256montgomerydomainfieldelement.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_t_p256montgomerydomainfieldelementdotT_p256MontgomeryDomainFieldElement })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256montgomerydomainfieldelement.T_p256MontgomeryDomainFieldElement>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256.go#L114"
        return _e;
    }
    @:keep
    @:tdfield
    static public function sub( _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>, _t1:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>, _t2:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>):stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element> {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element> = _e;
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256.go#L107"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p256sub._p256Sub((stdgo.Go.setRef((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_t_p256montgomerydomainfieldelementdott_p256montgomerydomainfieldelement.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_t_p256montgomerydomainfieldelementdotT_p256MontgomeryDomainFieldElement })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256montgomerydomainfieldelement.T_p256MontgomeryDomainFieldElement>), (stdgo.Go.setRef((@:checkr _t1 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_t_p256montgomerydomainfieldelementdott_p256montgomerydomainfieldelement.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_t_p256montgomerydomainfieldelementdotT_p256MontgomeryDomainFieldElement })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256montgomerydomainfieldelement.T_p256MontgomeryDomainFieldElement>), (stdgo.Go.setRef((@:checkr _t2 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_t_p256montgomerydomainfieldelementdott_p256montgomerydomainfieldelement.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_t_p256montgomerydomainfieldelementdotT_p256MontgomeryDomainFieldElement })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256montgomerydomainfieldelement.T_p256MontgomeryDomainFieldElement>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256.go#L108"
        return _e;
    }
    @:keep
    @:tdfield
    static public function add( _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>, _t1:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>, _t2:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>):stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element> {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element> = _e;
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256.go#L101"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p256add._p256Add((stdgo.Go.setRef((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_t_p256montgomerydomainfieldelementdott_p256montgomerydomainfieldelement.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_t_p256montgomerydomainfieldelementdotT_p256MontgomeryDomainFieldElement })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256montgomerydomainfieldelement.T_p256MontgomeryDomainFieldElement>), (stdgo.Go.setRef((@:checkr _t1 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_t_p256montgomerydomainfieldelementdott_p256montgomerydomainfieldelement.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_t_p256montgomerydomainfieldelementdotT_p256MontgomeryDomainFieldElement })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256montgomerydomainfieldelement.T_p256MontgomeryDomainFieldElement>), (stdgo.Go.setRef((@:checkr _t2 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_t_p256montgomerydomainfieldelementdott_p256montgomerydomainfieldelement.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_t_p256montgomerydomainfieldelementdotT_p256MontgomeryDomainFieldElement })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256montgomerydomainfieldelement.T_p256MontgomeryDomainFieldElement>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256.go#L102"
        return _e;
    }
    @:keep
    @:tdfield
    static public function setBytes( _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>, _v:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>; var _1 : stdgo.Error; } {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element> = _e;
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256.go#L73"
        if ((_v.length) != ((32 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256.go#L74"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("invalid P256Element encoding" : stdgo.GoString)) };
        };
        var _minusOneEncoding = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p256elementdotp256element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p256elementdotP256Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>).sub((stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p256elementdotp256element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p256elementdotP256Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>), (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p256elementdotp256element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p256elementdotP256Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>).one()).bytes();
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256.go#L81"
        if (_v != null) for (_i => _ in _v) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256.go#L82"
            if ((_v[(_i : stdgo.GoInt)] < _minusOneEncoding[(_i : stdgo.GoInt)] : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256.go#L83"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256.go#L85"
            if ((_v[(_i : stdgo.GoInt)] > _minusOneEncoding[(_i : stdgo.GoInt)] : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256.go#L86"
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("invalid P256Element encoding" : stdgo.GoString)) };
            };
        };
        var _in:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(32, 32).__setNumber32__();
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256.go#L91"
        (_in.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_v);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256.go#L92"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p256invertendianness._p256InvertEndianness((_in.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
        var _tmp:stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256nonmontgomerydomainfieldelement.T_p256NonMontgomeryDomainFieldElement = new stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256nonmontgomerydomainfieldelement.T_p256NonMontgomeryDomainFieldElement(4, 4, ...[for (i in 0 ... 4) (0 : stdgo.GoUInt64)]);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256.go#L94"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p256frombytes._p256FromBytes(((stdgo.Go.setRef(_tmp, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_t_p256nonmontgomerydomainfieldelementdott_p256nonmontgomerydomainfieldelement.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_t_p256nonmontgomerydomainfieldelementdotT_p256NonMontgomeryDomainFieldElement })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256nonmontgomerydomainfieldelement.T_p256NonMontgomeryDomainFieldElement>) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>), (stdgo.Go.setRef(_in, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 32) })) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256.go#L95"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p256tomontgomery._p256ToMontgomery((stdgo.Go.setRef((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_t_p256montgomerydomainfieldelementdott_p256montgomerydomainfieldelement.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_t_p256montgomerydomainfieldelementdotT_p256MontgomeryDomainFieldElement })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256montgomerydomainfieldelement.T_p256MontgomeryDomainFieldElement>), (stdgo.Go.setRef(_tmp, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_t_p256nonmontgomerydomainfieldelementdott_p256nonmontgomerydomainfieldelement.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_t_p256nonmontgomerydomainfieldelementdotT_p256NonMontgomeryDomainFieldElement })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256nonmontgomerydomainfieldelement.T_p256NonMontgomeryDomainFieldElement>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256.go#L96"
        return { _0 : _e, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _bytes( _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>, _out:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element> = _e;
        var _tmp:stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256nonmontgomerydomainfieldelement.T_p256NonMontgomeryDomainFieldElement = new stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256nonmontgomerydomainfieldelement.T_p256NonMontgomeryDomainFieldElement(4, 4, ...[for (i in 0 ... 4) (0 : stdgo.GoUInt64)]);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256.go#L63"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p256frommontgomery._p256FromMontgomery((stdgo.Go.setRef(_tmp, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_t_p256nonmontgomerydomainfieldelementdott_p256nonmontgomerydomainfieldelement.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_t_p256nonmontgomerydomainfieldelementdotT_p256NonMontgomeryDomainFieldElement })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256nonmontgomerydomainfieldelement.T_p256NonMontgomeryDomainFieldElement>), (stdgo.Go.setRef((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_t_p256montgomerydomainfieldelementdott_p256montgomerydomainfieldelement.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_t_p256montgomerydomainfieldelementdotT_p256MontgomeryDomainFieldElement })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256montgomerydomainfieldelement.T_p256MontgomeryDomainFieldElement>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256.go#L64"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p256tobytes._p256ToBytes(_out, ((stdgo.Go.setRef(_tmp, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_t_p256nonmontgomerydomainfieldelementdott_p256nonmontgomerydomainfieldelement.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_t_p256nonmontgomerydomainfieldelementdotT_p256NonMontgomeryDomainFieldElement })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256nonmontgomerydomainfieldelement.T_p256NonMontgomeryDomainFieldElement>) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256.go#L65"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p256invertendianness._p256InvertEndianness((_out.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256.go#L66"
        return (_out.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function bytes( _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element> = _e;
        var _out:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(32, 32).__setNumber32__();
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256.go#L58"
        return _e._bytes((stdgo.Go.setRef(_out, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 32) })) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>));
    }
    @:keep
    @:tdfield
    static public function set( _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>, _t:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>):stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element> {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element> = _e;
        (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x = (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256.go#L50"
        return _e;
    }
    @:keep
    @:tdfield
    static public function isZero( _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>):stdgo.GoInt {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element> = _e;
        var _zero = (new stdgo.Slice<stdgo.GoUInt8>((32 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _eBytes = _e.bytes();
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256.go#L44"
        return stdgo._internal.crypto.subtle.Subtle_constanttimecompare.constantTimeCompare(_eBytes, _zero);
    }
    @:keep
    @:tdfield
    static public function equal( _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>, _t:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>):stdgo.GoInt {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element> = _e;
        var _eBytes = _e.bytes();
        var _tBytes = _t.bytes();
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256.go#L37"
        return stdgo._internal.crypto.subtle.Subtle_constanttimecompare.constantTimeCompare(_eBytes, _tBytes);
    }
    @:keep
    @:tdfield
    static public function one( _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>):stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element> {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element> = _e;
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256.go#L29"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p256setone._p256SetOne((stdgo.Go.setRef((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_t_p256montgomerydomainfieldelementdott_p256montgomerydomainfieldelement.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_t_p256montgomerydomainfieldelementdotT_p256MontgomeryDomainFieldElement })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256montgomerydomainfieldelement.T_p256MontgomeryDomainFieldElement>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p256.go#L30"
        return _e;
    }
}

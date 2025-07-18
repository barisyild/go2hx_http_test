package stdgo._internal.crypto.internal.nistec.fiat;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.errors.Errors;
@:keep @:allow(stdgo._internal.crypto.internal.nistec.fiat.Fiat.P224Element_asInterface) class P224Element_static_extension {
    @:keep
    @:tdfield
    static public function invert( _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>, _x:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>):stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element> {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element> = _e;
        var _z = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p224elementdotp224element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p224elementdotP224Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>).set(_e);
        var _t0 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p224elementdotp224element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p224elementdotP224Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>);
        var _t1 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p224elementdotp224element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p224elementdotP224Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>);
        var _t2 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p224elementdotp224element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p224elementdotP224Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224_invert.go#L38"
        _z.square(_x);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224_invert.go#L39"
        _t0.mul(_x, _z);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224_invert.go#L40"
        _z.square(_t0);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224_invert.go#L41"
        _z.mul(_x, _z);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224_invert.go#L42"
        _t1.square(_z);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224_invert.go#L43"
        {
            var _s = @:assignType (1 : stdgo.GoInt);
            while ((_s < (3 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224_invert.go#L44"
                _t1.square(_t1);
                _s++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224_invert.go#L46"
        _t1.mul(_z, _t1);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224_invert.go#L47"
        _t2.square(_t1);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224_invert.go#L48"
        {
            var _s = @:assignType (1 : stdgo.GoInt);
            while ((_s < (6 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224_invert.go#L49"
                _t2.square(_t2);
                _s++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224_invert.go#L51"
        _t1.mul(_t1, _t2);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224_invert.go#L52"
        {
            var _s = @:assignType (0 : stdgo.GoInt);
            while ((_s < (2 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224_invert.go#L53"
                _t1.square(_t1);
                _s++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224_invert.go#L55"
        _t0.mul(_t0, _t1);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224_invert.go#L56"
        _t1.square(_t0);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224_invert.go#L57"
        {
            var _s = @:assignType (1 : stdgo.GoInt);
            while ((_s < (3 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224_invert.go#L58"
                _t1.square(_t1);
                _s++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224_invert.go#L60"
        _z.mul(_z, _t1);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224_invert.go#L61"
        _t1.square(_z);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224_invert.go#L62"
        {
            var _s = @:assignType (1 : stdgo.GoInt);
            while ((_s < (14 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224_invert.go#L63"
                _t1.square(_t1);
                _s++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224_invert.go#L65"
        _t0.mul(_t0, _t1);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224_invert.go#L66"
        _t1.square(_t0);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224_invert.go#L67"
        {
            var _s = @:assignType (1 : stdgo.GoInt);
            while ((_s < (17 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224_invert.go#L68"
                _t1.square(_t1);
                _s++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224_invert.go#L70"
        _z.mul(_z, _t1);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224_invert.go#L71"
        _t1.square(_z);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224_invert.go#L72"
        {
            var _s = @:assignType (1 : stdgo.GoInt);
            while ((_s < (48 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224_invert.go#L73"
                _t1.square(_t1);
                _s++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224_invert.go#L75"
        _z.mul(_z, _t1);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224_invert.go#L76"
        _t1.square(_z);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224_invert.go#L77"
        {
            var _s = @:assignType (1 : stdgo.GoInt);
            while ((_s < (31 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224_invert.go#L78"
                _t1.square(_t1);
                _s++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224_invert.go#L80"
        _t0.mul(_t0, _t1);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224_invert.go#L81"
        {
            var _s = @:assignType (0 : stdgo.GoInt);
            while ((_s < (97 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224_invert.go#L82"
                _t0.square(_t0);
                _s++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224_invert.go#L84"
        _z.mul(_z, _t0);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224_invert.go#L86"
        return _e.set(_z);
    }
    @:keep
    @:tdfield
    static public function select( _v:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>, _a:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>, _b:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>, _cond:stdgo.GoInt):stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element> = _v;
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224.go#L125"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p224selectznz._p224Selectznz(((stdgo.Go.setRef((@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_t_p224montgomerydomainfieldelementdott_p224montgomerydomainfieldelement.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_t_p224montgomerydomainfieldelementdotT_p224MontgomeryDomainFieldElement })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p224montgomerydomainfieldelement.T_p224MontgomeryDomainFieldElement>) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>), (_cond : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p224uint1.T_p224Uint1), ((stdgo.Go.setRef((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_t_p224montgomerydomainfieldelementdott_p224montgomerydomainfieldelement.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_t_p224montgomerydomainfieldelementdotT_p224MontgomeryDomainFieldElement })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p224montgomerydomainfieldelement.T_p224MontgomeryDomainFieldElement>) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>), ((stdgo.Go.setRef((@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_t_p224montgomerydomainfieldelementdott_p224montgomerydomainfieldelement.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_t_p224montgomerydomainfieldelementdotT_p224MontgomeryDomainFieldElement })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p224montgomerydomainfieldelement.T_p224MontgomeryDomainFieldElement>) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224.go#L127"
        return _v;
    }
    @:keep
    @:tdfield
    static public function square( _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>, _t:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>):stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element> {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element> = _e;
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224.go#L119"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p224square._p224Square((stdgo.Go.setRef((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_t_p224montgomerydomainfieldelementdott_p224montgomerydomainfieldelement.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_t_p224montgomerydomainfieldelementdotT_p224MontgomeryDomainFieldElement })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p224montgomerydomainfieldelement.T_p224MontgomeryDomainFieldElement>), (stdgo.Go.setRef((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_t_p224montgomerydomainfieldelementdott_p224montgomerydomainfieldelement.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_t_p224montgomerydomainfieldelementdotT_p224MontgomeryDomainFieldElement })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p224montgomerydomainfieldelement.T_p224MontgomeryDomainFieldElement>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224.go#L120"
        return _e;
    }
    @:keep
    @:tdfield
    static public function mul( _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>, _t1:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>, _t2:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>):stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element> {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element> = _e;
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224.go#L113"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p224mul._p224Mul((stdgo.Go.setRef((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_t_p224montgomerydomainfieldelementdott_p224montgomerydomainfieldelement.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_t_p224montgomerydomainfieldelementdotT_p224MontgomeryDomainFieldElement })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p224montgomerydomainfieldelement.T_p224MontgomeryDomainFieldElement>), (stdgo.Go.setRef((@:checkr _t1 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_t_p224montgomerydomainfieldelementdott_p224montgomerydomainfieldelement.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_t_p224montgomerydomainfieldelementdotT_p224MontgomeryDomainFieldElement })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p224montgomerydomainfieldelement.T_p224MontgomeryDomainFieldElement>), (stdgo.Go.setRef((@:checkr _t2 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_t_p224montgomerydomainfieldelementdott_p224montgomerydomainfieldelement.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_t_p224montgomerydomainfieldelementdotT_p224MontgomeryDomainFieldElement })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p224montgomerydomainfieldelement.T_p224MontgomeryDomainFieldElement>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224.go#L114"
        return _e;
    }
    @:keep
    @:tdfield
    static public function sub( _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>, _t1:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>, _t2:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>):stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element> {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element> = _e;
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224.go#L107"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p224sub._p224Sub((stdgo.Go.setRef((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_t_p224montgomerydomainfieldelementdott_p224montgomerydomainfieldelement.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_t_p224montgomerydomainfieldelementdotT_p224MontgomeryDomainFieldElement })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p224montgomerydomainfieldelement.T_p224MontgomeryDomainFieldElement>), (stdgo.Go.setRef((@:checkr _t1 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_t_p224montgomerydomainfieldelementdott_p224montgomerydomainfieldelement.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_t_p224montgomerydomainfieldelementdotT_p224MontgomeryDomainFieldElement })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p224montgomerydomainfieldelement.T_p224MontgomeryDomainFieldElement>), (stdgo.Go.setRef((@:checkr _t2 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_t_p224montgomerydomainfieldelementdott_p224montgomerydomainfieldelement.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_t_p224montgomerydomainfieldelementdotT_p224MontgomeryDomainFieldElement })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p224montgomerydomainfieldelement.T_p224MontgomeryDomainFieldElement>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224.go#L108"
        return _e;
    }
    @:keep
    @:tdfield
    static public function add( _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>, _t1:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>, _t2:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>):stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element> {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element> = _e;
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224.go#L101"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p224add._p224Add((stdgo.Go.setRef((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_t_p224montgomerydomainfieldelementdott_p224montgomerydomainfieldelement.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_t_p224montgomerydomainfieldelementdotT_p224MontgomeryDomainFieldElement })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p224montgomerydomainfieldelement.T_p224MontgomeryDomainFieldElement>), (stdgo.Go.setRef((@:checkr _t1 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_t_p224montgomerydomainfieldelementdott_p224montgomerydomainfieldelement.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_t_p224montgomerydomainfieldelementdotT_p224MontgomeryDomainFieldElement })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p224montgomerydomainfieldelement.T_p224MontgomeryDomainFieldElement>), (stdgo.Go.setRef((@:checkr _t2 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_t_p224montgomerydomainfieldelementdott_p224montgomerydomainfieldelement.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_t_p224montgomerydomainfieldelementdotT_p224MontgomeryDomainFieldElement })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p224montgomerydomainfieldelement.T_p224MontgomeryDomainFieldElement>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224.go#L102"
        return _e;
    }
    @:keep
    @:tdfield
    static public function setBytes( _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>, _v:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>; var _1 : stdgo.Error; } {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element> = _e;
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224.go#L73"
        if ((_v.length) != ((28 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224.go#L74"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("invalid P224Element encoding" : stdgo.GoString)) };
        };
        var _minusOneEncoding = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p224elementdotp224element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p224elementdotP224Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>).sub((stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p224elementdotp224element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p224elementdotP224Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>), (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p224elementdotp224element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p224elementdotP224Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>).one()).bytes();
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224.go#L81"
        if (_v != null) for (_i => _ in _v) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224.go#L82"
            if ((_v[(_i : stdgo.GoInt)] < _minusOneEncoding[(_i : stdgo.GoInt)] : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224.go#L83"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224.go#L85"
            if ((_v[(_i : stdgo.GoInt)] > _minusOneEncoding[(_i : stdgo.GoInt)] : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224.go#L86"
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("invalid P224Element encoding" : stdgo.GoString)) };
            };
        };
        var _in:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(28, 28).__setNumber32__();
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224.go#L91"
        (_in.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_v);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224.go#L92"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p224invertendianness._p224InvertEndianness((_in.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
        var _tmp:stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p224nonmontgomerydomainfieldelement.T_p224NonMontgomeryDomainFieldElement = new stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p224nonmontgomerydomainfieldelement.T_p224NonMontgomeryDomainFieldElement(4, 4, ...[for (i in 0 ... 4) (0 : stdgo.GoUInt64)]);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224.go#L94"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p224frombytes._p224FromBytes(((stdgo.Go.setRef(_tmp, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_t_p224nonmontgomerydomainfieldelementdott_p224nonmontgomerydomainfieldelement.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_t_p224nonmontgomerydomainfieldelementdotT_p224NonMontgomeryDomainFieldElement })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p224nonmontgomerydomainfieldelement.T_p224NonMontgomeryDomainFieldElement>) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>), (stdgo.Go.setRef(_in, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 28) })) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224.go#L95"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p224tomontgomery._p224ToMontgomery((stdgo.Go.setRef((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_t_p224montgomerydomainfieldelementdott_p224montgomerydomainfieldelement.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_t_p224montgomerydomainfieldelementdotT_p224MontgomeryDomainFieldElement })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p224montgomerydomainfieldelement.T_p224MontgomeryDomainFieldElement>), (stdgo.Go.setRef(_tmp, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_t_p224nonmontgomerydomainfieldelementdott_p224nonmontgomerydomainfieldelement.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_t_p224nonmontgomerydomainfieldelementdotT_p224NonMontgomeryDomainFieldElement })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p224nonmontgomerydomainfieldelement.T_p224NonMontgomeryDomainFieldElement>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224.go#L96"
        return { _0 : _e, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _bytes( _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>, _out:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element> = _e;
        var _tmp:stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p224nonmontgomerydomainfieldelement.T_p224NonMontgomeryDomainFieldElement = new stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p224nonmontgomerydomainfieldelement.T_p224NonMontgomeryDomainFieldElement(4, 4, ...[for (i in 0 ... 4) (0 : stdgo.GoUInt64)]);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224.go#L63"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p224frommontgomery._p224FromMontgomery((stdgo.Go.setRef(_tmp, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_t_p224nonmontgomerydomainfieldelementdott_p224nonmontgomerydomainfieldelement.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_t_p224nonmontgomerydomainfieldelementdotT_p224NonMontgomeryDomainFieldElement })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p224nonmontgomerydomainfieldelement.T_p224NonMontgomeryDomainFieldElement>), (stdgo.Go.setRef((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_t_p224montgomerydomainfieldelementdott_p224montgomerydomainfieldelement.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_t_p224montgomerydomainfieldelementdotT_p224MontgomeryDomainFieldElement })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p224montgomerydomainfieldelement.T_p224MontgomeryDomainFieldElement>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224.go#L64"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p224tobytes._p224ToBytes(_out, ((stdgo.Go.setRef(_tmp, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_t_p224nonmontgomerydomainfieldelementdott_p224nonmontgomerydomainfieldelement.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_t_p224nonmontgomerydomainfieldelementdotT_p224NonMontgomeryDomainFieldElement })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p224nonmontgomerydomainfieldelement.T_p224NonMontgomeryDomainFieldElement>) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224.go#L65"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p224invertendianness._p224InvertEndianness((_out.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224.go#L66"
        return (_out.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function bytes( _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element> = _e;
        var _out:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(28, 28).__setNumber32__();
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224.go#L58"
        return _e._bytes((stdgo.Go.setRef(_out, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 28) })) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>));
    }
    @:keep
    @:tdfield
    static public function set( _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>, _t:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>):stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element> {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element> = _e;
        (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x = (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224.go#L50"
        return _e;
    }
    @:keep
    @:tdfield
    static public function isZero( _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>):stdgo.GoInt {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element> = _e;
        var _zero = (new stdgo.Slice<stdgo.GoUInt8>((28 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _eBytes = _e.bytes();
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224.go#L44"
        return stdgo._internal.crypto.subtle.Subtle_constanttimecompare.constantTimeCompare(_eBytes, _zero);
    }
    @:keep
    @:tdfield
    static public function equal( _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>, _t:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>):stdgo.GoInt {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element> = _e;
        var _eBytes = _e.bytes();
        var _tBytes = _t.bytes();
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224.go#L37"
        return stdgo._internal.crypto.subtle.Subtle_constanttimecompare.constantTimeCompare(_eBytes, _tBytes);
    }
    @:keep
    @:tdfield
    static public function one( _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>):stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element> {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element> = _e;
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224.go#L29"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p224setone._p224SetOne((stdgo.Go.setRef((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_t_p224montgomerydomainfieldelementdott_p224montgomerydomainfieldelement.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_t_p224montgomerydomainfieldelementdotT_p224MontgomeryDomainFieldElement })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p224montgomerydomainfieldelement.T_p224MontgomeryDomainFieldElement>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p224.go#L30"
        return _e;
    }
}

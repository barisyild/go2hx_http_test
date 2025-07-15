package stdgo._internal.crypto.internal.edwards25519;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.subtle.Subtle;
@:keep @:allow(stdgo._internal.crypto.internal.edwards25519.Edwards25519.Point_asInterface) class Point_static_extension {
    @:keep
    @:tdfield
    static public function varTimeDoubleScalarBaseMult( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>, _a:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>, a:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>, _b:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point> = _v;
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L144"
        stdgo._internal.crypto.internal.edwards25519.Edwards25519__checkinitialized._checkInitialized(a);
        var _basepointNafTable = stdgo._internal.crypto.internal.edwards25519.Edwards25519__basepointnaftable._basepointNafTable();
        var _aTable:stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_naflookuptable5.T_nafLookupTable5 = ({} : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_naflookuptable5.T_nafLookupTable5);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L162"
        _aTable.fromP3(a);
        var _aNaf = _a._nonAdjacentForm((5u32 : stdgo.GoUInt))?.__copy__();
        var _bNaf = _b._nonAdjacentForm((8u32 : stdgo.GoUInt))?.__copy__();
        var _i = @:assignType (255 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L170"
        {
            var _j = @:assignType (_i : stdgo.GoInt);
            while ((_j >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L171"
                if (((_aNaf[(_j : stdgo.GoInt)] != (0 : stdgo.GoInt8)) || (_bNaf[(_j : stdgo.GoInt)] != (0 : stdgo.GoInt8)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L172"
                    break;
                };
                _j--;
            };
        };
        var _multA = (stdgo.Go.setRef((new stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached() : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotedwards25519_t_projcacheddott_projcached.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotEdwards25519_t_projcacheddotT_projCached })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached>);
        var _multB = (stdgo.Go.setRef((new stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached() : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotedwards25519_t_affinecacheddott_affinecached.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotEdwards25519_t_affinecacheddotT_affineCached })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached>);
        var _tmp1 = (stdgo.Go.setRef((new stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1() : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotedwards25519_t_projp1xp1dott_projp1xp1.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotEdwards25519_t_projp1xp1dotT_projP1xP1 })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1>);
        var _tmp2 = (stdgo.Go.setRef((new stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2.T_projP2() : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2.T_projP2), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotedwards25519_t_projp2dott_projp2.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotEdwards25519_t_projp2dotT_projP2 })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2.T_projP2>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L180"
        _tmp2.zero();
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L185"
        while ((_i >= (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L186"
            _tmp1.double(_tmp2);
//"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L189"
            if ((_aNaf[(_i : stdgo.GoInt)] > (0 : stdgo.GoInt8) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L190"
                _v._fromP1xP1(_tmp1);
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L191"
                _aTable.selectInto(_multA, _aNaf[(_i : stdgo.GoInt)]);
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L192"
                _tmp1.add(_v, _multA);
            } else if ((_aNaf[(_i : stdgo.GoInt)] < (0 : stdgo.GoInt8) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L194"
                _v._fromP1xP1(_tmp1);
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L195"
                _aTable.selectInto(_multA, -_aNaf[(_i : stdgo.GoInt)]);
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L196"
                _tmp1.sub(_v, _multA);
            };
//"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L199"
            if ((_bNaf[(_i : stdgo.GoInt)] > (0 : stdgo.GoInt8) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L200"
                _v._fromP1xP1(_tmp1);
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L201"
                _basepointNafTable.selectInto(_multB, _bNaf[(_i : stdgo.GoInt)]);
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L202"
                _tmp1.addAffine(_v, _multB);
            } else if ((_bNaf[(_i : stdgo.GoInt)] < (0 : stdgo.GoInt8) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L204"
                _v._fromP1xP1(_tmp1);
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L205"
                _basepointNafTable.selectInto(_multB, -_bNaf[(_i : stdgo.GoInt)]);
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L206"
                _tmp1.subAffine(_v, _multB);
            };
//"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L209"
            _tmp2.fromP1xP1(_tmp1);
            _i--;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L212"
        _v._fromP2(_tmp2);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L213"
        return _v;
    }
    @:keep
    @:tdfield
    static public function scalarMult( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>, _x:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>, _q:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point> = _v;
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L86"
        stdgo._internal.crypto.internal.edwards25519.Edwards25519__checkinitialized._checkInitialized(_q);
        var _table:stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projlookuptable.T_projLookupTable = ({} : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projlookuptable.T_projLookupTable);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L89"
        _table.fromP3(_q);
        var _digits = _x._signedRadix16()?.__copy__();
        var _multiple = (stdgo.Go.setRef((new stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached() : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotedwards25519_t_projcacheddott_projcached.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotEdwards25519_t_projcacheddotT_projCached })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached>);
        var _tmp1 = (stdgo.Go.setRef((new stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1() : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotedwards25519_t_projp1xp1dott_projp1xp1.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotEdwards25519_t_projp1xp1dotT_projP1xP1 })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1>);
        var _tmp2 = (stdgo.Go.setRef((new stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2.T_projP2() : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2.T_projP2), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotedwards25519_t_projp2dott_projp2.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotEdwards25519_t_projp2dotT_projP2 })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2.T_projP2>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L104"
        _table.selectInto(_multiple, _digits[(63 : stdgo.GoInt)]);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L106"
        _v.set(stdgo._internal.crypto.internal.edwards25519.Edwards25519_newidentitypoint.newIdentityPoint());
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L107"
        _tmp1.add(_v, _multiple);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L108"
        {
            var _i = @:assignType (62 : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L109"
                _tmp2.fromP1xP1(_tmp1);
//"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L110"
                _tmp1.double(_tmp2);
//"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L111"
                _tmp2.fromP1xP1(_tmp1);
//"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L112"
                _tmp1.double(_tmp2);
//"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L113"
                _tmp2.fromP1xP1(_tmp1);
//"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L114"
                _tmp1.double(_tmp2);
//"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L115"
                _tmp2.fromP1xP1(_tmp1);
//"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L116"
                _tmp1.double(_tmp2);
//"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L117"
                _v._fromP1xP1(_tmp1);
//"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L118"
                _table.selectInto(_multiple, _digits[(_i : stdgo.GoInt)]);
//"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L119"
                _tmp1.add(_v, _multiple);
                _i--;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L121"
        _v._fromP1xP1(_tmp1);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L122"
        return _v;
    }
    @:keep
    @:tdfield
    static public function scalarBaseMult( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>, _x:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point> = _v;
        var _basepointTable = stdgo._internal.crypto.internal.edwards25519.Edwards25519__basepointtable._basepointTable();
        var _digits = _x._signedRadix16()?.__copy__();
        var _multiple = (stdgo.Go.setRef((new stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached() : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotedwards25519_t_affinecacheddott_affinecached.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotEdwards25519_t_affinecacheddotT_affineCached })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached>);
        var _tmp1 = (stdgo.Go.setRef((new stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1() : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotedwards25519_t_projp1xp1dott_projp1xp1.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotEdwards25519_t_projp1xp1dotT_projP1xP1 })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1>);
        var _tmp2 = (stdgo.Go.setRef((new stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2.T_projP2() : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2.T_projP2), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotedwards25519_t_projp2dott_projp2.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotEdwards25519_t_projp2dotT_projP2 })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2.T_projP2>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L54"
        _v.set(stdgo._internal.crypto.internal.edwards25519.Edwards25519_newidentitypoint.newIdentityPoint());
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L55"
        {
            var _i = @:assignType (1 : stdgo.GoInt);
            while ((_i < (64 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L56"
                _basepointTable[(_i / (2 : stdgo.GoInt) : stdgo.GoInt)].selectInto(_multiple, _digits[(_i : stdgo.GoInt)]);
//"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L57"
                _tmp1.addAffine(_v, _multiple);
//"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L58"
                _v._fromP1xP1(_tmp1);
                _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L62"
        _tmp2.fromP3(_v);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L63"
        _tmp1.double(_tmp2);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L64"
        _tmp2.fromP1xP1(_tmp1);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L65"
        _tmp1.double(_tmp2);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L66"
        _tmp2.fromP1xP1(_tmp1);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L67"
        _tmp1.double(_tmp2);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L68"
        _tmp2.fromP1xP1(_tmp1);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L69"
        _tmp1.double(_tmp2);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L70"
        _v._fromP1xP1(_tmp1);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L73"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (64 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L74"
                _basepointTable[(_i / (2 : stdgo.GoInt) : stdgo.GoInt)].selectInto(_multiple, _digits[(_i : stdgo.GoInt)]);
//"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L75"
                _tmp1.addAffine(_v, _multiple);
//"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L76"
                _v._fromP1xP1(_tmp1);
                _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L79"
        return _v;
    }
    @:keep
    @:tdfield
    static public function equal( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>, _u:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>):stdgo.GoInt {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point> = _v;
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L384"
        stdgo._internal.crypto.internal.edwards25519.Edwards25519__checkinitialized._checkInitialized(_v, _u);
        var _t1:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), _t2:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), _t3:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), _t4:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L387"
        _t1.multiply((stdgo.Go.setRef((@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._z, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L388"
        _t2.multiply((stdgo.Go.setRef((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._z, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L389"
        _t3.multiply((stdgo.Go.setRef((@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._y, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._z, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L390"
        _t4.multiply((stdgo.Go.setRef((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._y, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._z, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L392"
        return (_t1.equal((stdgo.Go.setRef(_t2, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>)) & _t3.equal((stdgo.Go.setRef(_t4, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>)) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function negate( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>, _p:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point> = _v;
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L374"
        stdgo._internal.crypto.internal.edwards25519.Edwards25519__checkinitialized._checkInitialized(_p);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L375"
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x.negate((stdgo.Go.setRef((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L376"
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._y.set((stdgo.Go.setRef((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._y, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L377"
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._z.set((stdgo.Go.setRef((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._z, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L378"
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t.negate((stdgo.Go.setRef((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L379"
        return _v;
    }
    @:keep
    @:tdfield
    static public function subtract( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>, _p:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>, _q:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point> = _v;
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L266"
        stdgo._internal.crypto.internal.edwards25519.Edwards25519__checkinitialized._checkInitialized(_p, _q);
        var _qCached = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotedwards25519_t_projcacheddott_projcached.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotEdwards25519_t_projcacheddotT_projCached })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached>).fromP3(_q);
        var _result = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotedwards25519_t_projp1xp1dott_projp1xp1.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotEdwards25519_t_projp1xp1dotT_projP1xP1 })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1>).sub(_p, _qCached);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L269"
        return _v._fromP1xP1(_result);
    }
    @:keep
    @:tdfield
    static public function add( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>, _p:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>, _q:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point> = _v;
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L258"
        stdgo._internal.crypto.internal.edwards25519.Edwards25519__checkinitialized._checkInitialized(_p, _q);
        var _qCached = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotedwards25519_t_projcacheddott_projcached.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotEdwards25519_t_projcacheddotT_projCached })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached>).fromP3(_q);
        var _result = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotedwards25519_t_projp1xp1dott_projp1xp1.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotEdwards25519_t_projp1xp1dotT_projP1xP1 })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1>).add(_p, _qCached);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L261"
        return _v._fromP1xP1(_result);
    }
    @:keep
    @:tdfield
    static public function _fromP2( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>, _p:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2.T_projP2>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point> = _v;
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L218"
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x.multiply((stdgo.Go.setRef((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).z, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L219"
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._y.multiply((stdgo.Go.setRef((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).y, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).z, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L220"
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._z.square((stdgo.Go.setRef((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).z, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L221"
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t.multiply((stdgo.Go.setRef((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).y, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L222"
        return _v;
    }
    @:keep
    @:tdfield
    static public function _fromP1xP1( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>, _p:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point> = _v;
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L210"
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x.multiply((stdgo.Go.setRef((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).t, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L211"
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._y.multiply((stdgo.Go.setRef((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).y, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).z, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L212"
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._z.multiply((stdgo.Go.setRef((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).z, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).t, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L213"
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t.multiply((stdgo.Go.setRef((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).y, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L214"
        return _v;
    }
    @:keep
    @:tdfield
    static public function setBytes( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>, _x:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>; var _1 : stdgo.Error; } {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point> = _v;
        var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>).setBytes(_x), _y:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L154"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L155"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("edwards25519: invalid point encoding length" : stdgo.GoString)) };
        };
        var _y2 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>).square(_y);
        var _u = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>).subtract(_y2, stdgo._internal.crypto.internal.edwards25519.Edwards25519__feone._feOne);
        var _vv = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>).multiply(_y2, stdgo._internal.crypto.internal.edwards25519.Edwards25519__d._d);
        _vv = _vv.add(_vv, stdgo._internal.crypto.internal.edwards25519.Edwards25519__feone._feOne);
        var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>).sqrtRatio(_u, _vv), _xx:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> = __tmp__._0, _wasSquare:stdgo.GoInt = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L172"
        if (_wasSquare == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L173"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("edwards25519: invalid point encoding" : stdgo.GoString)) };
        };
        var _xxNeg = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>).negate(_xx);
        _xx = _xx.select(_xxNeg, _xx, ((_x[(31 : stdgo.GoInt)] >> (7i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L180"
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x.set(_xx);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L181"
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._y.set(_y);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L182"
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._z.one();
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L183"
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t.multiply(_xx, _y);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L185"
        return { _0 : _v, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _bytes( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>, _buf:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point> = _v;
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L123"
        stdgo._internal.crypto.internal.edwards25519.Edwards25519__checkinitialized._checkInitialized(_v);
        var _zInv:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), _x:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), _y:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L126"
        _zInv.invert((stdgo.Go.setRef((@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._z, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L127"
        _x.multiply((stdgo.Go.setRef((@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(_zInv, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L128"
        _y.multiply((stdgo.Go.setRef((@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._y, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(_zInv, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        var _out = stdgo._internal.crypto.internal.edwards25519.Edwards25519__copyfieldelement._copyFieldElement(_buf, (stdgo.Go.setRef(_y, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        _out[(31 : stdgo.GoInt)] = (_out[(31 : stdgo.GoInt)] | (((_x.isNegative() << (7i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8)) : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L132"
        return _out;
    }
    @:keep
    @:tdfield
    static public function bytes( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point> = _v;
        var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(32, 32).__setNumber32__();
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L119"
        return _v._bytes((stdgo.Go.setRef(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 32) })) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>));
    }
    @:keep
    @:tdfield
    static public function set( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>, _u:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point> = _v;
        {
            var __tmp__ = (_u : stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point)?.__copy__();
            var x = (_v : stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point);
            x.__0 = __tmp__?.__0;
            x._x = __tmp__?._x;
            x._y = __tmp__?._y;
            x._z = __tmp__?._z;
            x._t = __tmp__?._t;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L108"
        return _v;
    }
}

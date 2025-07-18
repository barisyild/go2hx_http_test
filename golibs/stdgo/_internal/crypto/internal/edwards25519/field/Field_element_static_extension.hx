package stdgo._internal.crypto.internal.edwards25519.field;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.subtle.Subtle;
@:keep @:allow(stdgo._internal.crypto.internal.edwards25519.field.Field.Element_asInterface) class Element_static_extension {
    @:keep
    @:tdfield
    static public function _carryPropagateGeneric( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> = _v;
        var _c0 = @:assignType ((@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l0 >> (51i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _c1 = @:assignType ((@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l1 >> (51i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _c2 = @:assignType ((@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l2 >> (51i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _c3 = @:assignType ((@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l3 >> (51i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _c4 = @:assignType ((@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l4 >> (51i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l0 = (((@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l0 & (2251799813685247i64 : stdgo.GoUInt64) : stdgo.GoUInt64) + (_c4 * (19i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l1 = (((@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l1 & (2251799813685247i64 : stdgo.GoUInt64) : stdgo.GoUInt64) + _c0 : stdgo.GoUInt64);
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l2 = (((@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l2 & (2251799813685247i64 : stdgo.GoUInt64) : stdgo.GoUInt64) + _c1 : stdgo.GoUInt64);
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l3 = (((@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l3 & (2251799813685247i64 : stdgo.GoUInt64) : stdgo.GoUInt64) + _c2 : stdgo.GoUInt64);
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l4 = (((@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l4 & (2251799813685247i64 : stdgo.GoUInt64) : stdgo.GoUInt64) + _c3 : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe_generic.go#L265"
        return _v;
    }
    @:keep
    @:tdfield
    static public function _carryPropagate( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> = _v;
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe_arm64_noasm.go#L10"
        return _v._carryPropagateGeneric();
    }
    @:keep
    @:tdfield
    static public function sqrtRatio( _r:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>, _u:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>, _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>; var _1 : stdgo.GoInt; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> = _r;
        var r = (null : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), _wasSquare = (0 : stdgo.GoInt);
        var _t0 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>);
        var _v2 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>).square(_v);
        var _uv3 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>).multiply(_u, _t0.multiply(_v2, _v));
        var _uv7 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>).multiply(_uv3, _t0.square(_v2));
        var _rr = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>).multiply(_uv3, _t0.pow22523(_uv7));
        var _check = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>).multiply(_v, _t0.square(_rr));
        var _uNeg = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>).negate(_u);
        var _correctSignSqrt = @:assignType (_check.equal(_u) : stdgo.GoInt);
        var _flippedSignSqrt = @:assignType (_check.equal(_uNeg) : stdgo.GoInt);
        var _flippedSignSqrtI = @:assignType (_check.equal(_t0.multiply(_uNeg, stdgo._internal.crypto.internal.edwards25519.field.Field__sqrtm1._sqrtM1)) : stdgo.GoInt);
        var _rPrime = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>).multiply(_rr, stdgo._internal.crypto.internal.edwards25519.field.Field__sqrtm1._sqrtM1);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L416"
        _rr.select(_rPrime, _rr, (_flippedSignSqrt | _flippedSignSqrtI : stdgo.GoInt));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L418"
        _r.absolute(_rr);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L419"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>; var _1 : stdgo.GoInt; } = { _0 : _r, _1 : (_correctSignSqrt | _flippedSignSqrt : stdgo.GoInt) };
            r = __tmp__._0;
            _wasSquare = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function pow22523( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>, _x:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> = _v;
        var _t0:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), _t1:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), _t2:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L342"
        _t0.square(_x);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L343"
        _t1.square((stdgo.Go.setRef(_t0, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L344"
        _t1.square((stdgo.Go.setRef(_t1, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L345"
        _t1.multiply(_x, (stdgo.Go.setRef(_t1, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L346"
        _t0.multiply((stdgo.Go.setRef(_t0, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(_t1, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L347"
        _t0.square((stdgo.Go.setRef(_t0, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L348"
        _t0.multiply((stdgo.Go.setRef(_t1, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(_t0, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L349"
        _t1.square((stdgo.Go.setRef(_t0, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L350"
        {
            var _i = @:assignType (1 : stdgo.GoInt);
            while ((_i < (5 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L351"
                _t1.square((stdgo.Go.setRef(_t1, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L353"
        _t0.multiply((stdgo.Go.setRef(_t1, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(_t0, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L354"
        _t1.square((stdgo.Go.setRef(_t0, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L355"
        {
            var _i = @:assignType (1 : stdgo.GoInt);
            while ((_i < (10 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L356"
                _t1.square((stdgo.Go.setRef(_t1, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L358"
        _t1.multiply((stdgo.Go.setRef(_t1, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(_t0, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L359"
        _t2.square((stdgo.Go.setRef(_t1, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L360"
        {
            var _i = @:assignType (1 : stdgo.GoInt);
            while ((_i < (20 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L361"
                _t2.square((stdgo.Go.setRef(_t2, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L363"
        _t1.multiply((stdgo.Go.setRef(_t2, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(_t1, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L364"
        _t1.square((stdgo.Go.setRef(_t1, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L365"
        {
            var _i = @:assignType (1 : stdgo.GoInt);
            while ((_i < (10 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L366"
                _t1.square((stdgo.Go.setRef(_t1, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L368"
        _t0.multiply((stdgo.Go.setRef(_t1, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(_t0, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L369"
        _t1.square((stdgo.Go.setRef(_t0, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L370"
        {
            var _i = @:assignType (1 : stdgo.GoInt);
            while ((_i < (50 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L371"
                _t1.square((stdgo.Go.setRef(_t1, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L373"
        _t1.multiply((stdgo.Go.setRef(_t1, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(_t0, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L374"
        _t2.square((stdgo.Go.setRef(_t1, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L375"
        {
            var _i = @:assignType (1 : stdgo.GoInt);
            while ((_i < (100 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L376"
                _t2.square((stdgo.Go.setRef(_t2, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L378"
        _t1.multiply((stdgo.Go.setRef(_t2, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(_t1, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L379"
        _t1.square((stdgo.Go.setRef(_t1, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L380"
        {
            var _i = @:assignType (1 : stdgo.GoInt);
            while ((_i < (50 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L381"
                _t1.square((stdgo.Go.setRef(_t1, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L383"
        _t0.multiply((stdgo.Go.setRef(_t1, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(_t0, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L384"
        _t0.square((stdgo.Go.setRef(_t0, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L385"
        _t0.square((stdgo.Go.setRef(_t0, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L386"
        return _v.multiply((stdgo.Go.setRef(_t0, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), _x);
    }
    @:keep
    @:tdfield
    static public function mult32( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>, _x:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>, _y:stdgo.GoUInt32):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> = _v;
        var __tmp__ = stdgo._internal.crypto.internal.edwards25519.field.Field__mul51._mul51((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l0, _y), _x0lo:stdgo.GoUInt64 = __tmp__._0, _x0hi:stdgo.GoUInt64 = __tmp__._1;
        var __tmp__ = stdgo._internal.crypto.internal.edwards25519.field.Field__mul51._mul51((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l1, _y), _x1lo:stdgo.GoUInt64 = __tmp__._0, _x1hi:stdgo.GoUInt64 = __tmp__._1;
        var __tmp__ = stdgo._internal.crypto.internal.edwards25519.field.Field__mul51._mul51((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l2, _y), _x2lo:stdgo.GoUInt64 = __tmp__._0, _x2hi:stdgo.GoUInt64 = __tmp__._1;
        var __tmp__ = stdgo._internal.crypto.internal.edwards25519.field.Field__mul51._mul51((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l3, _y), _x3lo:stdgo.GoUInt64 = __tmp__._0, _x3hi:stdgo.GoUInt64 = __tmp__._1;
        var __tmp__ = stdgo._internal.crypto.internal.edwards25519.field.Field__mul51._mul51((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l4, _y), _x4lo:stdgo.GoUInt64 = __tmp__._0, _x4hi:stdgo.GoUInt64 = __tmp__._1;
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l0 = (_x0lo + ((19i64 : stdgo.GoUInt64) * _x4hi : stdgo.GoUInt64) : stdgo.GoUInt64);
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l1 = (_x1lo + _x0hi : stdgo.GoUInt64);
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l2 = (_x2lo + _x1hi : stdgo.GoUInt64);
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l3 = (_x3lo + _x2hi : stdgo.GoUInt64);
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l4 = (_x4lo + _x3hi : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L327"
        return _v;
    }
    @:keep
    @:tdfield
    static public function square( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>, _x:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> = _v;
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L309"
        stdgo._internal.crypto.internal.edwards25519.field.Field__fesquare._feSquare(_v, _x);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L310"
        return _v;
    }
    @:keep
    @:tdfield
    static public function multiply( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>, _x:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>, _y:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> = _v;
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L303"
        stdgo._internal.crypto.internal.edwards25519.field.Field__femul._feMul(_v, _x, _y);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L304"
        return _v;
    }
    @:keep
    @:tdfield
    static public function absolute( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>, _u:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> = _v;
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L298"
        return _v.select((stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>).negate(_u), _u, _u.isNegative());
    }
    @:keep
    @:tdfield
    static public function isNegative( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>):stdgo.GoInt {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> = _v;
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L293"
        return ((_v.bytes()[(0 : stdgo.GoInt)] & (1 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function swap( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>, _u:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>, _cond:stdgo.GoInt):Void {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> = _v;
        var _m = @:assignType (stdgo._internal.crypto.internal.edwards25519.field.Field__mask64bits._mask64Bits(_cond) : stdgo.GoUInt64);
        var _t = @:assignType (_m & (((@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l0 ^ (@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l0 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l0 = ((@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l0 ^ (_t) : stdgo.GoUInt64);
        (@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l0 = ((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l0 ^ (_t) : stdgo.GoUInt64);
        _t = (_m & (((@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l1 ^ (@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l1 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l1 = ((@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l1 ^ (_t) : stdgo.GoUInt64);
        (@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l1 = ((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l1 ^ (_t) : stdgo.GoUInt64);
        _t = (_m & (((@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l2 ^ (@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l2 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l2 = ((@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l2 ^ (_t) : stdgo.GoUInt64);
        (@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l2 = ((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l2 ^ (_t) : stdgo.GoUInt64);
        _t = (_m & (((@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l3 ^ (@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l3 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l3 = ((@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l3 ^ (_t) : stdgo.GoUInt64);
        (@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l3 = ((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l3 ^ (_t) : stdgo.GoUInt64);
        _t = (_m & (((@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l4 ^ (@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l4 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l4 = ((@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l4 ^ (_t) : stdgo.GoUInt64);
        (@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l4 = ((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l4 ^ (_t) : stdgo.GoUInt64);
    }
    @:keep
    @:tdfield
    static public function select( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>, _a:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>, _b:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>, _cond:stdgo.GoInt):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> = _v;
        var _m = @:assignType (stdgo._internal.crypto.internal.edwards25519.field.Field__mask64bits._mask64Bits(_cond) : stdgo.GoUInt64);
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l0 = (((_m & (@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l0 : stdgo.GoUInt64)) | (((-1 ^ _m) & (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l0 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l1 = (((_m & (@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l1 : stdgo.GoUInt64)) | (((-1 ^ _m) & (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l1 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l2 = (((_m & (@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l2 : stdgo.GoUInt64)) | (((-1 ^ _m) & (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l2 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l3 = (((_m & (@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l3 : stdgo.GoUInt64)) | (((-1 ^ _m) & (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l3 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l4 = (((_m & (@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l4 : stdgo.GoUInt64)) | (((-1 ^ _m) & (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l4 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L268"
        return _v;
    }
    @:keep
    @:tdfield
    static public function equal( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>, _u:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>):stdgo.GoInt {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> = _v;
        var __0 = _u.bytes(), __1 = _v.bytes();
var _sv = __1, _sa = __0;
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L254"
        return stdgo._internal.crypto.subtle.Subtle_constanttimecompare.constantTimeCompare(_sa, _sv);
    }
    @:keep
    @:tdfield
    static public function _bytes( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>, _out:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> = _v;
        var _t = @:assignType ((_v : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element)?.__copy__() : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L233"
        _t._reduce();
        var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(8, 8).__setNumber32__();
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L236"
        for (_i => _l in (new stdgo.GoArray<stdgo.GoUInt64>(5, 5, ...[_t._l0, _t._l1, _t._l2, _t._l3, _t._l4]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>).__copy__()) {
            var _bitsOffset = @:assignType (_i * (51 : stdgo.GoInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L238"
            stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.putUint64((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_l << ((_bitsOffset % (8 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) : stdgo.GoUInt64));
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L239"
            for (_i => _bb in _buf.__copy__()) {
                var _off = @:assignType ((_bitsOffset / (8 : stdgo.GoInt) : stdgo.GoInt) + _i : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L241"
                if ((_off >= (_out.length) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L242"
                    break;
                };
                _out[(_off : stdgo.GoInt)] = (_out[(_off : stdgo.GoInt)] | (_bb) : stdgo.GoUInt8);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L248"
        return (_out.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function bytes( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> = _v;
        var _out:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(32, 32).__setNumber32__();
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L228"
        return _v._bytes((stdgo.Go.setRef(_out, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 32) })) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>));
    }
    @:keep
    @:tdfield
    static public function setBytes( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>, _x:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>; var _1 : stdgo.Error; } {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> = _v;
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L199"
        if ((_x.length) != ((32 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L200"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("edwards25519: invalid field element input size" : stdgo.GoString)) };
        };
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l0 = stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint64((_x.__slice__((0 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l0 = ((@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l0 & ((2251799813685247i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l1 = (stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint64((_x.__slice__((6 : stdgo.GoInt), (14 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) >> (3i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l1 = ((@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l1 & ((2251799813685247i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l2 = (stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint64((_x.__slice__((12 : stdgo.GoInt), (20 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) >> (6i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l2 = ((@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l2 & ((2251799813685247i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l3 = (stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint64((_x.__slice__((19 : stdgo.GoInt), (27 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l3 = ((@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l3 & ((2251799813685247i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l4 = (stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint64((_x.__slice__((24 : stdgo.GoInt), (32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) >> (12i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l4 = ((@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l4 & ((2251799813685247i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L220"
        return { _0 : _v, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function set( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>, _a:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> = _v;
        {
            var __tmp__ = (_a : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element)?.__copy__();
            var x = (_v : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element);
            x._l0 = __tmp__?._l0;
            x._l1 = __tmp__?._l1;
            x._l2 = __tmp__?._l2;
            x._l3 = __tmp__?._l3;
            x._l4 = __tmp__?._l4;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L187"
        return _v;
    }
    @:keep
    @:tdfield
    static public function invert( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>, _z:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> = _v;
        var _z2:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), _z9:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), _z11:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), _z2_5_0:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), _z2_10_0:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), _z2_20_0:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), _z2_50_0:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), _z2_100_0:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), _t:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L125"
        _z2.square(_z);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L126"
        _t.square((stdgo.Go.setRef(_z2, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L127"
        _t.square((stdgo.Go.setRef(_t, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L128"
        _z9.multiply((stdgo.Go.setRef(_t, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), _z);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L129"
        _z11.multiply((stdgo.Go.setRef(_z9, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(_z2, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L130"
        _t.square((stdgo.Go.setRef(_z11, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L131"
        _z2_5_0.multiply((stdgo.Go.setRef(_t, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(_z9, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L133"
        _t.square((stdgo.Go.setRef(_z2_5_0, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L134"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (4 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L135"
                _t.square((stdgo.Go.setRef(_t, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L137"
        _z2_10_0.multiply((stdgo.Go.setRef(_t, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(_z2_5_0, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L139"
        _t.square((stdgo.Go.setRef(_z2_10_0, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L140"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (9 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L141"
                _t.square((stdgo.Go.setRef(_t, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L143"
        _z2_20_0.multiply((stdgo.Go.setRef(_t, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(_z2_10_0, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L145"
        _t.square((stdgo.Go.setRef(_z2_20_0, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L146"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (19 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L147"
                _t.square((stdgo.Go.setRef(_t, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L149"
        _t.multiply((stdgo.Go.setRef(_t, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(_z2_20_0, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L151"
        _t.square((stdgo.Go.setRef(_t, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L152"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (9 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L153"
                _t.square((stdgo.Go.setRef(_t, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L155"
        _z2_50_0.multiply((stdgo.Go.setRef(_t, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(_z2_10_0, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L157"
        _t.square((stdgo.Go.setRef(_z2_50_0, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L158"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (49 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L159"
                _t.square((stdgo.Go.setRef(_t, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L161"
        _z2_100_0.multiply((stdgo.Go.setRef(_t, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(_z2_50_0, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L163"
        _t.square((stdgo.Go.setRef(_z2_100_0, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L164"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (99 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L165"
                _t.square((stdgo.Go.setRef(_t, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L167"
        _t.multiply((stdgo.Go.setRef(_t, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(_z2_100_0, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L169"
        _t.square((stdgo.Go.setRef(_t, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L170"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (49 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L171"
                _t.square((stdgo.Go.setRef(_t, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L173"
        _t.multiply((stdgo.Go.setRef(_t, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(_z2_50_0, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L175"
        _t.square((stdgo.Go.setRef(_t, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L176"
        _t.square((stdgo.Go.setRef(_t, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L177"
        _t.square((stdgo.Go.setRef(_t, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L178"
        _t.square((stdgo.Go.setRef(_t, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L179"
        _t.square((stdgo.Go.setRef(_t, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L181"
        return _v.multiply((stdgo.Go.setRef(_t, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(_z11, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
    }
    @:keep
    @:tdfield
    static public function negate( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>, _a:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> = _v;
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L114"
        return _v.subtract(stdgo._internal.crypto.internal.edwards25519.field.Field__fezero._feZero, _a);
    }
    @:keep
    @:tdfield
    static public function subtract( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>, _a:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>, _b:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> = _v;
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l0 = ((((@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l0 + (4503599627370458i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) - (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l0 : stdgo.GoUInt64);
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l1 = ((((@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l1 + (4503599627370494i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) - (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l1 : stdgo.GoUInt64);
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l2 = ((((@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l2 + (4503599627370494i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) - (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l2 : stdgo.GoUInt64);
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l3 = ((((@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l3 + (4503599627370494i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) - (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l3 : stdgo.GoUInt64);
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l4 = ((((@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l4 + (4503599627370494i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) - (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l4 : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L109"
        return _v._carryPropagate();
    }
    @:keep
    @:tdfield
    static public function add( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>, _a:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>, _b:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> = _v;
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l0 = ((@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l0 + (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l0 : stdgo.GoUInt64);
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l1 = ((@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l1 + (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l1 : stdgo.GoUInt64);
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l2 = ((@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l2 + (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l2 : stdgo.GoUInt64);
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l3 = ((@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l3 + (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l3 : stdgo.GoUInt64);
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l4 = ((@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l4 + (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l4 : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L97"
        return _v._carryPropagateGeneric();
    }
    @:keep
    @:tdfield
    static public function _reduce( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> = _v;
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L55"
        _v._carryPropagate();
        var _c = @:assignType ((((@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l0 + (19i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) >> (51i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _c = ((((@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l1 + _c : stdgo.GoUInt64)) >> (51i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _c = ((((@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l2 + _c : stdgo.GoUInt64)) >> (51i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _c = ((((@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l3 + _c : stdgo.GoUInt64)) >> (51i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _c = ((((@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l4 + _c : stdgo.GoUInt64)) >> (51i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l0 = ((@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l0 + (((19i64 : stdgo.GoUInt64) * _c : stdgo.GoUInt64)) : stdgo.GoUInt64);
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l1 = ((@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l1 + (((@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l0 >> (51i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l0 = ((@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l0 & (2251799813685247i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l2 = ((@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l2 + (((@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l1 >> (51i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l1 = ((@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l1 & (2251799813685247i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l3 = ((@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l3 + (((@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l2 >> (51i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l2 = ((@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l2 & (2251799813685247i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l4 = ((@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l4 + (((@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l3 >> (51i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l3 = ((@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l3 & (2251799813685247i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l4 = ((@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._l4 & (2251799813685247i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L83"
        return _v;
    }
    @:keep
    @:tdfield
    static public function one( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> = _v;
        {
            var __tmp__ = (stdgo._internal.crypto.internal.edwards25519.field.Field__feone._feOne : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element)?.__copy__();
            var x = (_v : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element);
            x._l0 = __tmp__?._l0;
            x._l1 = __tmp__?._l1;
            x._l2 = __tmp__?._l2;
            x._l3 = __tmp__?._l3;
            x._l4 = __tmp__?._l4;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L50"
        return _v;
    }
    @:keep
    @:tdfield
    static public function zero( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> = _v;
        {
            var __tmp__ = (stdgo._internal.crypto.internal.edwards25519.field.Field__fezero._feZero : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element)?.__copy__();
            var x = (_v : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element);
            x._l0 = __tmp__?._l0;
            x._l1 = __tmp__?._l1;
            x._l2 = __tmp__?._l2;
            x._l3 = __tmp__?._l3;
            x._l4 = __tmp__?._l4;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe.go#L42"
        return _v;
    }
}

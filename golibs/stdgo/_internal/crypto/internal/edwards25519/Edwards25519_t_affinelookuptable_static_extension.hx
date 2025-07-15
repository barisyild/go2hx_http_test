package stdgo._internal.crypto.internal.edwards25519;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.subtle.Subtle;
@:keep @:allow(stdgo._internal.crypto.internal.edwards25519.Edwards25519.T_affineLookupTable_asInterface) class T_affineLookupTable_static_extension {
    @:keep
    @:tdfield
    static public function selectInto( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinelookuptable.T_affineLookupTable>, _dest:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached>, _x:stdgo.GoInt8):Void {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinelookuptable.T_affineLookupTable> = _v;
        var _xmask = @:assignType (_x >> (7i64 : stdgo.GoUInt64) : stdgo.GoInt8);
        var _xabs = @:assignType ((((_x + _xmask : stdgo.GoInt8)) ^ _xmask : stdgo.GoInt8) : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/tables.go#L111"
        _dest.zero();
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/tables.go#L112"
        {
            var _j = @:assignType (1 : stdgo.GoInt);
            while ((_j <= (8 : stdgo.GoInt) : Bool)) {
                var _cond = @:assignType (stdgo._internal.crypto.subtle.Subtle_constanttimebyteeq.constantTimeByteEq(_xabs, (_j : stdgo.GoUInt8)) : stdgo.GoInt);
//"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/tables.go#L115"
                _dest.select((stdgo.Go.setRef((@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._points[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotedwards25519_t_affinecacheddott_affinecached.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotEdwards25519_t_affinecacheddotT_affineCached })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached>), _dest, _cond);
                _j++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/tables.go#L118"
        _dest.condNeg(((_xmask & (1 : stdgo.GoInt8) : stdgo.GoInt8) : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function fromP3( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinelookuptable.T_affineLookupTable>, _q:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>):Void {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinelookuptable.T_affineLookupTable> = _v;
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/tables.go#L52"
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._points[(0 : stdgo.GoInt)].fromP3(_q);
        var _tmpP3 = @:assignType (new stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point() : stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point);
        var _tmpP1xP1 = @:assignType (new stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1() : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/tables.go#L55"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (7 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/tables.go#L57"
                (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._points[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)].fromP3(_tmpP3._fromP1xP1(_tmpP1xP1.addAffine(_q, (stdgo.Go.setRef((@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._points[(_i : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotedwards25519_t_affinecacheddott_affinecached.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotEdwards25519_t_affinecacheddotT_affineCached })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached>))));
                _i++;
            };
        };
    }
}

package stdgo._internal.crypto.internal.edwards25519;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.subtle.Subtle;
@:keep @:allow(stdgo._internal.crypto.internal.edwards25519.Edwards25519.T_nafLookupTable8_asInterface) class T_nafLookupTable8_static_extension {
    @:keep
    @:tdfield
    static public function selectInto( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_naflookuptable8.T_nafLookupTable8>, _dest:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached>, _x:stdgo.GoInt8):Void {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_naflookuptable8.T_nafLookupTable8> = _v;
        {
            var __tmp__ = (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._points[((_x / (2 : stdgo.GoInt8) : stdgo.GoInt8) : stdgo.GoInt)];
            var x = (_dest : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached);
            x.yplusX = __tmp__?.yplusX;
            x.yminusX = __tmp__?.yminusX;
            x.t2d = __tmp__?.t2d;
        };
    }
    @:keep
    @:tdfield
    static public function fromP3( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_naflookuptable8.T_nafLookupTable8>, _q:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>):Void {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_naflookuptable8.T_nafLookupTable8> = _v;
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/tables.go#L77"
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._points[(0 : stdgo.GoInt)].fromP3(_q);
        var _q2 = @:assignType (new stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point() : stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/tables.go#L79"
        _q2.add(_q, _q);
        var _tmpP3 = @:assignType (new stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point() : stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point);
        var _tmpP1xP1 = @:assignType (new stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1() : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/tables.go#L82"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (63 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/tables.go#L83"
                (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._points[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)].fromP3(_tmpP3._fromP1xP1(_tmpP1xP1.addAffine((stdgo.Go.setRef(_q2, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotedwards25519_pointdotpoint.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotEdwards25519_pointdotPoint })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>), (stdgo.Go.setRef((@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._points[(_i : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotedwards25519_t_affinecacheddott_affinecached.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotEdwards25519_t_affinecacheddotT_affineCached })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached>))));
                _i++;
            };
        };
    }
}

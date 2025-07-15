package stdgo._internal.crypto.internal.edwards25519;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.subtle.Subtle;
@:structInit @:using(stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinelookuptable_static_extension.T_affineLookupTable_static_extension) @:using(stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinelookuptable_static_extension.T_affineLookupTable_static_extension) class T_affineLookupTable {
    public var _points : stdgo.GoArray<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached> = new stdgo.GoArray<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached>(8, 8, ...[for (i in 0 ... (8 > 8 ? 8 : 8 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached)]);
    public function new(?_points:stdgo.GoArray<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached>) {
        if (_points != null) this._points = _points;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_points", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotedwards25519_t_affinecacheddott_affinecached.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotEdwards25519_t_affinecacheddotT_affineCached }, 8) }, optional : false }])));
    public function __copy__() {
        return new T_affineLookupTable(_points);
    }
}

package stdgo._internal.crypto.internal.edwards25519;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.subtle.Subtle;
@:structInit @:using(stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projlookuptable_static_extension.T_projLookupTable_static_extension) @:using(stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projlookuptable_static_extension.T_projLookupTable_static_extension) class T_projLookupTable {
    public var _points : stdgo.GoArray<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached> = new stdgo.GoArray<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached>(8, 8, ...[for (i in 0 ... (8 > 8 ? 8 : 8 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached)]);
    public function new(?_points:stdgo.GoArray<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached>) {
        if (_points != null) this._points = _points;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_points", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotedwards25519_t_projcacheddott_projcached.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotEdwards25519_t_projcacheddotT_projCached }, 8) }, optional : false }])));
    public function __copy__() {
        return new T_projLookupTable(_points);
    }
}

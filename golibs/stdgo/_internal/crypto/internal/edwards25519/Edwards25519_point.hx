package stdgo._internal.crypto.internal.edwards25519;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.subtle.Subtle;
@:structInit @:using(stdgo._internal.crypto.internal.edwards25519.Edwards25519_point_static_extension.Point_static_extension) @:using(stdgo._internal.crypto.internal.edwards25519.Edwards25519_point_static_extension.Point_static_extension) class Point {
    @:optional
    public var __0 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_incomparable.T_incomparable = new stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_incomparable.T_incomparable(0, 0, ...[for (i in 0 ... 0) null]);
    public var _x : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element);
    public var _y : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element);
    public var _z : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element);
    public var _t : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element);
    public function new(?__0:stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_incomparable.T_incomparable, ?_x:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element, ?_y:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element, ?_z:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element, ?_t:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element) {
        if (__0 != null) this.__0 = __0;
        if (_x != null) this._x = _x;
        if (_y != null) this._y = _y;
        if (_z != null) this._z = _z;
        if (_t != null) this._t = _t;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "__0", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotedwards25519_t_incomparabledott_incomparable.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotEdwards25519_t_incomparabledotT_incomparable }, optional : false }, { name : "_x", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement }, optional : false }, { name : "_y", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement }, optional : false }, { name : "_z", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement }, optional : false }, { name : "_t", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement }, optional : false }])));
    public function __copy__() {
        return new Point(__0, _x, _y, _z, _t);
    }
}

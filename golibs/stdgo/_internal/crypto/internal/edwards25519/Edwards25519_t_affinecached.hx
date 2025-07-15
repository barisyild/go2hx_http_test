package stdgo._internal.crypto.internal.edwards25519;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.subtle.Subtle;
@:structInit @:using(stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached_static_extension.T_affineCached_static_extension) @:using(stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached_static_extension.T_affineCached_static_extension) class T_affineCached {
    public var yplusX : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element);
    public var yminusX : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element);
    public var t2d : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element);
    public function new(?yplusX:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element, ?yminusX:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element, ?t2d:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element) {
        if (yplusX != null) this.yplusX = yplusX;
        if (yminusX != null) this.yminusX = yminusX;
        if (t2d != null) this.t2d = t2d;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "yplusX", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement }, optional : false }, { name : "yminusX", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement }, optional : false }, { name : "t2d", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement }, optional : false }])));
    public function __copy__() {
        return new T_affineCached(yplusX, yminusX, t2d);
    }
}

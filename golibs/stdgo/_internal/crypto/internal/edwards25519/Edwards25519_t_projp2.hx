package stdgo._internal.crypto.internal.edwards25519;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.subtle.Subtle;
@:structInit @:using(stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2_static_extension.T_projP2_static_extension) @:using(stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2_static_extension.T_projP2_static_extension) class T_projP2 {
    public var x : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element);
    public var y : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element);
    public var z : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element);
    public function new(?x:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element, ?y:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element, ?z:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element) {
        if (x != null) this.x = x;
        if (y != null) this.y = y;
        if (z != null) this.z = z;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "x", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement }, optional : false }, { name : "y", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement }, optional : false }, { name : "z", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement }, optional : false }])));
    public function __copy__() {
        return new T_projP2(x, y, z);
    }
}

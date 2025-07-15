package stdgo._internal.crypto.internal.edwards25519;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.subtle.Subtle;
function _checkInitialized(_points:haxe.Rest<stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>>):Void {
        var _points = new stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>>(_points.length, 0, ..._points);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L41"
        if (_points != null) for (__9 => _p in _points) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L42"
            if (((new stdgo.AnyInterface((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement)) == new stdgo.AnyInterface(((new stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element() : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element)), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement))) && (new stdgo.AnyInterface((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._y, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement)) == new stdgo.AnyInterface(((new stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element() : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element)), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement))) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L43"
                throw new stdgo.AnyInterface(("edwards25519: use of uninitialized Point" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
        };
    }

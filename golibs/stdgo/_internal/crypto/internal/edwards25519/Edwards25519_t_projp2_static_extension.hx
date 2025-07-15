package stdgo._internal.crypto.internal.edwards25519;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.subtle.Subtle;
@:keep @:allow(stdgo._internal.crypto.internal.edwards25519.Edwards25519.T_projP2_asInterface) class T_projP2_static_extension {
    @:keep
    @:tdfield
    static public function fromP3( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2.T_projP2>, _p:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2.T_projP2> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2.T_projP2> = _v;
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L203"
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x.set((stdgo.Go.setRef((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L204"
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__()).y.set((stdgo.Go.setRef((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._y, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L205"
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__()).z.set((stdgo.Go.setRef((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._z, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L206"
        return _v;
    }
    @:keep
    @:tdfield
    static public function fromP1xP1( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2.T_projP2>, _p:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2.T_projP2> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2.T_projP2> = _v;
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L196"
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x.multiply((stdgo.Go.setRef((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).t, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L197"
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__()).y.multiply((stdgo.Go.setRef((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).y, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).z, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L198"
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__()).z.multiply((stdgo.Go.setRef((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).z, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).t, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotfield_elementdotelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotfielddotField_elementdotElement })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L199"
        return _v;
    }
    @:keep
    @:tdfield
    static public function zero( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2.T_projP2>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2.T_projP2> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2.T_projP2> = _v;
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L59"
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x.zero();
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L60"
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__()).y.one();
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L61"
        (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__()).z.one();
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L62"
        return _v;
    }
}

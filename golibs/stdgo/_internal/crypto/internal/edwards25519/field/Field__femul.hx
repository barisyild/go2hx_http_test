package stdgo._internal.crypto.internal.edwards25519.field;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.subtle.Subtle;
function _feMul(_v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>, _x:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>, _y:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>):Void {
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe_amd64_noasm.go#L9"
        stdgo._internal.crypto.internal.edwards25519.field.Field__femulgeneric._feMulGeneric(_v, _x, _y);
    }

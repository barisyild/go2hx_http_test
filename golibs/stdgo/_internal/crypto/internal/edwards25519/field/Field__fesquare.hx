package stdgo._internal.crypto.internal.edwards25519.field;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.subtle.Subtle;
function _feSquare(_v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>, _x:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>):Void {
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/field/fe_amd64_noasm.go#L11"
        stdgo._internal.crypto.internal.edwards25519.field.Field__fesquaregeneric._feSquareGeneric(_v, _x);
    }

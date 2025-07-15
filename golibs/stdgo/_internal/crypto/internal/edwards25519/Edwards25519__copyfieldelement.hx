package stdgo._internal.crypto.internal.edwards25519;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.subtle.Subtle;
function _copyFieldElement(_buf:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>, _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L189"
        (_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_v.bytes());
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L190"
        return (_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>);
    }

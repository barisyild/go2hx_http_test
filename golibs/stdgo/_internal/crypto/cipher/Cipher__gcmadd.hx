package stdgo._internal.crypto.cipher;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.io.Io;
function _gcmAdd(_x:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement>, _y:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement>):stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement {
        //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/gcm.go#L258"
        return (new stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement(((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._low ^ (@:checkr _y ?? throw stdgo.Error._nullPointerDereference.__underlying__())._low : stdgo.GoUInt64), ((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._high ^ (@:checkr _y ?? throw stdgo.Error._nullPointerDereference.__underlying__())._high : stdgo.GoUInt64)) : stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement);
    }

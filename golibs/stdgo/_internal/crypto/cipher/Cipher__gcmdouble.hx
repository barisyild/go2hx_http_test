package stdgo._internal.crypto.cipher;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.io.Io;
function _gcmDouble(_x:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement>):stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement {
        var _double = ({} : stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement);
        var _msbSet = @:assignType (((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._high & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == ((1i64 : stdgo.GoUInt64)) : Bool);
        _double._high = ((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._high >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _double._high = (_double._high | (((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._low << (63i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _double._low = ((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._low >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/gcm.go#L277"
        if (_msbSet) {
            _double._low = (_double._low ^ ((-2233785415175766016i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/gcm.go#L281"
        return _double;
    }

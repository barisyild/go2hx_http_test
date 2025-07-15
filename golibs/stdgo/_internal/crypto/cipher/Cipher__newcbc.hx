package stdgo._internal.crypto.cipher;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.io.Io;
function _newCBC(_b:stdgo._internal.crypto.cipher.Cipher_block.Block, _iv:stdgo.Slice<stdgo.GoUInt8>):stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_cbc.T_cbc> {
        //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/cbc.go#L28"
        return (stdgo.Go.setRef(({ _b : _b, _blockSize : _b.blockSize(), _iv : stdgo._internal.bytes.Bytes_clone.clone(_iv), _tmp : (new stdgo.Slice<stdgo.GoUInt8>((_b.blockSize() : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.crypto.cipher.Cipher_t_cbc.T_cbc), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcipherdotcipher_t_cbcdott_cbc.__type__stdgodot_internaldotcryptodotcipherdotCipher_t_cbcdotT_cbc })) : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_cbc.T_cbc>);
    }

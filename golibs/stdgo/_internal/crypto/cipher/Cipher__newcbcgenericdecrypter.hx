package stdgo._internal.crypto.cipher;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.io.Io;
function _newCBCGenericDecrypter(_b:stdgo._internal.crypto.cipher.Cipher_block.Block, _iv:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.crypto.cipher.Cipher_blockmode.BlockMode {
        //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/cbc.go#L135"
        if ((_iv.length) != (_b.blockSize())) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/cbc.go#L136"
            throw new stdgo.AnyInterface(("cipher.NewCBCDecrypter: IV length must equal block size" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/cbc.go#L138"
        return stdgo.Go.asInterface((({
            final e = stdgo._internal.crypto.cipher.Cipher__newcbc._newCBC(_b, _iv);
            ({ _b : e._b, _blockSize : e._blockSize, _iv : e._iv, _tmp : e._tmp } : stdgo._internal.crypto.cipher.Cipher_t_cbcdecrypter.T_cbcDecrypter);
        })), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcipherdotcipher_t_cbcdecrypterdott_cbcdecrypter.__type__stdgodot_internaldotcryptodotcipherdotCipher_t_cbcdecrypterdotT_cbcDecrypter }));
    }

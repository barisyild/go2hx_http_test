package stdgo._internal.crypto.aes;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.strconv.Strconv;
function newCipher(_key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.crypto.cipher.Cipher_block.Block; var _1 : stdgo.Error; } {
        var _k = @:assignType (_key.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/crypto/aes/cipher.go#L35"
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _k;
                    if (__value__ == ((16 : stdgo.GoInt)) || __value__ == ((24 : stdgo.GoInt)) || __value__ == ((32 : stdgo.GoInt))) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/aes/cipher.go#L39"
                        break;
                        break;
                    } else {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/aes/cipher.go#L37"
                        return { _0 : (null : stdgo._internal.crypto.cipher.Cipher_block.Block), _1 : stdgo.Go.asInterface((_k : stdgo._internal.crypto.aes.Aes_keysizeerror.KeySizeError), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotaesdotaes_keysizeerrordotkeysizeerror.__type__stdgodot_internaldotcryptodotaesdotAes_keysizeerrordotKeySizeError) };
                    };
                };
                break;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/aes/cipher.go#L41"
        if (false) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/aes/cipher.go#L42"
            return stdgo._internal.crypto.internal.boring.Boring_newaescipher.newAESCipher(_key);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/aes/cipher.go#L44"
        return stdgo._internal.crypto.aes.Aes__newcipher._newCipher(_key);
    }

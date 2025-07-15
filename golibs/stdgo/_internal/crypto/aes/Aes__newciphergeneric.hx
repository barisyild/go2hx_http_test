package stdgo._internal.crypto.aes;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.strconv.Strconv;
function _newCipherGeneric(_key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.crypto.cipher.Cipher_block.Block; var _1 : stdgo.Error; } {
        var _n = @:assignType ((_key.length) + (28 : stdgo.GoInt) : stdgo.GoInt);
        var _c = @:assignType (new stdgo._internal.crypto.aes.Aes_t_aescipher.T_aesCipher((new stdgo.Slice<stdgo.GoUInt32>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>), (new stdgo.Slice<stdgo.GoUInt32>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>)) : stdgo._internal.crypto.aes.Aes_t_aescipher.T_aesCipher);
        //"file:///Users/o/.go/go1.21.3/src/crypto/aes/cipher.go#L52"
        stdgo._internal.crypto.aes.Aes__expandkeygo._expandKeyGo(_key, _c._enc, _c._dec);
        //"file:///Users/o/.go/go1.21.3/src/crypto/aes/cipher.go#L53"
        return { _0 : stdgo.Go.asInterface((stdgo.Go.setRef(_c, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotaesdotaes_t_aescipherdott_aescipher.__type__stdgodot_internaldotcryptodotaesdotAes_t_aescipherdotT_aesCipher })) : stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_aescipher.T_aesCipher>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotaesdotaes_t_aescipherdott_aescipher.__type__stdgodot_internaldotcryptodotaesdotAes_t_aescipherdotT_aesCipher })), _1 : (null : stdgo.Error) };
    }

package stdgo._internal.crypto.des;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.strconv.Strconv;
function newCipher(_key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.crypto.cipher.Cipher_block.Block; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/crypto/des/cipher.go#L30"
        if ((_key.length) != ((8 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/des/cipher.go#L31"
            return { _0 : (null : stdgo._internal.crypto.cipher.Cipher_block.Block), _1 : stdgo.Go.asInterface((_key.length : stdgo._internal.crypto.des.Des_keysizeerror.KeySizeError), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotdesdotdes_keysizeerrordotkeysizeerror.__type__stdgodot_internaldotcryptodotdesdotDes_keysizeerrordotKeySizeError) };
        };
        var _c = (stdgo.Go.setRef(({} : stdgo._internal.crypto.des.Des_t_descipher.T_desCipher), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotdesdotdes_t_descipherdott_descipher.__type__stdgodot_internaldotcryptodotdesdotDes_t_descipherdotT_desCipher })) : stdgo.Ref<stdgo._internal.crypto.des.Des_t_descipher.T_desCipher>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/des/cipher.go#L35"
        _c._generateSubkeys(_key);
        //"file:///Users/o/.go/go1.21.3/src/crypto/des/cipher.go#L36"
        return { _0 : stdgo.Go.asInterface(_c, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotdesdotdes_t_descipherdott_descipher.__type__stdgodot_internaldotcryptodotdesdotDes_t_descipherdotT_desCipher })), _1 : (null : stdgo.Error) };
    }

package stdgo._internal.crypto.des;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.strconv.Strconv;
function newTripleDESCipher(_key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.crypto.cipher.Cipher_block.Block; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/crypto/des/cipher.go#L74"
        if ((_key.length) != ((24 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/des/cipher.go#L75"
            return { _0 : (null : stdgo._internal.crypto.cipher.Cipher_block.Block), _1 : stdgo.Go.asInterface((_key.length : stdgo._internal.crypto.des.Des_keysizeerror.KeySizeError), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotdesdotdes_keysizeerrordotkeysizeerror.__type__stdgodot_internaldotcryptodotdesdotDes_keysizeerrordotKeySizeError) };
        };
        var _c = (stdgo.Go.setRef(({} : stdgo._internal.crypto.des.Des_t_tripledescipher.T_tripleDESCipher), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotdesdotdes_t_tripledescipherdott_tripledescipher.__type__stdgodot_internaldotcryptodotdesdotDes_t_tripledescipherdotT_tripleDESCipher })) : stdgo.Ref<stdgo._internal.crypto.des.Des_t_tripledescipher.T_tripleDESCipher>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/des/cipher.go#L79"
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipher1._generateSubkeys((_key.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/des/cipher.go#L80"
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipher2._generateSubkeys((_key.__slice__((8 : stdgo.GoInt), (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/des/cipher.go#L81"
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipher3._generateSubkeys((_key.__slice__((16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/des/cipher.go#L82"
        return { _0 : stdgo.Go.asInterface(_c, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotdesdotdes_t_tripledescipherdott_tripledescipher.__type__stdgodot_internaldotcryptodotdesdotDes_t_tripledescipherdotT_tripleDESCipher })), _1 : (null : stdgo.Error) };
    }

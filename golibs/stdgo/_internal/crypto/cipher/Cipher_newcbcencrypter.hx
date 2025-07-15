package stdgo._internal.crypto.cipher;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.io.Io;
function newCBCEncrypter(_b:stdgo._internal.crypto.cipher.Cipher_block.Block, _iv:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.crypto.cipher.Cipher_blockmode.BlockMode {
        //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/cbc.go#L50"
        if ((_iv.length) != (_b.blockSize())) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/cbc.go#L51"
            throw new stdgo.AnyInterface(("cipher.NewCBCEncrypter: IV length must equal block size" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/cbc.go#L53"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = _b;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcipherdotcipher_blockdotblock.__type__stdgodot_internaldotcryptodotcipherdotCipher_blockdotBlock)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcipherdotcipher_t_cbcencabledott_cbcencable.__type__stdgodot_internaldotcryptodotcipherdotCipher_t_cbcencabledotT_cbcEncAble) : stdgo._internal.crypto.cipher.Cipher_t_cbcencable.T_cbcEncAble), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo._internal.crypto.cipher.Cipher_t_cbcencable.T_cbcEncAble), _1 : false };
            }, _cbc = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/cbc.go#L54"
                return _cbc.newCBCEncrypter(_iv);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/cbc.go#L56"
        return stdgo.Go.asInterface((({
            final e = stdgo._internal.crypto.cipher.Cipher__newcbc._newCBC(_b, _iv);
            ({ _b : e._b, _blockSize : e._blockSize, _iv : e._iv, _tmp : e._tmp } : stdgo._internal.crypto.cipher.Cipher_t_cbcencrypter.T_cbcEncrypter);
        })), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcipherdotcipher_t_cbcencrypterdott_cbcencrypter.__type__stdgodot_internaldotcryptodotcipherdotCipher_t_cbcencrypterdotT_cbcEncrypter }));
    }

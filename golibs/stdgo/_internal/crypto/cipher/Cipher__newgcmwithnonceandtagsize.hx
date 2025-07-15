package stdgo._internal.crypto.cipher;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.io.Io;
function _newGCMWithNonceAndTagSize(_cipher:stdgo._internal.crypto.cipher.Cipher_block.Block, _nonceSize:stdgo.GoInt, _tagSize:stdgo.GoInt):{ var _0 : stdgo._internal.crypto.cipher.Cipher_aead.AEAD; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/gcm.go#L113"
        if (((_tagSize < (12 : stdgo.GoInt) : Bool) || (_tagSize > (16 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/gcm.go#L114"
            return { _0 : (null : stdgo._internal.crypto.cipher.Cipher_aead.AEAD), _1 : stdgo._internal.errors.Errors_new_.new_(("cipher: incorrect tag size given to GCM" : stdgo.GoString)) };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/gcm.go#L117"
        if ((_nonceSize <= (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/gcm.go#L118"
            return { _0 : (null : stdgo._internal.crypto.cipher.Cipher_aead.AEAD), _1 : stdgo._internal.errors.Errors_new_.new_(("cipher: the nonce can\'t have zero length, or the security of the key will be immediately compromised" : stdgo.GoString)) };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/gcm.go#L121"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = _cipher;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcipherdotcipher_blockdotblock.__type__stdgodot_internaldotcryptodotcipherdotCipher_blockdotBlock)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcipherdotcipher_t_gcmabledott_gcmable.__type__stdgodot_internaldotcryptodotcipherdotCipher_t_gcmabledotT_gcmAble) : stdgo._internal.crypto.cipher.Cipher_t_gcmable.T_gcmAble), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo._internal.crypto.cipher.Cipher_t_gcmable.T_gcmAble), _1 : false };
            }, _cipher = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/gcm.go#L122"
                return _cipher.newGCM(_nonceSize, _tagSize);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/gcm.go#L125"
        if (_cipher.blockSize() != ((16 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/gcm.go#L126"
            return { _0 : (null : stdgo._internal.crypto.cipher.Cipher_aead.AEAD), _1 : stdgo._internal.errors.Errors_new_.new_(("cipher: NewGCM requires 128-bit block cipher" : stdgo.GoString)) };
        };
        var _key:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16).__setNumber32__();
        //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/gcm.go#L130"
        _cipher.encrypt((_key.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_key.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
        var _g = (stdgo.Go.setRef(({ _cipher : _cipher, _nonceSize : _nonceSize, _tagSize : _tagSize } : stdgo._internal.crypto.cipher.Cipher_t_gcm.T_gcm), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcipherdotcipher_t_gcmdott_gcm.__type__stdgodot_internaldotcryptodotcipherdotCipher_t_gcmdotT_gcm })) : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcm.T_gcm>);
        var _x = @:assignType (new stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint64((_key.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint64((_key.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement);
        (@:checkr _g ?? throw stdgo.Error._nullPointerDereference.__underlying__())._productTable[(stdgo._internal.crypto.cipher.Cipher__reversebits._reverseBits((1 : stdgo.GoInt)) : stdgo.GoInt)] = _x?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/gcm.go#L145"
        {
            var _i = @:assignType (2 : stdgo.GoInt);
            while ((_i < (16 : stdgo.GoInt) : Bool)) {
                (@:checkr _g ?? throw stdgo.Error._nullPointerDereference.__underlying__())._productTable[(stdgo._internal.crypto.cipher.Cipher__reversebits._reverseBits(_i) : stdgo.GoInt)] = stdgo._internal.crypto.cipher.Cipher__gcmdouble._gcmDouble((stdgo.Go.setRef((@:checkr _g ?? throw stdgo.Error._nullPointerDereference.__underlying__())._productTable[(stdgo._internal.crypto.cipher.Cipher__reversebits._reverseBits((_i / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcipherdotcipher_t_gcmfieldelementdott_gcmfieldelement.__type__stdgodot_internaldotcryptodotcipherdotCipher_t_gcmfieldelementdotT_gcmFieldElement })) : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement>)).__copy__();
(@:checkr _g ?? throw stdgo.Error._nullPointerDereference.__underlying__())._productTable[(stdgo._internal.crypto.cipher.Cipher__reversebits._reverseBits((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt)] = stdgo._internal.crypto.cipher.Cipher__gcmadd._gcmAdd((stdgo.Go.setRef((@:checkr _g ?? throw stdgo.Error._nullPointerDereference.__underlying__())._productTable[(stdgo._internal.crypto.cipher.Cipher__reversebits._reverseBits(_i) : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcipherdotcipher_t_gcmfieldelementdott_gcmfieldelement.__type__stdgodot_internaldotcryptodotcipherdotCipher_t_gcmfieldelementdotT_gcmFieldElement })) : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement>), (stdgo.Go.setRef(_x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcipherdotcipher_t_gcmfieldelementdott_gcmfieldelement.__type__stdgodot_internaldotcryptodotcipherdotCipher_t_gcmfieldelementdotT_gcmFieldElement })) : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement>)).__copy__();
                _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/gcm.go#L150"
        return { _0 : stdgo.Go.asInterface(_g, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcipherdotcipher_t_gcmdott_gcm.__type__stdgodot_internaldotcryptodotcipherdotCipher_t_gcmdotT_gcm })), _1 : (null : stdgo.Error) };
    }

package stdgo._internal.crypto.cipher;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.io.Io;
function newCTR(_block:stdgo._internal.crypto.cipher.Cipher_block.Block, _iv:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.crypto.cipher.Cipher_stream.Stream {
        //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/ctr.go#L40"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = _block;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcipherdotcipher_blockdotblock.__type__stdgodot_internaldotcryptodotcipherdotCipher_blockdotBlock)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcipherdotcipher_t_ctrabledott_ctrable.__type__stdgodot_internaldotcryptodotcipherdotCipher_t_ctrabledotT_ctrAble) : stdgo._internal.crypto.cipher.Cipher_t_ctrable.T_ctrAble), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo._internal.crypto.cipher.Cipher_t_ctrable.T_ctrAble), _1 : false };
            }, _ctr = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/ctr.go#L41"
                return _ctr.newCTR(_iv);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/ctr.go#L43"
        if ((_iv.length) != (_block.blockSize())) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/ctr.go#L44"
            throw new stdgo.AnyInterface(("cipher.NewCTR: IV length must equal block size" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        var _bufSize = @:assignType (512 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/ctr.go#L47"
        if ((_bufSize < _block.blockSize() : Bool)) {
            _bufSize = _block.blockSize();
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/ctr.go#L50"
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _b : _block, _ctr : stdgo._internal.bytes.Bytes_clone.clone(_iv), _out : (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), _bufSize).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _outUsed : (0 : stdgo.GoInt) } : stdgo._internal.crypto.cipher.Cipher_t_ctr.T_ctr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcipherdotcipher_t_ctrdott_ctr.__type__stdgodot_internaldotcryptodotcipherdotCipher_t_ctrdotT_ctr })) : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_ctr.T_ctr>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcipherdotcipher_t_ctrdott_ctr.__type__stdgodot_internaldotcryptodotcipherdotCipher_t_ctrdotT_ctr }));
    }

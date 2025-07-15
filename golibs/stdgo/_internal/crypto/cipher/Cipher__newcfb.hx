package stdgo._internal.crypto.cipher;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.io.Io;
function _newCFB(_block:stdgo._internal.crypto.cipher.Cipher_block.Block, _iv:stdgo.Slice<stdgo.GoUInt8>, _decrypt:Bool):stdgo._internal.crypto.cipher.Cipher_stream.Stream {
        var _blockSize = @:assignType (_block.blockSize() : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/cfb.go#L69"
        if ((_iv.length) != (_blockSize)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/cfb.go#L71"
            throw new stdgo.AnyInterface(("cipher.newCFB: IV length must equal block size" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        var _x = (stdgo.Go.setRef(({ _b : _block, _out : (new stdgo.Slice<stdgo.GoUInt8>((_blockSize : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _next : (new stdgo.Slice<stdgo.GoUInt8>((_blockSize : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _outUsed : _blockSize, _decrypt : _decrypt } : stdgo._internal.crypto.cipher.Cipher_t_cfb.T_cfb), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcipherdotcipher_t_cfbdott_cfb.__type__stdgodot_internaldotcryptodotcipherdotCipher_t_cfbdotT_cfb })) : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_cfb.T_cfb>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/cfb.go#L80"
        (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next.__copyTo__(_iv);
        //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/cfb.go#L82"
        return stdgo.Go.asInterface(_x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcipherdotcipher_t_cfbdott_cfb.__type__stdgodot_internaldotcryptodotcipherdotCipher_t_cfbdotT_cfb }));
    }

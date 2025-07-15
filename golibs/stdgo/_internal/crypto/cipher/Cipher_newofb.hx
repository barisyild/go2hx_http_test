package stdgo._internal.crypto.cipher;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.io.Io;
function newOFB(_b:stdgo._internal.crypto.cipher.Cipher_block.Block, _iv:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.crypto.cipher.Cipher_stream.Stream {
        var _blockSize = @:assignType (_b.blockSize() : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/ofb.go#L26"
        if ((_iv.length) != (_blockSize)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/ofb.go#L27"
            throw new stdgo.AnyInterface(("cipher.NewOFB: IV length must equal block size" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        var _bufSize = @:assignType (512 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/ofb.go#L30"
        if ((_bufSize < _blockSize : Bool)) {
            _bufSize = _blockSize;
        };
        var _x = (stdgo.Go.setRef(({ _b : _b, _cipher : (new stdgo.Slice<stdgo.GoUInt8>((_blockSize : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _out : (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), _bufSize).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _outUsed : (0 : stdgo.GoInt) } : stdgo._internal.crypto.cipher.Cipher_t_ofb.T_ofb), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcipherdotcipher_t_ofbdott_ofb.__type__stdgodot_internaldotcryptodotcipherdotCipher_t_ofbdotT_ofb })) : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_ofb.T_ofb>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/ofb.go#L40"
        (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipher.__copyTo__(_iv);
        //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/ofb.go#L41"
        return stdgo.Go.asInterface(_x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcipherdotcipher_t_ofbdott_ofb.__type__stdgodot_internaldotcryptodotcipherdotCipher_t_ofbdotT_ofb }));
    }

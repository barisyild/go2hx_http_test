package stdgo._internal.crypto.cipher;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.io.Io;
@:keep @:allow(stdgo._internal.crypto.cipher.Cipher.T_cbcEncrypter_asInterface) class T_cbcEncrypter_static_extension {
    @:keep
    @:tdfield
    static public function setIV( _x:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_cbcencrypter.T_cbcEncrypter>, _iv:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _x:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_cbcencrypter.T_cbcEncrypter> = _x;
        //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/cbc.go#L101"
        if ((_iv.length) != (((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._iv.length))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/cbc.go#L102"
            throw new stdgo.AnyInterface(("cipher: incorrect length IV" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/cbc.go#L104"
        (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._iv.__copyTo__(_iv);
    }
    @:keep
    @:tdfield
    static public function cryptBlocks( _x:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_cbcencrypter.T_cbcEncrypter>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _x:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_cbcencrypter.T_cbcEncrypter> = _x;
        //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/cbc.go#L73"
        if (((_src.length) % (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._blockSize : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/cbc.go#L74"
            throw new stdgo.AnyInterface(("crypto/cipher: input not full blocks" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/cbc.go#L76"
        if (((_dst.length) < (_src.length) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/cbc.go#L77"
            throw new stdgo.AnyInterface(("crypto/cipher: output smaller than input" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/cbc.go#L79"
        if (stdgo._internal.crypto.internal.alias.Alias_inexactoverlap.inexactOverlap((_dst.__slice__(0, (_src.length)) : stdgo.Slice<stdgo.GoUInt8>), _src)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/cbc.go#L80"
            throw new stdgo.AnyInterface(("crypto/cipher: invalid buffer overlap" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        var _iv = (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._iv;
        //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/cbc.go#L85"
        while (((_src.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/cbc.go#L87"
            stdgo._internal.crypto.subtle.Subtle_xorbytes.xORBytes((_dst.__slice__(0, (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._blockSize) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__(0, (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._blockSize) : stdgo.Slice<stdgo.GoUInt8>), _iv);
            //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/cbc.go#L88"
            (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b.encrypt((_dst.__slice__(0, (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._blockSize) : stdgo.Slice<stdgo.GoUInt8>), (_dst.__slice__(0, (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._blockSize) : stdgo.Slice<stdgo.GoUInt8>));
            _iv = (_dst.__slice__(0, (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._blockSize) : stdgo.Slice<stdgo.GoUInt8>);
            _src = (_src.__slice__((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._blockSize) : stdgo.Slice<stdgo.GoUInt8>);
            _dst = (_dst.__slice__((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._blockSize) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/cbc.go#L97"
        (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._iv.__copyTo__(_iv);
    }
    @:keep
    @:tdfield
    static public function blockSize( _x:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_cbcencrypter.T_cbcEncrypter>):stdgo.GoInt {
        @:recv var _x:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_cbcencrypter.T_cbcEncrypter> = _x;
        //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/cbc.go#L70"
        return (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._blockSize;
    }
}

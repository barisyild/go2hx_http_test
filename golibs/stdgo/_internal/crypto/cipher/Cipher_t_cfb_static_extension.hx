package stdgo._internal.crypto.cipher;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.io.Io;
@:keep @:allow(stdgo._internal.crypto.cipher.Cipher.T_cfb_asInterface) class T_cfb_static_extension {
    @:keep
    @:tdfield
    static public function xORKeyStream( _x:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_cfb.T_cfb>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _x:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_cfb.T_cfb> = _x;
        //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/cfb.go#L24"
        if (((_dst.length) < (_src.length) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/cfb.go#L25"
            throw new stdgo.AnyInterface(("crypto/cipher: output smaller than input" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/cfb.go#L27"
        if (stdgo._internal.crypto.internal.alias.Alias_inexactoverlap.inexactOverlap((_dst.__slice__(0, (_src.length)) : stdgo.Slice<stdgo.GoUInt8>), _src)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/cfb.go#L28"
            throw new stdgo.AnyInterface(("crypto/cipher: invalid buffer overlap" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/cfb.go#L30"
        while (((_src.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/cfb.go#L31"
            if ((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._outUsed == (((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out.length))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/cfb.go#L32"
                (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b.encrypt((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out, (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next);
                (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._outUsed = (0 : stdgo.GoInt);
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/cfb.go#L36"
            if ((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._decrypt) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/cfb.go#L41"
                ((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next.__slice__((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._outUsed) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_src);
            };
            var _n = @:assignType (stdgo._internal.crypto.subtle.Subtle_xorbytes.xORBytes(_dst, _src, ((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out.__slice__((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._outUsed) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/cfb.go#L44"
            if (!(@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._decrypt) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/cfb.go#L45"
                ((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next.__slice__((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._outUsed) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_dst);
            };
            _dst = (_dst.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
            _src = (_src.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
            (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._outUsed = ((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._outUsed + (_n) : stdgo.GoInt);
        };
    }
}

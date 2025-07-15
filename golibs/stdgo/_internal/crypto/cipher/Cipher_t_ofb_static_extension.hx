package stdgo._internal.crypto.cipher;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.io.Io;
@:keep @:allow(stdgo._internal.crypto.cipher.Cipher.T_ofb_asInterface) class T_ofb_static_extension {
    @:keep
    @:tdfield
    static public function xORKeyStream( _x:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_ofb.T_ofb>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _x:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_ofb.T_ofb> = _x;
        //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/ofb.go#L62"
        if (((_dst.length) < (_src.length) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/ofb.go#L63"
            throw new stdgo.AnyInterface(("crypto/cipher: output smaller than input" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/ofb.go#L65"
        if (stdgo._internal.crypto.internal.alias.Alias_inexactoverlap.inexactOverlap((_dst.__slice__(0, (_src.length)) : stdgo.Slice<stdgo.GoUInt8>), _src)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/ofb.go#L66"
            throw new stdgo.AnyInterface(("crypto/cipher: invalid buffer overlap" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/ofb.go#L68"
        while (((_src.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/ofb.go#L69"
            if (((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._outUsed >= (((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out.length) - (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b.blockSize() : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/ofb.go#L70"
                _x._refill();
            };
            var _n = @:assignType (stdgo._internal.crypto.subtle.Subtle_xorbytes.xORBytes(_dst, _src, ((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out.__slice__((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._outUsed) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
            _dst = (_dst.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
            _src = (_src.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
            (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._outUsed = ((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._outUsed + (_n) : stdgo.GoInt);
        };
    }
    @:keep
    @:tdfield
    static public function _refill( _x:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_ofb.T_ofb>):Void {
        @:recv var _x:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_ofb.T_ofb> = _x;
        var _bs = @:assignType ((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b.blockSize() : stdgo.GoInt);
        var _remain = @:assignType (((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out.length) - (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._outUsed : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/ofb.go#L47"
        if ((_remain > (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._outUsed : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/ofb.go#L48"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/ofb.go#L50"
        (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out.__copyTo__(((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out.__slice__((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._outUsed) : stdgo.Slice<stdgo.GoUInt8>));
        (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out = ((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out.__slice__(0, (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out.capacity) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/ofb.go#L52"
        while ((_remain < (((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out.length) - _bs : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/ofb.go#L53"
            (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b.encrypt((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipher, (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipher);
            //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/ofb.go#L54"
            ((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out.__slice__(_remain) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipher);
            _remain = (_remain + (_bs) : stdgo.GoInt);
        };
        (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out = ((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out.__slice__(0, _remain) : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._outUsed = (0 : stdgo.GoInt);
    }
}

package stdgo._internal.crypto.des;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.strconv.Strconv;
@:keep @:allow(stdgo._internal.crypto.des.Des.KeySizeError_asInterface) class KeySizeError_static_extension {
    @:keep
    @:tdfield
    static public function error( _k:stdgo._internal.crypto.des.Des_keysizeerror.KeySizeError):stdgo.GoString {
        @:recv var _k:stdgo._internal.crypto.des.Des_keysizeerror.KeySizeError = _k;
        //"file:///Users/o/.go/go1.21.3/src/crypto/des/cipher.go#L20"
        return (("crypto/des: invalid key size " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa((_k : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__();
    }
}

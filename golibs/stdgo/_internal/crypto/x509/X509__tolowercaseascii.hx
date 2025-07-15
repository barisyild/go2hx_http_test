package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.des.Des;
import stdgo._internal.crypto.aes.Aes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.utf16.Utf16;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.encoding.asn1.Asn1;
import stdgo._internal.crypto.elliptic.Elliptic;
import stdgo._internal.crypto.ecdh.Ecdh;
import stdgo._internal.net.url.Url;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.net.Net;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.crypto.cipher.Cipher;
import stdgo._internal.io.Io;
import stdgo._internal.crypto.ed25519.Ed25519;
import stdgo._internal.os.Os;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.crypto.rsa.Rsa;
import stdgo._internal.crypto.ecdsa.Ecdsa;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.encoding.pem.Pem;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.md5.Md5;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.time.Time;
function _toLowerCaseASCII(_in:stdgo.GoString):stdgo.GoString {
        var _isAlreadyLowerCase = @:assignType (true : Bool);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L1049"
        if (_in != null) for (__1 => _c in _in) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L1050"
            if (_c == ((65533 : stdgo.GoInt32))) {
                _isAlreadyLowerCase = false;
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L1054"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L1056"
            if ((((65 : stdgo.GoInt32) <= _c : Bool) && (_c <= (90 : stdgo.GoInt32) : Bool) : Bool)) {
                _isAlreadyLowerCase = false;
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L1058"
                break;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L1062"
        if (_isAlreadyLowerCase) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L1063"
            return _in?.__copy__();
        };
        var _out = (_in : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L1067"
        if (_out != null) for (_i => _c in _out) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L1068"
            if ((((65 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                _out[(_i : stdgo.GoInt)] = (_out[(_i : stdgo.GoInt)] + ((32 : stdgo.GoUInt8)) : stdgo.GoUInt8);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L1072"
        return (_out : stdgo.GoString)?.__copy__();
    }

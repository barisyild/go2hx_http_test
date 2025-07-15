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
@:keep @:allow(stdgo._internal.crypto.x509.X509.SignatureAlgorithm_asInterface) class SignatureAlgorithm_static_extension {
    @:keep
    @:tdfield
    static public function string( _algo:stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm):stdgo.GoString {
        @:recv var _algo:stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm = _algo;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L245"
        if (stdgo._internal.crypto.x509.X509__signaturealgorithmdetails._signatureAlgorithmDetails != null) for (__1 => _details in stdgo._internal.crypto.x509.X509__signaturealgorithmdetails._signatureAlgorithmDetails) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L246"
            if (_details._algo == (_algo)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L247"
                return _details._name?.__copy__();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L250"
        return stdgo._internal.strconv.Strconv_itoa.itoa((_algo : stdgo.GoInt))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _isRSAPSS( _algo:stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm):Bool {
        @:recv var _algo:stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm = _algo;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L236"
        {
            final __value__ = _algo;
            if (__value__ == ((13 : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm)) || __value__ == ((14 : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm)) || __value__ == ((15 : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L238"
                return true;
            } else {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L240"
                return false;
            };
        };
    }
}

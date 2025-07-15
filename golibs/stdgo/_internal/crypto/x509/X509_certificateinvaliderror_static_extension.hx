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
@:keep @:allow(stdgo._internal.crypto.x509.X509.CertificateInvalidError_asInterface) class CertificateInvalidError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.crypto.x509.X509_certificateinvaliderror.CertificateInvalidError):stdgo.GoString {
        @:recv var _e:stdgo._internal.crypto.x509.X509_certificateinvaliderror.CertificateInvalidError = _e?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L70"
        {
            final __value__ = _e.reason;
            if (__value__ == ((0 : stdgo._internal.crypto.x509.X509_invalidreason.InvalidReason))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L72"
                return ("x509: certificate is not authorized to sign other certificates" : stdgo.GoString);
            } else if (__value__ == ((1 : stdgo._internal.crypto.x509.X509_invalidreason.InvalidReason))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L74"
                return (("x509: certificate has expired or is not yet valid: " : stdgo.GoString) + _e.detail?.__copy__() : stdgo.GoString)?.__copy__();
            } else if (__value__ == ((2 : stdgo._internal.crypto.x509.X509_invalidreason.InvalidReason))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L76"
                return (("x509: a root or intermediate certificate is not authorized to sign for this name: " : stdgo.GoString) + _e.detail?.__copy__() : stdgo.GoString)?.__copy__();
            } else if (__value__ == ((9 : stdgo._internal.crypto.x509.X509_invalidreason.InvalidReason))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L78"
                return (("x509: a root or intermediate certificate is not authorized for an extended key usage: " : stdgo.GoString) + _e.detail?.__copy__() : stdgo.GoString)?.__copy__();
            } else if (__value__ == ((3 : stdgo._internal.crypto.x509.X509_invalidreason.InvalidReason))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L80"
                return ("x509: too many intermediates for path length constraint" : stdgo.GoString);
            } else if (__value__ == ((4 : stdgo._internal.crypto.x509.X509_invalidreason.InvalidReason))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L82"
                return ("x509: certificate specifies an incompatible key usage" : stdgo.GoString);
            } else if (__value__ == ((5 : stdgo._internal.crypto.x509.X509_invalidreason.InvalidReason))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L84"
                return ("x509: issuer name does not match subject from issuing certificate" : stdgo.GoString);
            } else if (__value__ == ((6 : stdgo._internal.crypto.x509.X509_invalidreason.InvalidReason))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L86"
                return ("x509: issuer has name constraints but leaf doesn\'t have a SAN extension" : stdgo.GoString);
            } else if (__value__ == ((7 : stdgo._internal.crypto.x509.X509_invalidreason.InvalidReason))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L88"
                return (("x509: issuer has name constraints but leaf contains unknown or unconstrained name: " : stdgo.GoString) + _e.detail?.__copy__() : stdgo.GoString)?.__copy__();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L90"
        return ("x509: unknown error" : stdgo.GoString);
    }
}

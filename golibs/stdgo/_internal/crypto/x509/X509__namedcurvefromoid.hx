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
function _namedCurveFromOID(_oid:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier):stdgo._internal.crypto.elliptic.Elliptic_curve.Curve {
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L528"
        if (_oid.equal(stdgo._internal.crypto.x509.X509__oidnamedcurvep224._oidNamedCurveP224)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L530"
            return stdgo._internal.crypto.elliptic.Elliptic_p224.p224();
        } else if (_oid.equal(stdgo._internal.crypto.x509.X509__oidnamedcurvep256._oidNamedCurveP256)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L532"
            return stdgo._internal.crypto.elliptic.Elliptic_p256.p256();
        } else if (_oid.equal(stdgo._internal.crypto.x509.X509__oidnamedcurvep384._oidNamedCurveP384)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L534"
            return stdgo._internal.crypto.elliptic.Elliptic_p384.p384();
        } else if (_oid.equal(stdgo._internal.crypto.x509.X509__oidnamedcurvep521._oidNamedCurveP521)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L536"
            return stdgo._internal.crypto.elliptic.Elliptic_p521.p521();
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L538"
        return (null : stdgo._internal.crypto.elliptic.Elliptic_curve.Curve);
    }

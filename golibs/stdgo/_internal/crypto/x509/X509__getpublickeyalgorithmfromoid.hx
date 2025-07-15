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
function _getPublicKeyAlgorithmFromOID(_oid:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier):stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm {
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L491"
        if (_oid.equal(stdgo._internal.crypto.x509.X509__oidpublickeyrsa._oidPublicKeyRSA)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L493"
            return (1 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm);
        } else if (_oid.equal(stdgo._internal.crypto.x509.X509__oidpublickeydsa._oidPublicKeyDSA)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L495"
            return (2 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm);
        } else if (_oid.equal(stdgo._internal.crypto.x509.X509__oidpublickeyecdsa._oidPublicKeyECDSA)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L497"
            return (3 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm);
        } else if (_oid.equal(stdgo._internal.crypto.x509.X509__oidpublickeyed25519._oidPublicKeyEd25519)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L499"
            return (4 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L501"
        return (0 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm);
    }

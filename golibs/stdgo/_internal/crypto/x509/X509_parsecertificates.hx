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
function parseCertificates(_der:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>; var _1 : stdgo.Error; } {
        var _certs:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L999"
        while (((_der.length) > (0 : stdgo.GoInt) : Bool)) {
            var __tmp__ = stdgo._internal.crypto.x509.X509__parsecertificate._parseCertificate(_der), _cert:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1001"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1002"
                return { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>), _1 : _err };
            };
            _certs = (_certs.__append__(_cert) : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>);
            _der = (_der.__slice__(((@:checkr _cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).raw.length)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1007"
        return { _0 : _certs, _1 : (null : stdgo.Error) };
    }

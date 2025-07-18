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
function _oidFromExtKeyUsage(_eku:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage):{ var _0 : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier; var _1 : Bool; } {
        var _oid = (new stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier(0, 0) : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier), _ok = false;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L668"
        if (stdgo._internal.crypto.x509.X509__extkeyusageoids._extKeyUsageOIDs != null) for (__1 => _pair in stdgo._internal.crypto.x509.X509__extkeyusageoids._extKeyUsageOIDs) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L669"
            if (_eku == (_pair._extKeyUsage)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L670"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier; var _1 : Bool; } = { _0 : _pair._oid, _1 : true };
                    _oid = __tmp__._0;
                    _ok = __tmp__._1;
                    __tmp__;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L673"
        return { _0 : _oid, _1 : _ok };
    }

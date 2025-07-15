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
function _isIA5String(_s:stdgo.GoString):stdgo.Error {
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1085"
        if (_s != null) for (__1 => _r in _s) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1087"
            if ((_r > (127 : stdgo.GoInt32) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1088"
                return stdgo._internal.fmt.Fmt_errorf.errorf(("x509: %q cannot be encoded as an IA5String" : stdgo.GoString), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1092"
        return (null : stdgo.Error);
    }

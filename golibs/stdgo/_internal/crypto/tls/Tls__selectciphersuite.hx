package stdgo._internal.crypto.tls;
import stdgo._internal.internal.cpu.Cpu;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.crypto.ecdsa.Ecdsa;
import stdgo._internal.crypto.ed25519.Ed25519;
import stdgo._internal.crypto.rsa.Rsa;
import stdgo._internal.io.Io;
import stdgo._internal.crypto.elliptic.Elliptic;
import stdgo._internal.crypto.rc4.Rc4;
import stdgo._internal.crypto.des.Des;
import stdgo._internal.crypto.cipher.Cipher;
import stdgo._internal.crypto.aes.Aes;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.hmac.Hmac;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.internal.boring.Boring;
import _internal.golangdotorg.x.crypto.chacha20poly1305.Chacha20poly1305;
import stdgo._internal.container.list.List;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.net.Net;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.crypto.md5.Md5;
import stdgo._internal.crypto.ecdh.Ecdh;
import stdgo._internal.crypto.sha512.Sha512;
import stdgo._internal.context.Context;
import stdgo._internal.os.Os;
import stdgo._internal.encoding.pem.Pem;
import stdgo._internal.crypto.x509.X509;
import stdgo._internal.runtime.Runtime;
import _internal.golangdotorg.x.crypto.hkdf.Hkdf;
import stdgo._internal.crypto.rand.Rand;
import stdgo._internal.time.Time;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.encoding.binary.Binary;
import _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte;
function _selectCipherSuite(_ids:stdgo.Slice<stdgo.GoUInt16>, _supportedIDs:stdgo.Slice<stdgo.GoUInt16>, _ok:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ciphersuite.T_cipherSuite> -> Bool):stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ciphersuite.T_cipherSuite> {
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/cipher_suites.go#L177"
        if (_ids != null) for (__3 => _id in _ids) {
            var _candidate = stdgo._internal.crypto.tls.Tls__ciphersuitebyid._cipherSuiteByID(_id);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/cipher_suites.go#L179"
            if ((({
                final value = _candidate;
                (value == null || (value : Dynamic).__nil__);
            }) || !_ok(_candidate) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/cipher_suites.go#L180"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/cipher_suites.go#L183"
            if (_supportedIDs != null) for (__4 => _suppID in _supportedIDs) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/cipher_suites.go#L184"
                if (_id == (_suppID)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/cipher_suites.go#L185"
                    return _candidate;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/cipher_suites.go#L189"
        return null;
    }

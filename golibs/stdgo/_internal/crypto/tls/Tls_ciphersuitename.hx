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
function cipherSuiteName(_id:stdgo.GoUInt16):stdgo.GoString {
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/cipher_suites.go#L101"
        if (stdgo._internal.crypto.tls.Tls_ciphersuites.cipherSuites() != null) for (__3 => _c in stdgo._internal.crypto.tls.Tls_ciphersuites.cipherSuites()) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/cipher_suites.go#L102"
            if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iD == (_id)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/cipher_suites.go#L103"
                return (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name?.__copy__();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/cipher_suites.go#L106"
        if (stdgo._internal.crypto.tls.Tls_insecureciphersuites.insecureCipherSuites() != null) for (__4 => _c in stdgo._internal.crypto.tls.Tls_insecureciphersuites.insecureCipherSuites()) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/cipher_suites.go#L107"
            if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iD == (_id)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/cipher_suites.go#L108"
                return (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name?.__copy__();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/cipher_suites.go#L111"
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("0x%04X" : stdgo.GoString), new stdgo.AnyInterface(_id, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint16_kind))))?.__copy__();
    }

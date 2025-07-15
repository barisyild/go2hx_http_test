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
function versionName(_version:stdgo.GoUInt16):stdgo.GoString {
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L43"
        {
            final __value__ = _version;
            if (__value__ == ((768 : stdgo.GoUInt16))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L45"
                return ("SSLv3" : stdgo.GoString);
            } else if (__value__ == ((769 : stdgo.GoUInt16))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L47"
                return ("TLS 1.0" : stdgo.GoString);
            } else if (__value__ == ((770 : stdgo.GoUInt16))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L49"
                return ("TLS 1.1" : stdgo.GoString);
            } else if (__value__ == ((771 : stdgo.GoUInt16))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L51"
                return ("TLS 1.2" : stdgo.GoString);
            } else if (__value__ == ((772 : stdgo.GoUInt16))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L53"
                return ("TLS 1.3" : stdgo.GoString);
            } else {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L55"
                return stdgo._internal.fmt.Fmt_sprintf.sprintf(("0x%04X" : stdgo.GoString), new stdgo.AnyInterface(_version, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint16_kind))))?.__copy__();
            };
        };
    }

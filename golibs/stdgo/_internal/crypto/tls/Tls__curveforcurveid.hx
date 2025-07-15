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
function _curveForCurveID(_id:stdgo._internal.crypto.tls.Tls_curveid.CurveID):{ var _0 : stdgo._internal.crypto.ecdh.Ecdh_curve.Curve; var _1 : Bool; } {
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_schedule.go#L132"
        {
            final __value__ = _id;
            if (__value__ == ((29 : stdgo._internal.crypto.tls.Tls_curveid.CurveID))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_schedule.go#L134"
                return { _0 : stdgo._internal.crypto.ecdh.Ecdh_x25519.x25519(), _1 : true };
            } else if (__value__ == ((23 : stdgo._internal.crypto.tls.Tls_curveid.CurveID))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_schedule.go#L136"
                return { _0 : stdgo._internal.crypto.ecdh.Ecdh_p256.p256(), _1 : true };
            } else if (__value__ == ((24 : stdgo._internal.crypto.tls.Tls_curveid.CurveID))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_schedule.go#L138"
                return { _0 : stdgo._internal.crypto.ecdh.Ecdh_p384.p384(), _1 : true };
            } else if (__value__ == ((25 : stdgo._internal.crypto.tls.Tls_curveid.CurveID))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_schedule.go#L140"
                return { _0 : stdgo._internal.crypto.ecdh.Ecdh_p521.p521(), _1 : true };
            } else {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_schedule.go#L142"
                return { _0 : (null : stdgo._internal.crypto.ecdh.Ecdh_curve.Curve), _1 : false };
            };
        };
    }

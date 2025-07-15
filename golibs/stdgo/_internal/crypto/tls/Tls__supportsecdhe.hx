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
function _supportsECDHE(_c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, _supportedCurves:stdgo.Slice<stdgo._internal.crypto.tls.Tls_curveid.CurveID>, _supportedPoints:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _supportsCurve = @:assignType (false : Bool);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L318"
        if (_supportedCurves != null) for (__3 => _curve in _supportedCurves) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L319"
            if (_c._supportsCurve(_curve)) {
                _supportsCurve = true;
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L321"
                break;
            };
        };
        var _supportsPointFormat = @:assignType (false : Bool);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L326"
        if (_supportedPoints != null) for (__4 => _pointFormat in _supportedPoints) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L327"
            if (_pointFormat == ((0 : stdgo.GoUInt8))) {
                _supportsPointFormat = true;
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L329"
                break;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L336"
        if ((_supportedPoints.length) == ((0 : stdgo.GoInt))) {
            _supportsPointFormat = true;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L340"
        return (_supportsCurve && _supportsPointFormat : Bool);
    }

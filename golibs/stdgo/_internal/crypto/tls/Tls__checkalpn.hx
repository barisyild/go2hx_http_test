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
function _checkALPN(_clientProtos:stdgo.Slice<stdgo.GoString>, _serverProto:stdgo.GoString, _quic:Bool):stdgo.Error {
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L825"
        if (_serverProto == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L826"
            if ((_quic && ((_clientProtos.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L828"
                return stdgo._internal.errors.Errors_new_.new_(("tls: server did not select an ALPN protocol" : stdgo.GoString));
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L830"
            return (null : stdgo.Error);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L832"
        if ((_clientProtos.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L833"
            return stdgo._internal.errors.Errors_new_.new_(("tls: server advertised unrequested ALPN extension" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L835"
        if (_clientProtos != null) for (__3 => _proto in _clientProtos) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L836"
            if (_proto == (_serverProto)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L837"
                return (null : stdgo.Error);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L840"
        return stdgo._internal.errors.Errors_new_.new_(("tls: server selected unadvertised ALPN protocol" : stdgo.GoString));
    }

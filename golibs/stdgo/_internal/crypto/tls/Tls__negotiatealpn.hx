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
function _negotiateALPN(_serverProtos:stdgo.Slice<stdgo.GoString>, _clientProtos:stdgo.Slice<stdgo.GoString>, _quic:Bool):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L286"
        if (((_serverProtos.length == (0 : stdgo.GoInt)) || (_clientProtos.length == (0 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L287"
            if ((_quic && (_serverProtos.length != (0 : stdgo.GoInt)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L289"
                return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("tls: client did not request an application protocol" : stdgo.GoString)) };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L291"
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
        };
        var _http11fallback:Bool = false;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L294"
        if (_serverProtos != null) for (__3 => _s in _serverProtos) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L295"
            if (_clientProtos != null) for (__4 => _c in _clientProtos) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L296"
                if (_s == (_c)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L297"
                    return { _0 : _s?.__copy__(), _1 : (null : stdgo.Error) };
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L299"
                if (((_s == ("h2" : stdgo.GoString)) && (_c == ("http/1.1" : stdgo.GoString)) : Bool)) {
                    _http11fallback = true;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L308"
        if (_http11fallback) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L309"
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L311"
        return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("tls: client requested unsupported application protocols (%s)" : stdgo.GoString), new stdgo.AnyInterface(_clientProtos, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) })))) };
    }

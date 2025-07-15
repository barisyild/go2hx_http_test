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
function _checkKeySize(_n:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        var _max = (0 : stdgo.GoInt), _ok = false;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L948"
        {
            var _v = @:assignType (stdgo._internal.crypto.tls.Tls__tlsmaxrsasize._tlsmaxrsasize.value()?.__copy__() : stdgo.GoString);
            if (_v != ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L949"
                {
                    var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi(_v?.__copy__()), _max:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err == null) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L950"
                        if (((_n <= _max : Bool)) != ((_n <= (8192 : stdgo.GoInt) : Bool))) {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L951"
                            stdgo._internal.crypto.tls.Tls__tlsmaxrsasize._tlsmaxrsasize.incNonDefault();
                        };
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L953"
                        return {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : _max, _1 : (_n <= _max : Bool) };
                            _max = __tmp__._0;
                            _ok = __tmp__._1;
                            __tmp__;
                        };
                    };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L956"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : (8192 : stdgo.GoInt), _1 : (_n <= (8192 : stdgo.GoInt) : Bool) };
            _max = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }

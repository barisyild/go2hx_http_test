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
function _pHash(_result:stdgo.Slice<stdgo.GoUInt8>, _secret:stdgo.Slice<stdgo.GoUInt8>, _seed:stdgo.Slice<stdgo.GoUInt8>, _hash:() -> stdgo._internal.hash.Hash_hash.Hash):Void {
        var _h = @:assignType (stdgo._internal.crypto.hmac.Hmac_new_.new_(_hash, _secret) : stdgo._internal.hash.Hash_hash.Hash);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/prf.go#L29"
        _h.write(_seed);
        var _a = _h.sum((null : stdgo.Slice<stdgo.GoUInt8>));
        var _j = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/prf.go#L33"
        while ((_j < (_result.length) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/prf.go#L34"
            _h.reset();
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/prf.go#L35"
            _h.write(_a);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/prf.go#L36"
            _h.write(_seed);
            var _b = _h.sum((null : stdgo.Slice<stdgo.GoUInt8>));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/prf.go#L38"
            (_result.__slice__(_j) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_b);
            _j = (_j + ((_b.length)) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/prf.go#L41"
            _h.reset();
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/prf.go#L42"
            _h.write(_a);
            _a = _h.sum((null : stdgo.Slice<stdgo.GoUInt8>));
        };
    }

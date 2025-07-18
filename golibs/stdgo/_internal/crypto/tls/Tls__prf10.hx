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
function _prf10(_result:stdgo.Slice<stdgo.GoUInt8>, _secret:stdgo.Slice<stdgo.GoUInt8>, _label:stdgo.Slice<stdgo.GoUInt8>, _seed:stdgo.Slice<stdgo.GoUInt8>):Void {
        var _hashSHA1 = @:assignType (stdgo._internal.crypto.sha1.Sha1_new_.new_ : () -> stdgo._internal.hash.Hash_hash.Hash);
        var _hashMD5 = @:assignType (stdgo._internal.crypto.md5.Md5_new_.new_ : () -> stdgo._internal.hash.Hash_hash.Hash);
        var _labelAndSeed = (new stdgo.Slice<stdgo.GoUInt8>(((_label.length) + (_seed.length) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/prf.go#L53"
        _labelAndSeed.__copyTo__(_label);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/prf.go#L54"
        (_labelAndSeed.__slice__((_label.length)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_seed);
        var __tmp__ = stdgo._internal.crypto.tls.Tls__splitpremastersecret._splitPreMasterSecret(_secret), _s1:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _s2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/prf.go#L57"
        stdgo._internal.crypto.tls.Tls__phash._pHash(_result, _s1, _labelAndSeed, _hashMD5);
        var _result2 = (new stdgo.Slice<stdgo.GoUInt8>((_result.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/prf.go#L59"
        stdgo._internal.crypto.tls.Tls__phash._pHash(_result2, _s2, _labelAndSeed, _hashSHA1);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/prf.go#L61"
        if (_result2 != null) for (_i => _b in _result2) {
            _result[(_i : stdgo.GoInt)] = (_result[(_i : stdgo.GoInt)] ^ (_b) : stdgo.GoUInt8);
        };
    }

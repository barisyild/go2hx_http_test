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
function _hashForServerKeyExchange(_sigType:stdgo.GoUInt8, _hashFunc:stdgo._internal.crypto.Crypto_hash.Hash, _version:stdgo.GoUInt16, _slices:haxe.Rest<stdgo.Slice<stdgo.GoUInt8>>):stdgo.Slice<stdgo.GoUInt8> {
        var _slices = new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>(_slices.length, 0, ..._slices);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L133"
        if (_sigType == ((228 : stdgo.GoUInt8))) {
            var _signed:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L135"
            if (_slices != null) for (__3 => _slice in _slices) {
                _signed = (_signed.__append__(...(_slice : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L138"
            return _signed;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L140"
        if ((_version >= (771 : stdgo.GoUInt16) : Bool)) {
            var _h = @:assignType (_hashFunc.new_() : stdgo._internal.hash.Hash_hash.Hash);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L142"
            if (_slices != null) for (__3 => _slice in _slices) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L143"
                _h.write(_slice);
            };
            var _digest = _h.sum((null : stdgo.Slice<stdgo.GoUInt8>));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L146"
            return _digest;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L148"
        if (_sigType == ((227 : stdgo.GoUInt8))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L149"
            return stdgo._internal.crypto.tls.Tls__sha1hash._sha1Hash(_slices);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L151"
        return stdgo._internal.crypto.tls.Tls__md5sha1hash._md5SHA1Hash(_slices);
    }

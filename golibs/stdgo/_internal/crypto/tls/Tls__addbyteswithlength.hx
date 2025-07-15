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
function _addBytesWithLength(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>, _v:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):Void {
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L26"
        _b.addValue(stdgo.Go.asInterface((function(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):stdgo.Error {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L27"
            if ((_v.length) != (_n)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L28"
                return stdgo._internal.fmt.Fmt_errorf.errorf(("invalid value length: expected %d, got %d" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((_v.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L30"
            _b.addBytes(_v);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L31"
            return (null : stdgo.Error);
        } : stdgo._internal.crypto.tls.Tls_t_marshalingfunction.T_marshalingFunction), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_marshalingfunctiondott_marshalingfunction.__type__stdgodot_internaldotcryptodottlsdotTls_t_marshalingfunctiondotT_marshalingFunction));
    }

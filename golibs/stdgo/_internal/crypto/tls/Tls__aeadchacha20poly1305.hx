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
function _aeadChaCha20Poly1305(_key:stdgo.Slice<stdgo.GoUInt8>, _nonceMask:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.crypto.tls.Tls_t_aead.T_aead {
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/cipher_suites.go#L546"
        if ((_nonceMask.length) != ((12 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/cipher_suites.go#L547"
            throw new stdgo.AnyInterface(("tls: internal error: wrong nonce length" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        var __tmp__ = _internal.golangdotorg.x.crypto.chacha20poly1305.Chacha20poly1305_new_.new_(_key), _aead:stdgo._internal.crypto.cipher.Cipher_aead.AEAD = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/cipher_suites.go#L550"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/cipher_suites.go#L551"
            throw ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            });
        };
        var _ret = (stdgo.Go.setRef(({ _aead : _aead } : stdgo._internal.crypto.tls.Tls_t_xornonceaead.T_xorNonceAEAD), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_xornonceaeaddott_xornonceaead.__type__stdgodot_internaldotcryptodottlsdotTls_t_xornonceaeaddotT_xorNonceAEAD })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_xornonceaead.T_xorNonceAEAD>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/cipher_suites.go#L555"
        ((@:checkr _ret ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nonceMask.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_nonceMask);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/cipher_suites.go#L556"
        return stdgo.Go.asInterface(_ret, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_xornonceaeaddott_xornonceaead.__type__stdgodot_internaldotcryptodottlsdotTls_t_xornonceaeaddotT_xorNonceAEAD }));
    }

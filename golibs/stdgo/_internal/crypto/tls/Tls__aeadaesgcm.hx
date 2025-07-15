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
function _aeadAESGCM(_key:stdgo.Slice<stdgo.GoUInt8>, _noncePrefix:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.crypto.tls.Tls_t_aead.T_aead {
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/cipher_suites.go#L504"
        if ((_noncePrefix.length) != ((4 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/cipher_suites.go#L505"
            throw new stdgo.AnyInterface(("tls: internal error: wrong nonce length" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        var __tmp__ = stdgo._internal.crypto.aes.Aes_newcipher.newCipher(_key), _aes:stdgo._internal.crypto.cipher.Cipher_block.Block = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/cipher_suites.go#L508"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/cipher_suites.go#L509"
            throw ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            });
        };
        var _aead:stdgo._internal.crypto.cipher.Cipher_aead.AEAD = (null : stdgo._internal.crypto.cipher.Cipher_aead.AEAD);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/cipher_suites.go#L512"
        if (false) {
            {
                var __tmp__ = stdgo._internal.crypto.internal.boring.Boring_newgcmtls.newGCMTLS(_aes);
                _aead = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
        } else {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/cipher_suites.go#L515"
            stdgo._internal.crypto.internal.boring.Boring_unreachable.unreachable();
            {
                var __tmp__ = stdgo._internal.crypto.cipher.Cipher_newgcm.newGCM(_aes);
                _aead = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/cipher_suites.go#L518"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/cipher_suites.go#L519"
            throw ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            });
        };
        var _ret = (stdgo.Go.setRef(({ _aead : _aead } : stdgo._internal.crypto.tls.Tls_t_prefixnonceaead.T_prefixNonceAEAD), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_prefixnonceaeaddott_prefixnonceaead.__type__stdgodot_internaldotcryptodottlsdotTls_t_prefixnonceaeaddotT_prefixNonceAEAD })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_prefixnonceaead.T_prefixNonceAEAD>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/cipher_suites.go#L523"
        ((@:checkr _ret ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nonce.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_noncePrefix);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/cipher_suites.go#L524"
        return stdgo.Go.asInterface(_ret, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_prefixnonceaeaddott_prefixnonceaead.__type__stdgodot_internaldotcryptodottlsdotTls_t_prefixnonceaeaddotT_prefixNonceAEAD }));
    }

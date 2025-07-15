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
function _verifyHandshakeSignature(_sigType:stdgo.GoUInt8, _pubkey:stdgo._internal.crypto.Crypto_publickey.PublicKey, _hashFunc:stdgo._internal.crypto.Crypto_hash.Hash, _signed:stdgo.Slice<stdgo.GoUInt8>, _sig:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L23"
        {
            final __value__ = _sigType;
            if (__value__ == ((227 : stdgo.GoUInt8))) {
                var __tmp__ = @:castTranslate try {
                    { _0 : (stdgo.Go.typeAssert(_pubkey, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotecdsadotecdsa_publickeydotpublickey.__type__stdgodot_internaldotcryptodotecdsadotEcdsa_publickeydotPublicKey })) : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>), _1 : true };
                } catch(__exception__) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>), _1 : false };
                }, _pubKey = __tmp__._0, _ok = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L26"
                if (!_ok) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L27"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("expected an ECDSA public key, got %T" : stdgo.GoString), ({
                        final __t__ = _pubkey;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcrypto_publickeydotpublickey.__type__stdgodot_internaldotcryptodotCrypto_publickeydotPublicKey)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }));
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L29"
                if (!stdgo._internal.crypto.ecdsa.Ecdsa_verifyasn1.verifyASN1(_pubKey, _signed, _sig)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L30"
                    return stdgo._internal.errors.Errors_new_.new_(("ECDSA verification failure" : stdgo.GoString));
                };
            } else if (__value__ == ((228 : stdgo.GoUInt8))) {
                var __tmp__ = @:castTranslate try {
                    { _0 : (stdgo.Go.typeAssert(_pubkey, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodoted25519doted25519_publickeydotpublickey.__type__stdgodot_internaldotcryptodoted25519dotEd25519_publickeydotPublicKey) : stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey), _1 : true };
                } catch(__exception__) {
                    { _0 : (new stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey(0, 0) : stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey), _1 : false };
                }, _pubKey = __tmp__._0, _ok = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L34"
                if (!_ok) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L35"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("expected an Ed25519 public key, got %T" : stdgo.GoString), ({
                        final __t__ = _pubkey;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcrypto_publickeydotpublickey.__type__stdgodot_internaldotcryptodotCrypto_publickeydotPublicKey)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }));
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L37"
                if (!stdgo._internal.crypto.ed25519.Ed25519_verify.verify(_pubKey, _signed, _sig)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L38"
                    return stdgo._internal.errors.Errors_new_.new_(("Ed25519 verification failure" : stdgo.GoString));
                };
            } else if (__value__ == ((225 : stdgo.GoUInt8))) {
                var __tmp__ = @:castTranslate try {
                    { _0 : (stdgo.Go.typeAssert(_pubkey, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_publickeydotpublickey.__type__stdgodot_internaldotcryptodotrsadotRsa_publickeydotPublicKey })) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>), _1 : true };
                } catch(__exception__) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>), _1 : false };
                }, _pubKey = __tmp__._0, _ok = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L42"
                if (!_ok) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L43"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("expected an RSA public key, got %T" : stdgo.GoString), ({
                        final __t__ = _pubkey;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcrypto_publickeydotpublickey.__type__stdgodot_internaldotcryptodotCrypto_publickeydotPublicKey)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }));
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L45"
                {
                    var _err = @:assignType (stdgo._internal.crypto.rsa.Rsa_verifypkcs1v15.verifyPKCS1v15(_pubKey, _hashFunc, _signed, _sig) : stdgo.Error);
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L46"
                        return _err;
                    };
                };
            } else if (__value__ == ((226 : stdgo.GoUInt8))) {
                var __tmp__ = @:castTranslate try {
                    { _0 : (stdgo.Go.typeAssert(_pubkey, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_publickeydotpublickey.__type__stdgodot_internaldotcryptodotrsadotRsa_publickeydotPublicKey })) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>), _1 : true };
                } catch(__exception__) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>), _1 : false };
                }, _pubKey = __tmp__._0, _ok = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L50"
                if (!_ok) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L51"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("expected an RSA public key, got %T" : stdgo.GoString), ({
                        final __t__ = _pubkey;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcrypto_publickeydotpublickey.__type__stdgodot_internaldotcryptodotCrypto_publickeydotPublicKey)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }));
                };
                var _signOpts = (stdgo.Go.setRef(({ saltLength : (-1 : stdgo.GoInt) } : stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_pssoptionsdotpssoptions.__type__stdgodot_internaldotcryptodotrsadotRsa_pssoptionsdotPSSOptions })) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions>);
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L54"
                {
                    var _err = @:assignType (stdgo._internal.crypto.rsa.Rsa_verifypss.verifyPSS(_pubKey, _hashFunc, _signed, _sig, _signOpts) : stdgo.Error);
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L55"
                        return _err;
                    };
                };
            } else {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L58"
                return stdgo._internal.errors.Errors_new_.new_(("internal error: unknown signature type" : stdgo.GoString));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L60"
        return (null : stdgo.Error);
    }

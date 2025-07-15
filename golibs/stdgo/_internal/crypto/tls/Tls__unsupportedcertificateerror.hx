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
function _unsupportedCertificateError(_cert:stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>):stdgo.Error {
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L258"
        {
            final __type__ = (@:checkr _cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).privateKey;
            if (stdgo.Go.typeEquals(__type__, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_privatekeydotprivatekey.__type__stdgodot_internaldotcryptodotrsadotRsa_privatekeydotPrivateKey) || stdgo.Go.typeEquals(__type__, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotecdsadotecdsa_privatekeydotprivatekey.__type__stdgodot_internaldotcryptodotecdsadotEcdsa_privatekeydotPrivateKey)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L260"
                return stdgo._internal.fmt.Fmt_errorf.errorf(("tls: unsupported certificate: private key is %T, expected *%T" : stdgo.GoString), ({
                    final __t__ = (@:checkr _cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).privateKey;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcrypto_privatekeydotprivatekey.__type__stdgodot_internaldotcryptodotCrypto_privatekeydotPrivateKey)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), ({
                    final __t__ = (@:checkr _cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).privateKey;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcrypto_privatekeydotprivatekey.__type__stdgodot_internaldotcryptodotCrypto_privatekeydotPrivateKey)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodoted25519doted25519_privatekeydotprivatekey.__type__stdgodot_internaldotcryptodoted25519dotEd25519_privatekeydotPrivateKey }))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L263"
                return stdgo._internal.fmt.Fmt_errorf.errorf(("tls: unsupported certificate: private key is *ed25519.PrivateKey, expected ed25519.PrivateKey" : stdgo.GoString));
            };
        };
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert((@:checkr _cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).privateKey, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcrypto_signerdotsigner.__type__stdgodot_internaldotcryptodotCrypto_signerdotSigner) : stdgo._internal.crypto.Crypto_signer.Signer), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo._internal.crypto.Crypto_signer.Signer), _1 : false };
        }, _signer = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L267"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L268"
            return stdgo._internal.fmt.Fmt_errorf.errorf(("tls: certificate private key (%T) does not implement crypto.Signer" : stdgo.GoString), ({
                final __t__ = (@:checkr _cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).privateKey;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcrypto_privatekeydotprivatekey.__type__stdgodot_internaldotcryptodotCrypto_privatekeydotPrivateKey)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L272"
        {
            final __type__ = _signer.public_();
            if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotecdsadotecdsa_publickeydotpublickey.__type__stdgodot_internaldotcryptodotecdsadotEcdsa_publickeydotPublicKey }))) {
                var _pub:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L274"
                {
                    final __value__ = (@:checkr _pub ?? throw stdgo.Error._nullPointerDereference.__underlying__()).curve;
                    if (({
                        final __t__ = __value__;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotellipticdotelliptic_curvedotcurve.__type__stdgodot_internaldotcryptodotellipticdotElliptic_curvedotCurve)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }) == (({
                        final __t__ = stdgo._internal.crypto.elliptic.Elliptic_p256.p256();
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotellipticdotelliptic_curvedotcurve.__type__stdgodot_internaldotcryptodotellipticdotElliptic_curvedotCurve)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }))) {} else if (({
                        final __t__ = __value__;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotellipticdotelliptic_curvedotcurve.__type__stdgodot_internaldotcryptodotellipticdotElliptic_curvedotCurve)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }) == (({
                        final __t__ = stdgo._internal.crypto.elliptic.Elliptic_p384.p384();
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotellipticdotelliptic_curvedotcurve.__type__stdgodot_internaldotcryptodotellipticdotElliptic_curvedotCurve)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }))) {} else if (({
                        final __t__ = __value__;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotellipticdotelliptic_curvedotcurve.__type__stdgodot_internaldotcryptodotellipticdotElliptic_curvedotCurve)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }) == (({
                        final __t__ = stdgo._internal.crypto.elliptic.Elliptic_p521.p521();
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotellipticdotelliptic_curvedotcurve.__type__stdgodot_internaldotcryptodotellipticdotElliptic_curvedotCurve)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }))) {} else {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L279"
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("tls: unsupported certificate curve (%s)" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _pub ?? throw stdgo.Error._nullPointerDereference.__underlying__()).curve.params().name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                    };
                };
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_publickeydotpublickey.__type__stdgodot_internaldotcryptodotrsadotRsa_publickeydotPublicKey }))) {
                var _pub:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L282"
                return stdgo._internal.fmt.Fmt_errorf.errorf(("tls: certificate RSA key size too small for supported signature algorithms" : stdgo.GoString));
            } else if (stdgo.Go.typeEquals(__type__, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodoted25519doted25519_publickeydotpublickey.__type__stdgodot_internaldotcryptodoted25519dotEd25519_publickeydotPublicKey)) {
                var _pub:stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey = __type__ == null ? (new stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey(0, 0) : stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey) : __type__.__underlying__() == null ? (new stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey(0, 0) : stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (new stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey(0, 0) : stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey) : __type__.__underlying__().value);
            } else {
                var _pub:stdgo._internal.crypto.Crypto_publickey.PublicKey = __type__?.__underlying__();
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L285"
                return stdgo._internal.fmt.Fmt_errorf.errorf(("tls: unsupported certificate key (%T)" : stdgo.GoString), ({
                    final __t__ = _pub;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcrypto_publickeydotpublickey.__type__stdgodot_internaldotcryptodotCrypto_publickeydotPublicKey)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L288"
        if ((@:checkr _cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).supportedSignatureAlgorithms != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L289"
            return stdgo._internal.fmt.Fmt_errorf.errorf(("tls: peer doesn\'t support the certificate custom signature algorithms" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L292"
        return stdgo._internal.fmt.Fmt_errorf.errorf(("tls: internal error: unsupported key (%T)" : stdgo.GoString), ({
            final __t__ = (@:checkr _cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).privateKey;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcrypto_privatekeydotprivatekey.__type__stdgodot_internaldotcryptodotCrypto_privatekeydotPrivateKey)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }));
    }

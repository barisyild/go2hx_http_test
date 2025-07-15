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
function _signatureSchemesForCertificate(_version:stdgo.GoUInt16, _cert:stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>):stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme> {
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert((@:checkr _cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).privateKey, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcrypto_signerdotsigner.__type__stdgodot_internaldotcryptodotCrypto_signerdotSigner) : stdgo._internal.crypto.Crypto_signer.Signer), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo._internal.crypto.Crypto_signer.Signer), _1 : false };
        }, _priv = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L175"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L176"
            return (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>);
        };
        var _sigAlgs:stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme> = (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L180"
        {
            final __type__ = _priv.public_();
            {
                var __bool__ = true;
                while (__bool__) {
                    __bool__ = false;
                    if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotecdsadotecdsa_publickeydotpublickey.__type__stdgodot_internaldotcryptodotecdsadotEcdsa_publickeydotPublicKey }))) {
                        var _pub:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>) : __type__.__underlying__().value);
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L182"
                        if (_version != ((772 : stdgo.GoUInt16))) {
                            _sigAlgs = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>(4, 4, ...[(1027 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme), (1283 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme), (1539 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme), (515 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme)]).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>);
                            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L191"
                            break;
                        };
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L193"
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
                            }))) {
                                _sigAlgs = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>(1, 1, ...[(1027 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme)]).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>);
                            } else if (({
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
                            }))) {
                                _sigAlgs = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>(1, 1, ...[(1283 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme)]).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>);
                            } else if (({
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
                            }))) {
                                _sigAlgs = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>(1, 1, ...[(1539 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme)]).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>);
                            } else {
                                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L201"
                                return (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>);
                            };
                        };
                    } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_publickeydotpublickey.__type__stdgodot_internaldotcryptodotrsadotRsa_publickeydotPublicKey }))) {
                        var _pub:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>) : __type__.__underlying__().value);
                        var _size = @:assignType (_pub.size() : stdgo.GoInt);
                        _sigAlgs = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>((0 : stdgo.GoInt).toBasic(), (stdgo._internal.crypto.tls.Tls__rsasignatureschemes._rsaSignatureSchemes.length)).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>);
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L206"
                        if (stdgo._internal.crypto.tls.Tls__rsasignatureschemes._rsaSignatureSchemes != null) for (__3 => _candidate in stdgo._internal.crypto.tls.Tls__rsasignatureschemes._rsaSignatureSchemes) {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L207"
                            if (((_size >= _candidate._minModulusBytes : Bool) && (_version <= _candidate._maxVersion : Bool) : Bool)) {
                                _sigAlgs = (_sigAlgs.__append__(_candidate._scheme) : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>);
                            };
                        };
                    } else if (stdgo.Go.typeEquals(__type__, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodoted25519doted25519_publickeydotpublickey.__type__stdgodot_internaldotcryptodoted25519dotEd25519_publickeydotPublicKey)) {
                        var _pub:stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey = __type__ == null ? (new stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey(0, 0) : stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey) : __type__.__underlying__() == null ? (new stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey(0, 0) : stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (new stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey(0, 0) : stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey) : __type__.__underlying__().value);
                        _sigAlgs = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>(1, 1, ...[(2055 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme)]).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>);
                    } else {
                        var _pub:stdgo._internal.crypto.Crypto_publickey.PublicKey = __type__?.__underlying__();
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L214"
                        return (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>);
                    };
                    break;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L217"
        if ((@:checkr _cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).supportedSignatureAlgorithms != null) {
            var _filteredSigAlgs:stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme> = (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L219"
            if (_sigAlgs != null) for (__3 => _sigAlg in _sigAlgs) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L220"
                if (stdgo._internal.crypto.tls.Tls__issupportedsignaturealgorithm._isSupportedSignatureAlgorithm(_sigAlg, (@:checkr _cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).supportedSignatureAlgorithms)) {
                    _filteredSigAlgs = (_filteredSigAlgs.__append__(_sigAlg) : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>);
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L224"
            return _filteredSigAlgs;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L226"
        return _sigAlgs;
    }

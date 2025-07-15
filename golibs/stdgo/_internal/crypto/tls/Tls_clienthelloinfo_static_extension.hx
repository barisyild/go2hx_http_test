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
@:keep @:allow(stdgo._internal.crypto.tls.Tls.ClientHelloInfo_asInterface) class ClientHelloInfo_static_extension {
    @:keep
    @:tdfield
    static public function supportsCertificate( _chi:stdgo.Ref<stdgo._internal.crypto.tls.Tls_clienthelloinfo.ClientHelloInfo>, _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>):stdgo.Error {
        @:recv var _chi:stdgo.Ref<stdgo._internal.crypto.tls.Tls_clienthelloinfo.ClientHelloInfo> = _chi;
        var _config = (@:checkr _chi ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1174"
        if (({
            final value = _config;
            (value == null || (value : Dynamic).__nil__);
        })) {
            _config = (stdgo.Go.setRef((new stdgo._internal.crypto.tls.Tls_config.Config() : stdgo._internal.crypto.tls.Tls_config.Config), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_configdotconfig.__type__stdgodot_internaldotcryptodottlsdotTls_configdotConfig })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>);
        };
        var __tmp__ = _config._mutualVersion(false, (@:checkr _chi ?? throw stdgo.Error._nullPointerDereference.__underlying__()).supportedVersions), _vers:stdgo.GoUInt16 = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1178"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1179"
            return stdgo._internal.errors.Errors_new_.new_(("no mutually supported protocol versions" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1184"
        if ((@:checkr _chi ?? throw stdgo.Error._nullPointerDereference.__underlying__()).serverName != ((stdgo.Go.str() : stdgo.GoString))) {
            var __tmp__ = _c._leaf(), _x509Cert:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1186"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1187"
                return stdgo._internal.fmt.Fmt_errorf.errorf(("failed to parse certificate: %w" : stdgo.GoString), ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1189"
            {
                var _err = @:assignType (_x509Cert.verifyHostname((@:checkr _chi ?? throw stdgo.Error._nullPointerDereference.__underlying__()).serverName?.__copy__()) : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1190"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("certificate is not valid for requested server name: %w" : stdgo.GoString), ({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }));
                };
            };
        };
        var _supportsRSAFallback = @:assignType (function(_unsupported:stdgo.Error):stdgo.Error {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1200"
            if (_vers == ((772 : stdgo.GoUInt16))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1201"
                return _unsupported;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1206"
            {
                var __tmp__ = @:castTranslate try {
                    { _0 : (stdgo.Go.typeAssert((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).privateKey, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcrypto_decrypterdotdecrypter.__type__stdgodot_internaldotcryptodotCrypto_decrypterdotDecrypter) : stdgo._internal.crypto.Crypto_decrypter.Decrypter), _1 : true };
                } catch(__exception__) {
                    { _0 : (null : stdgo._internal.crypto.Crypto_decrypter.Decrypter), _1 : false };
                }, _priv = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1207"
                    {
                        var __tmp__ = @:castTranslate try {
                            { _0 : (stdgo.Go.typeAssert(_priv.public_(), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_publickeydotpublickey.__type__stdgodot_internaldotcryptodotrsadotRsa_publickeydotPublicKey })) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>), _1 : true };
                        } catch(__exception__) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>), _1 : false };
                        }, __3 = __tmp__._0, _ok = __tmp__._1;
                        if (!_ok) {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1208"
                            return _unsupported;
                        };
                    };
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1211"
                    return _unsupported;
                };
            };
            var _rsaCipherSuite = stdgo._internal.crypto.tls.Tls__selectciphersuite._selectCipherSuite((@:checkr _chi ?? throw stdgo.Error._nullPointerDereference.__underlying__()).cipherSuites, _config._cipherSuites(), function(_c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ciphersuite.T_cipherSuite>):Bool {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1216"
                if (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._flags & (1 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1217"
                    return false;
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1219"
                if (((_vers < (771 : stdgo.GoUInt16) : Bool) && (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._flags & (4 : stdgo.GoInt) : stdgo.GoInt) != (0 : stdgo.GoInt)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1220"
                    return false;
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1222"
                return true;
            });
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1224"
            if (({
                final value = _rsaCipherSuite;
                (value == null || (value : Dynamic).__nil__);
            })) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1225"
                return _unsupported;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1227"
            return (null : stdgo.Error);
        } : stdgo.Error -> stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1232"
        if ((((@:checkr _chi ?? throw stdgo.Error._nullPointerDereference.__underlying__()).signatureSchemes.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1233"
            {
                var __tmp__ = stdgo._internal.crypto.tls.Tls__selectsignaturescheme._selectSignatureScheme(_vers, _c, (@:checkr _chi ?? throw stdgo.Error._nullPointerDereference.__underlying__()).signatureSchemes), __3:stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1234"
                    return _supportsRSAFallback(_err);
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1241"
        if (_vers == ((772 : stdgo.GoUInt16))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1242"
            return (null : stdgo.Error);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1246"
        if (!stdgo._internal.crypto.tls.Tls__supportsecdhe._supportsECDHE(_config, (@:checkr _chi ?? throw stdgo.Error._nullPointerDereference.__underlying__()).supportedCurves, (@:checkr _chi ?? throw stdgo.Error._nullPointerDereference.__underlying__()).supportedPoints)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1247"
            return _supportsRSAFallback(stdgo._internal.errors.Errors_new_.new_(("client doesn\'t support ECDHE, can only use legacy RSA key exchange" : stdgo.GoString)));
        };
        var _ecdsaCipherSuite:Bool = false;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1251"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).privateKey, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcrypto_signerdotsigner.__type__stdgodot_internaldotcryptodotCrypto_signerdotSigner) : stdgo._internal.crypto.Crypto_signer.Signer), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo._internal.crypto.Crypto_signer.Signer), _1 : false };
            }, _priv = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1252"
                {
                    final __type__ = _priv.public_();
                    {
                        var __bool__ = true;
                        while (__bool__) {
                            __bool__ = false;
                            if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotecdsadotecdsa_publickeydotpublickey.__type__stdgodot_internaldotcryptodotecdsadotEcdsa_publickeydotPublicKey }))) {
                                var _pub:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>) : __type__.__underlying__().value);
                                var _curve:stdgo._internal.crypto.tls.Tls_curveid.CurveID = ((0 : stdgo.GoUInt16) : stdgo._internal.crypto.tls.Tls_curveid.CurveID);
                                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1255"
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
                                        _curve = (23 : stdgo._internal.crypto.tls.Tls_curveid.CurveID);
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
                                        _curve = (24 : stdgo._internal.crypto.tls.Tls_curveid.CurveID);
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
                                        _curve = (25 : stdgo._internal.crypto.tls.Tls_curveid.CurveID);
                                    } else {
                                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1263"
                                        return _supportsRSAFallback(stdgo._internal.crypto.tls.Tls__unsupportedcertificateerror._unsupportedCertificateError(_c));
                                    };
                                };
                                var _curveOk:Bool = false;
                                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1266"
                                if ((@:checkr _chi ?? throw stdgo.Error._nullPointerDereference.__underlying__()).supportedCurves != null) for (__3 => _c in (@:checkr _chi ?? throw stdgo.Error._nullPointerDereference.__underlying__()).supportedCurves) {
                                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1267"
                                    if (((_c == _curve) && _config._supportsCurve(_c) : Bool)) {
                                        _curveOk = true;
                                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1269"
                                        break;
                                    };
                                };
                                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1272"
                                if (!_curveOk) {
                                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1273"
                                    return stdgo._internal.errors.Errors_new_.new_(("client doesn\'t support certificate curve" : stdgo.GoString));
                                };
                                _ecdsaCipherSuite = true;
                            } else if (stdgo.Go.typeEquals(__type__, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodoted25519doted25519_publickeydotpublickey.__type__stdgodot_internaldotcryptodoted25519dotEd25519_publickeydotPublicKey)) {
                                var _pub:stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey = __type__ == null ? (new stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey(0, 0) : stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey) : __type__.__underlying__() == null ? (new stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey(0, 0) : stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (new stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey(0, 0) : stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey) : __type__.__underlying__().value);
                                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1277"
                                if (((_vers < (771 : stdgo.GoUInt16) : Bool) || ((@:checkr _chi ?? throw stdgo.Error._nullPointerDereference.__underlying__()).signatureSchemes.length == (0 : stdgo.GoInt)) : Bool)) {
                                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1278"
                                    return stdgo._internal.errors.Errors_new_.new_(("connection doesn\'t support Ed25519" : stdgo.GoString));
                                };
                                _ecdsaCipherSuite = true;
                            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_publickeydotpublickey.__type__stdgodot_internaldotcryptodotrsadotRsa_publickeydotPublicKey }))) {
                                var _pub:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>) : __type__.__underlying__().value);
                            } else {
                                var _pub:stdgo._internal.crypto.Crypto_publickey.PublicKey = __type__?.__underlying__();
                                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1283"
                                return _supportsRSAFallback(stdgo._internal.crypto.tls.Tls__unsupportedcertificateerror._unsupportedCertificateError(_c));
                            };
                            break;
                        };
                    };
                };
            } else {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1286"
                return _supportsRSAFallback(stdgo._internal.crypto.tls.Tls__unsupportedcertificateerror._unsupportedCertificateError(_c));
            };
        };
        var _cipherSuite = stdgo._internal.crypto.tls.Tls__selectciphersuite._selectCipherSuite((@:checkr _chi ?? throw stdgo.Error._nullPointerDereference.__underlying__()).cipherSuites, _config._cipherSuites(), function(_c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ciphersuite.T_cipherSuite>):Bool {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1293"
            if (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._flags & (1 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1294"
                return false;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1296"
            if (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._flags & (2 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1297"
                if (!_ecdsaCipherSuite) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1298"
                    return false;
                };
            } else {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1301"
                if (_ecdsaCipherSuite) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1302"
                    return false;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1305"
            if (((_vers < (771 : stdgo.GoUInt16) : Bool) && (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._flags & (4 : stdgo.GoInt) : stdgo.GoInt) != (0 : stdgo.GoInt)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1306"
                return false;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1308"
            return true;
        });
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1310"
        if (({
            final value = _cipherSuite;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1311"
            return _supportsRSAFallback(stdgo._internal.errors.Errors_new_.new_(("client doesn\'t support any cipher suites compatible with the certificate" : stdgo.GoString)));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1314"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function context( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_clienthelloinfo.ClientHelloInfo>):stdgo._internal.context.Context_context.Context {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_clienthelloinfo.ClientHelloInfo> = _c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L460"
        return (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ctx;
    }
}

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
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_ecdheKeyAgreement_asInterface) class T_ecdheKeyAgreement_static_extension {
    @:keep
    @:tdfield
    static public function _generateClientKeyExchange( _ka:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ecdhekeyagreement.T_ecdheKeyAgreement>, _config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, _clientHello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg>, _cert:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clientkeyexchangemsg.T_clientKeyExchangeMsg>; var _2 : stdgo.Error; } {
        @:recv var _ka:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ecdhekeyagreement.T_ecdheKeyAgreement> = _ka;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L361"
        if (({
            final value = (@:checkr _ka ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ckx;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L362"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : null, _2 : stdgo._internal.errors.Errors_new_.new_(("tls: missing ServerKeyExchange message" : stdgo.GoString)) };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L365"
        return { _0 : (@:checkr _ka ?? throw stdgo.Error._nullPointerDereference.__underlying__())._preMasterSecret, _1 : (@:checkr _ka ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ckx, _2 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _processServerKeyExchange( _ka:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ecdhekeyagreement.T_ecdheKeyAgreement>, _config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, _clientHello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg>, _serverHello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhellomsg.T_serverHelloMsg>, _cert:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>, _skx:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverkeyexchangemsg.T_serverKeyExchangeMsg>):stdgo.Error {
        @:recv var _ka:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ecdhekeyagreement.T_ecdheKeyAgreement> = _ka;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L276"
        if ((((@:checkr _skx ?? throw stdgo.Error._nullPointerDereference.__underlying__())._key.length) < (4 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L277"
            return stdgo._internal.crypto.tls.Tls__errserverkeyexchange._errServerKeyExchange;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L279"
        if ((@:checkr _skx ?? throw stdgo.Error._nullPointerDereference.__underlying__())._key[(0 : stdgo.GoInt)] != ((3 : stdgo.GoUInt8))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L280"
            return stdgo._internal.errors.Errors_new_.new_(("tls: server selected unsupported curve" : stdgo.GoString));
        };
        var _curveID = @:assignType ((((@:checkr _skx ?? throw stdgo.Error._nullPointerDereference.__underlying__())._key[(1 : stdgo.GoInt)] : stdgo._internal.crypto.tls.Tls_curveid.CurveID) << (8i64 : stdgo.GoUInt64) : stdgo._internal.crypto.tls.Tls_curveid.CurveID) | ((@:checkr _skx ?? throw stdgo.Error._nullPointerDereference.__underlying__())._key[(2 : stdgo.GoInt)] : stdgo._internal.crypto.tls.Tls_curveid.CurveID) : stdgo._internal.crypto.tls.Tls_curveid.CurveID);
        var _publicLen = @:assignType ((@:checkr _skx ?? throw stdgo.Error._nullPointerDereference.__underlying__())._key[(3 : stdgo.GoInt)] : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L285"
        if (((_publicLen + (4 : stdgo.GoInt) : stdgo.GoInt) > ((@:checkr _skx ?? throw stdgo.Error._nullPointerDereference.__underlying__())._key.length) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L286"
            return stdgo._internal.crypto.tls.Tls__errserverkeyexchange._errServerKeyExchange;
        };
        var _serverECDHEParams = ((@:checkr _skx ?? throw stdgo.Error._nullPointerDereference.__underlying__())._key.__slice__(0, ((4 : stdgo.GoInt) + _publicLen : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _publicKey = (_serverECDHEParams.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _sig = ((@:checkr _skx ?? throw stdgo.Error._nullPointerDereference.__underlying__())._key.__slice__(((4 : stdgo.GoInt) + _publicLen : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L292"
        if (((_sig.length) < (2 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L293"
            return stdgo._internal.crypto.tls.Tls__errserverkeyexchange._errServerKeyExchange;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L296"
        {
            var __tmp__ = stdgo._internal.crypto.tls.Tls__curveforcurveid._curveForCurveID(_curveID), __3:stdgo._internal.crypto.ecdh.Ecdh_curve.Curve = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L297"
                return stdgo._internal.errors.Errors_new_.new_(("tls: server selected unsupported curve" : stdgo.GoString));
            };
        };
        var __tmp__ = stdgo._internal.crypto.tls.Tls__generateecdhekey._generateECDHEKey(_config._rand(), _curveID), _key:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L301"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L302"
            return _err;
        };
        (@:checkr _ka ?? throw stdgo.Error._nullPointerDereference.__underlying__())._key = _key;
        var __tmp__ = _key.curve().newPublicKey(_publicKey), _peerKey:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L307"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L308"
            return stdgo._internal.crypto.tls.Tls__errserverkeyexchange._errServerKeyExchange;
        };
        {
            var __tmp__ = _key.eCDH(_peerKey);
            (@:checkr _ka ?? throw stdgo.Error._nullPointerDereference.__underlying__())._preMasterSecret = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L311"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L312"
            return stdgo._internal.crypto.tls.Tls__errserverkeyexchange._errServerKeyExchange;
        };
        var _ourPublicKey = _key.publicKey().bytes();
        (@:checkr _ka ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ckx = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_clientkeyexchangemsg.T_clientKeyExchangeMsg), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_clientkeyexchangemsgdott_clientkeyexchangemsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_clientkeyexchangemsgdotT_clientKeyExchangeMsg })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clientkeyexchangemsg.T_clientKeyExchangeMsg>);
        (@:checkr (@:checkr _ka ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ckx ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ciphertext = (new stdgo.Slice<stdgo.GoUInt8>(((1 : stdgo.GoInt) + (_ourPublicKey.length) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr (@:checkr _ka ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ckx ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ciphertext[(0 : stdgo.GoInt)] = (_ourPublicKey.length : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L319"
        ((@:checkr (@:checkr _ka ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ckx ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ciphertext.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_ourPublicKey);
        var _sigType:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sigHash:stdgo._internal.crypto.Crypto_hash.Hash = ((0 : stdgo.GoUInt) : stdgo._internal.crypto.Crypto_hash.Hash);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L323"
        if (((@:checkr _ka ?? throw stdgo.Error._nullPointerDereference.__underlying__())._version >= (771 : stdgo.GoUInt16) : Bool)) {
            var _signatureAlgorithm = @:assignType (((_sig[(0 : stdgo.GoInt)] : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme) << (8i64 : stdgo.GoUInt64) : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme) | (_sig[(1 : stdgo.GoInt)] : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme) : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme);
            _sig = (_sig.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L326"
            if (((_sig.length) < (2 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L327"
                return stdgo._internal.crypto.tls.Tls__errserverkeyexchange._errServerKeyExchange;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L330"
            if (!stdgo._internal.crypto.tls.Tls__issupportedsignaturealgorithm._isSupportedSignatureAlgorithm(_signatureAlgorithm, (@:checkr _clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedSignatureAlgorithms)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L331"
                return stdgo._internal.errors.Errors_new_.new_(("tls: certificate used with invalid signature algorithm" : stdgo.GoString));
            };
            {
                var __tmp__ = stdgo._internal.crypto.tls.Tls__typeandhashfromsignaturescheme._typeAndHashFromSignatureScheme(_signatureAlgorithm);
                _sigType = @:tmpset0 __tmp__._0;
                _sigHash = @:tmpset0 __tmp__._1;
                _err = @:tmpset0 __tmp__._2;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L334"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L335"
                return _err;
            };
        } else {
            {
                var __tmp__ = stdgo._internal.crypto.tls.Tls__legacytypeandhashfrompublickey._legacyTypeAndHashFromPublicKey(({
                    final __t__ = (@:checkr _cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).publicKey;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.interfaceType(true, []))).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
                _sigType = @:tmpset0 __tmp__._0;
                _sigHash = @:tmpset0 __tmp__._1;
                _err = @:tmpset0 __tmp__._2;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L339"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L340"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L343"
        if ((((_sigType == (225 : stdgo.GoUInt8)) || (_sigType == (226 : stdgo.GoUInt8)) : Bool)) != ((@:checkr _ka ?? throw stdgo.Error._nullPointerDereference.__underlying__())._isRSA)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L344"
            return stdgo._internal.crypto.tls.Tls__errserverkeyexchange._errServerKeyExchange;
        };
        var _sigLen = @:assignType (((_sig[(0 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) | (_sig[(1 : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L348"
        if ((_sigLen + (2 : stdgo.GoInt) : stdgo.GoInt) != ((_sig.length))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L349"
            return stdgo._internal.crypto.tls.Tls__errserverkeyexchange._errServerKeyExchange;
        };
        _sig = (_sig.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _signed = stdgo._internal.crypto.tls.Tls__hashforserverkeyexchange._hashForServerKeyExchange(_sigType, _sigHash, (@:checkr _ka ?? throw stdgo.Error._nullPointerDereference.__underlying__())._version, (@:checkr _clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._random, (@:checkr _serverHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._random, _serverECDHEParams);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L354"
        {
            var _err = @:assignType (stdgo._internal.crypto.tls.Tls__verifyhandshakesignature._verifyHandshakeSignature(_sigType, ({
                final __t__ = (@:checkr _cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).publicKey;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.interfaceType(true, []))).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), _sigHash, _signed, _sig) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L355"
                return stdgo._internal.errors.Errors_new_.new_((("tls: invalid signature by the server certificate: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__());
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L357"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _processClientKeyExchange( _ka:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ecdhekeyagreement.T_ecdheKeyAgreement>, _config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, _cert:stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>, _ckx:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clientkeyexchangemsg.T_clientKeyExchangeMsg>, _version:stdgo.GoUInt16):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _ka:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ecdhekeyagreement.T_ecdheKeyAgreement> = _ka;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L259"
        if ((((@:checkr _ckx ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ciphertext.length == (0 : stdgo.GoInt)) || (((@:checkr _ckx ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ciphertext[(0 : stdgo.GoInt)] : stdgo.GoInt) != (((@:checkr _ckx ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ciphertext.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L260"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.tls.Tls__errclientkeyexchange._errClientKeyExchange };
        };
        var __tmp__ = (@:checkr _ka ?? throw stdgo.Error._nullPointerDereference.__underlying__())._key.curve().newPublicKey(((@:checkr _ckx ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ciphertext.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _peerKey:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L264"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L265"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.tls.Tls__errclientkeyexchange._errClientKeyExchange };
        };
        var __tmp__ = (@:checkr _ka ?? throw stdgo.Error._nullPointerDereference.__underlying__())._key.eCDH(_peerKey), _preMasterSecret:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L268"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L269"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.tls.Tls__errclientkeyexchange._errClientKeyExchange };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L272"
        return { _0 : _preMasterSecret, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _generateServerKeyExchange( _ka:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ecdhekeyagreement.T_ecdheKeyAgreement>, _config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, _cert:stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>, _clientHello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg>, _hello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhellomsg.T_serverHelloMsg>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverkeyexchangemsg.T_serverKeyExchangeMsg>; var _1 : stdgo.Error; } {
        @:recv var _ka:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ecdhekeyagreement.T_ecdheKeyAgreement> = _ka;
        var _curveID:stdgo._internal.crypto.tls.Tls_curveid.CurveID = ((0 : stdgo.GoUInt16) : stdgo._internal.crypto.tls.Tls_curveid.CurveID);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L171"
        if ((@:checkr _clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedCurves != null) for (__3 => _c in (@:checkr _clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedCurves) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L172"
            if (_config._supportsCurve(_c)) {
                _curveID = _c;
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L174"
                break;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L178"
        if (_curveID == ((0 : stdgo._internal.crypto.tls.Tls_curveid.CurveID))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L179"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: no supported elliptic curves offered" : stdgo.GoString)) };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L181"
        {
            var __tmp__ = stdgo._internal.crypto.tls.Tls__curveforcurveid._curveForCurveID(_curveID), __4:stdgo._internal.crypto.ecdh.Ecdh_curve.Curve = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L182"
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: CurvePreferences includes unsupported curve" : stdgo.GoString)) };
            };
        };
        var __tmp__ = stdgo._internal.crypto.tls.Tls__generateecdhekey._generateECDHEKey(_config._rand(), _curveID), _key:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L186"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L187"
            return { _0 : null, _1 : _err };
        };
        (@:checkr _ka ?? throw stdgo.Error._nullPointerDereference.__underlying__())._key = _key;
        var _ecdhePublic = _key.publicKey().bytes();
        var _serverECDHEParams = (new stdgo.Slice<stdgo.GoUInt8>(((4 : stdgo.GoInt) + (_ecdhePublic.length) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _serverECDHEParams[(0 : stdgo.GoInt)] = (3 : stdgo.GoUInt8);
        _serverECDHEParams[(1 : stdgo.GoInt)] = ((_curveID >> (8i64 : stdgo.GoUInt64) : stdgo._internal.crypto.tls.Tls_curveid.CurveID) : stdgo.GoUInt8);
        _serverECDHEParams[(2 : stdgo.GoInt)] = (_curveID : stdgo.GoUInt8);
        _serverECDHEParams[(3 : stdgo.GoInt)] = (_ecdhePublic.length : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L198"
        (_serverECDHEParams.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_ecdhePublic);
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert((@:checkr _cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).privateKey, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcrypto_signerdotsigner.__type__stdgodot_internaldotcryptodotCrypto_signerdotSigner) : stdgo._internal.crypto.Crypto_signer.Signer), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo._internal.crypto.Crypto_signer.Signer), _1 : false };
        }, _priv = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L201"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L202"
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("tls: certificate private key of type %T does not implement crypto.Signer" : stdgo.GoString), ({
                final __t__ = (@:checkr _cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).privateKey;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcrypto_privatekeydotprivatekey.__type__stdgodot_internaldotcryptodotCrypto_privatekeydotPrivateKey)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            })) };
        };
        var _signatureAlgorithm:stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme = ((0 : stdgo.GoUInt16) : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme);
        var _sigType:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sigHash:stdgo._internal.crypto.Crypto_hash.Hash = ((0 : stdgo.GoUInt) : stdgo._internal.crypto.Crypto_hash.Hash);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L208"
        if (((@:checkr _ka ?? throw stdgo.Error._nullPointerDereference.__underlying__())._version >= (771 : stdgo.GoUInt16) : Bool)) {
            {
                var __tmp__ = stdgo._internal.crypto.tls.Tls__selectsignaturescheme._selectSignatureScheme((@:checkr _ka ?? throw stdgo.Error._nullPointerDereference.__underlying__())._version, _cert, (@:checkr _clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedSignatureAlgorithms);
                _signatureAlgorithm = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L210"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L211"
                return { _0 : null, _1 : _err };
            };
            {
                var __tmp__ = stdgo._internal.crypto.tls.Tls__typeandhashfromsignaturescheme._typeAndHashFromSignatureScheme(_signatureAlgorithm);
                _sigType = @:tmpset0 __tmp__._0;
                _sigHash = @:tmpset0 __tmp__._1;
                _err = @:tmpset0 __tmp__._2;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L214"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L215"
                return { _0 : null, _1 : _err };
            };
        } else {
            {
                var __tmp__ = stdgo._internal.crypto.tls.Tls__legacytypeandhashfrompublickey._legacyTypeAndHashFromPublicKey(_priv.public_());
                _sigType = @:tmpset0 __tmp__._0;
                _sigHash = @:tmpset0 __tmp__._1;
                _err = @:tmpset0 __tmp__._2;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L219"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L220"
                return { _0 : null, _1 : _err };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L223"
        if ((((_sigType == (225 : stdgo.GoUInt8)) || (_sigType == (226 : stdgo.GoUInt8)) : Bool)) != ((@:checkr _ka ?? throw stdgo.Error._nullPointerDereference.__underlying__())._isRSA)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L224"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: certificate cannot be used with the selected cipher suite" : stdgo.GoString)) };
        };
        var _signed = stdgo._internal.crypto.tls.Tls__hashforserverkeyexchange._hashForServerKeyExchange(_sigType, _sigHash, (@:checkr _ka ?? throw stdgo.Error._nullPointerDereference.__underlying__())._version, (@:checkr _clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._random, (@:checkr _hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._random, _serverECDHEParams);
        var _signOpts = @:assignType (stdgo.Go.asInterface(_sigHash, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcrypto_hashdothash.__type__stdgodot_internaldotcryptodotCrypto_hashdotHash) : stdgo._internal.crypto.Crypto_signeropts.SignerOpts);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L230"
        if (_sigType == ((226 : stdgo.GoUInt8))) {
            _signOpts = stdgo.Go.asInterface((stdgo.Go.setRef(({ saltLength : (-1 : stdgo.GoInt), hash : _sigHash } : stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_pssoptionsdotpssoptions.__type__stdgodot_internaldotcryptodotrsadotRsa_pssoptionsdotPSSOptions })) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_pssoptionsdotpssoptions.__type__stdgodot_internaldotcryptodotrsadotRsa_pssoptionsdotPSSOptions }));
        };
        var __tmp__ = _priv.sign(_config._rand(), _signed, _signOpts), _sig:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L234"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L235"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_((("tls: failed to sign ECDHE parameters: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__()) };
        };
        var _skx = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_serverkeyexchangemsg.T_serverKeyExchangeMsg), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_serverkeyexchangemsgdott_serverkeyexchangemsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_serverkeyexchangemsgdotT_serverKeyExchangeMsg })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverkeyexchangemsg.T_serverKeyExchangeMsg>);
        var _sigAndHashLen = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L240"
        if (((@:checkr _ka ?? throw stdgo.Error._nullPointerDereference.__underlying__())._version >= (771 : stdgo.GoUInt16) : Bool)) {
            _sigAndHashLen = (2 : stdgo.GoInt);
        };
        (@:checkr _skx ?? throw stdgo.Error._nullPointerDereference.__underlying__())._key = (new stdgo.Slice<stdgo.GoUInt8>(((((_serverECDHEParams.length) + _sigAndHashLen : stdgo.GoInt) + (2 : stdgo.GoInt) : stdgo.GoInt) + (_sig.length) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L244"
        (@:checkr _skx ?? throw stdgo.Error._nullPointerDereference.__underlying__())._key.__copyTo__(_serverECDHEParams);
        var _k = ((@:checkr _skx ?? throw stdgo.Error._nullPointerDereference.__underlying__())._key.__slice__((_serverECDHEParams.length)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L246"
        if (((@:checkr _ka ?? throw stdgo.Error._nullPointerDereference.__underlying__())._version >= (771 : stdgo.GoUInt16) : Bool)) {
            _k[(0 : stdgo.GoInt)] = ((_signatureAlgorithm >> (8i64 : stdgo.GoUInt64) : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme) : stdgo.GoUInt8);
            _k[(1 : stdgo.GoInt)] = (_signatureAlgorithm : stdgo.GoUInt8);
            _k = (_k.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        _k[(0 : stdgo.GoInt)] = (((_sig.length) >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8);
        _k[(1 : stdgo.GoInt)] = (_sig.length : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L253"
        (_k.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_sig);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L255"
        return { _0 : _skx, _1 : (null : stdgo.Error) };
    }
}

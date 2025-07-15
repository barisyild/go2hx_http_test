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
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_rsaKeyAgreement_asInterface) class T_rsaKeyAgreement_static_extension {
    @:keep
    @:tdfield
    static public function _generateClientKeyExchange( _ka:stdgo._internal.crypto.tls.Tls_t_rsakeyagreement.T_rsaKeyAgreement, _config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, _clientHello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg>, _cert:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clientkeyexchangemsg.T_clientKeyExchangeMsg>; var _2 : stdgo.Error; } {
        @:recv var _ka:stdgo._internal.crypto.tls.Tls_t_rsakeyagreement.T_rsaKeyAgreement = _ka?.__copy__();
        var _preMasterSecret = (new stdgo.Slice<stdgo.GoUInt8>((48 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _preMasterSecret[(0 : stdgo.GoInt)] = (((@:checkr _clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
        _preMasterSecret[(1 : stdgo.GoInt)] = ((@:checkr _clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers : stdgo.GoUInt8);
        var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_config._rand(), (_preMasterSecret.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L86"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L87"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : null, _2 : _err };
        };
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert((@:checkr _cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).publicKey, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_publickeydotpublickey.__type__stdgodot_internaldotcryptodotrsadotRsa_publickeydotPublicKey })) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>), _1 : false };
        }, _rsaKey = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L91"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L92"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : null, _2 : stdgo._internal.errors.Errors_new_.new_(("tls: server certificate contains incorrect key type for selected ciphersuite" : stdgo.GoString)) };
        };
        var __tmp__ = stdgo._internal.crypto.rsa.Rsa_encryptpkcs1v15.encryptPKCS1v15(_config._rand(), _rsaKey, _preMasterSecret), _encrypted:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L95"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L96"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : null, _2 : _err };
        };
        var _ckx = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_clientkeyexchangemsg.T_clientKeyExchangeMsg), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_clientkeyexchangemsgdott_clientkeyexchangemsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_clientkeyexchangemsgdotT_clientKeyExchangeMsg })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clientkeyexchangemsg.T_clientKeyExchangeMsg>);
        (@:checkr _ckx ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ciphertext = (new stdgo.Slice<stdgo.GoUInt8>(((_encrypted.length) + (2 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _ckx ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ciphertext[(0 : stdgo.GoInt)] = (((_encrypted.length) >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8);
        (@:checkr _ckx ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ciphertext[(1 : stdgo.GoInt)] = (_encrypted.length : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L102"
        ((@:checkr _ckx ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ciphertext.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_encrypted);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L103"
        return { _0 : _preMasterSecret, _1 : _ckx, _2 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _processServerKeyExchange( _ka:stdgo._internal.crypto.tls.Tls_t_rsakeyagreement.T_rsaKeyAgreement, _config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, _clientHello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg>, _serverHello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhellomsg.T_serverHelloMsg>, _cert:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>, _skx:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverkeyexchangemsg.T_serverKeyExchangeMsg>):stdgo.Error {
        @:recv var _ka:stdgo._internal.crypto.tls.Tls_t_rsakeyagreement.T_rsaKeyAgreement = _ka?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L78"
        return stdgo._internal.errors.Errors_new_.new_(("tls: unexpected ServerKeyExchange" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _processClientKeyExchange( _ka:stdgo._internal.crypto.tls.Tls_t_rsakeyagreement.T_rsaKeyAgreement, _config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, _cert:stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>, _ckx:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clientkeyexchangemsg.T_clientKeyExchangeMsg>, _version:stdgo.GoUInt16):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _ka:stdgo._internal.crypto.tls.Tls_t_rsakeyagreement.T_rsaKeyAgreement = _ka?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L50"
        if ((((@:checkr _ckx ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ciphertext.length) < (2 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L51"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.tls.Tls__errclientkeyexchange._errClientKeyExchange };
        };
        var _ciphertextLen = @:assignType ((((@:checkr _ckx ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ciphertext[(0 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) | ((@:checkr _ckx ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ciphertext[(1 : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L54"
        if (_ciphertextLen != ((((@:checkr _ckx ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ciphertext.length) - (2 : stdgo.GoInt) : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L55"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.tls.Tls__errclientkeyexchange._errClientKeyExchange };
        };
        var _ciphertext = ((@:checkr _ckx ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ciphertext.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert((@:checkr _cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).privateKey, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcrypto_decrypterdotdecrypter.__type__stdgodot_internaldotcryptodotCrypto_decrypterdotDecrypter) : stdgo._internal.crypto.Crypto_decrypter.Decrypter), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo._internal.crypto.Crypto_decrypter.Decrypter), _1 : false };
        }, _priv = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L60"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L61"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("tls: certificate private key does not implement crypto.Decrypter" : stdgo.GoString)) };
        };
        var __tmp__ = _priv.decrypt(_config._rand(), _ciphertext, new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({ sessionKeyLen : (48 : stdgo.GoInt) } : stdgo._internal.crypto.rsa.Rsa_pkcs1v15decryptoptions.PKCS1v15DecryptOptions), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_pkcs1v15decryptoptionsdotpkcs1v15decryptoptions.__type__stdgodot_internaldotcryptodotrsadotRsa_pkcs1v15decryptoptionsdotPKCS1v15DecryptOptions })) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_pkcs1v15decryptoptions.PKCS1v15DecryptOptions>), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_pkcs1v15decryptoptionsdotpkcs1v15decryptoptions.__type__stdgodot_internaldotcryptodotrsadotRsa_pkcs1v15decryptoptionsdotPKCS1v15DecryptOptions), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_pkcs1v15decryptoptionsdotpkcs1v15decryptoptions.__type__stdgodot_internaldotcryptodotrsadotRsa_pkcs1v15decryptoptionsdotPKCS1v15DecryptOptions })))), _preMasterSecret:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L65"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L66"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L74"
        return { _0 : _preMasterSecret, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _generateServerKeyExchange( _ka:stdgo._internal.crypto.tls.Tls_t_rsakeyagreement.T_rsaKeyAgreement, _config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, _cert:stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>, _clientHello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg>, _hello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhellomsg.T_serverHelloMsg>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverkeyexchangemsg.T_serverKeyExchangeMsg>; var _1 : stdgo.Error; } {
        @:recv var _ka:stdgo._internal.crypto.tls.Tls_t_rsakeyagreement.T_rsaKeyAgreement = _ka?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_agreement.go#L46"
        return { _0 : null, _1 : (null : stdgo.Error) };
    }
}

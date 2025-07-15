package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.des.Des;
import stdgo._internal.crypto.aes.Aes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.utf16.Utf16;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.encoding.asn1.Asn1;
import stdgo._internal.crypto.elliptic.Elliptic;
import stdgo._internal.crypto.ecdh.Ecdh;
import stdgo._internal.net.url.Url;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.net.Net;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.crypto.cipher.Cipher;
import stdgo._internal.io.Io;
import stdgo._internal.crypto.ed25519.Ed25519;
import stdgo._internal.os.Os;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.crypto.rsa.Rsa;
import stdgo._internal.crypto.ecdsa.Ecdsa;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.encoding.pem.Pem;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.md5.Md5;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.time.Time;
function _parseECPrivateKey(_namedCurveOID:stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>, _der:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>; var _1 : stdgo.Error; } {
        var _key = (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>), _err = (null : stdgo.Error);
        var _privKey:stdgo._internal.crypto.x509.X509_t_ecprivatekey.T_ecPrivateKey = ({} : stdgo._internal.crypto.x509.X509_t_ecprivatekey.T_ecPrivateKey);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/sec1.go#L86"
        {
            var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_der, new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_privKey, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_ecprivatekeydott_ecprivatekey.__type__stdgodot_internaldotcryptodotx509dotX509_t_ecprivatekeydotT_ecPrivateKey })) : stdgo.Ref<stdgo._internal.crypto.x509.X509_t_ecprivatekey.T_ecPrivateKey>), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_ecprivatekeydott_ecprivatekey.__type__stdgodot_internaldotcryptodotx509dotX509_t_ecprivatekeydotT_ecPrivateKey), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_ecprivatekeydott_ecprivatekey.__type__stdgodot_internaldotcryptodotx509dotX509_t_ecprivatekeydotT_ecPrivateKey })))), __1:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/sec1.go#L87"
                {
                    var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_der, new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.crypto.x509.X509_t_pkcs8.T_pkcs8() : stdgo._internal.crypto.x509.X509_t_pkcs8.T_pkcs8), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_pkcs8dott_pkcs8.__type__stdgodot_internaldotcryptodotx509dotX509_t_pkcs8dotT_pkcs8 })) : stdgo.Ref<stdgo._internal.crypto.x509.X509_t_pkcs8.T_pkcs8>), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_pkcs8dott_pkcs8.__type__stdgodot_internaldotcryptodotx509dotX509_t_pkcs8dotT_pkcs8), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_pkcs8dott_pkcs8.__type__stdgodot_internaldotcryptodotx509dotX509_t_pkcs8dotT_pkcs8 })))), __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err == null) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/sec1.go#L88"
                        return {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: failed to parse private key (use ParsePKCS8PrivateKey instead for this key format)" : stdgo.GoString)) };
                            _key = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/sec1.go#L90"
                {
                    var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_der, new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.crypto.x509.X509_t_pkcs1privatekey.T_pkcs1PrivateKey() : stdgo._internal.crypto.x509.X509_t_pkcs1privatekey.T_pkcs1PrivateKey), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_pkcs1privatekeydott_pkcs1privatekey.__type__stdgodot_internaldotcryptodotx509dotX509_t_pkcs1privatekeydotT_pkcs1PrivateKey })) : stdgo.Ref<stdgo._internal.crypto.x509.X509_t_pkcs1privatekey.T_pkcs1PrivateKey>), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_pkcs1privatekeydott_pkcs1privatekey.__type__stdgodot_internaldotcryptodotx509dotX509_t_pkcs1privatekeydotT_pkcs1PrivateKey), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_pkcs1privatekeydott_pkcs1privatekey.__type__stdgodot_internaldotcryptodotx509dotX509_t_pkcs1privatekeydotT_pkcs1PrivateKey })))), __3:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err == null) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/sec1.go#L91"
                        return {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: failed to parse private key (use ParsePKCS1PrivateKey instead for this key format)" : stdgo.GoString)) };
                            _key = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/sec1.go#L93"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_((("x509: failed to parse EC private key: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__()) };
                    _key = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/sec1.go#L95"
        if (_privKey.version != ((1 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/sec1.go#L96"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: unknown EC private key version %d" : stdgo.GoString), new stdgo.AnyInterface(_privKey.version, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))) };
                _key = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var _curve:stdgo._internal.crypto.elliptic.Elliptic_curve.Curve = (null : stdgo._internal.crypto.elliptic.Elliptic_curve.Curve);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/sec1.go#L100"
        if (({
            final value = _namedCurveOID;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            _curve = stdgo._internal.crypto.x509.X509__namedcurvefromoid._namedCurveFromOID((_namedCurveOID : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier));
        } else {
            _curve = stdgo._internal.crypto.x509.X509__namedcurvefromoid._namedCurveFromOID(_privKey.namedCurveOID);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/sec1.go#L105"
        if (_curve == null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/sec1.go#L106"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: unknown elliptic curve" : stdgo.GoString)) };
                _key = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var _k = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setBytes(_privKey.privateKey);
        var _curveOrder = _curve.params().n;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/sec1.go#L111"
        if ((_k.cmp(_curveOrder) >= (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/sec1.go#L112"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid elliptic curve private key value" : stdgo.GoString)) };
                _key = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var _priv = (stdgo.Go.setRef(({} : stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotecdsadotecdsa_privatekeydotprivatekey.__type__stdgodot_internaldotcryptodotecdsadotEcdsa_privatekeydotPrivateKey })) : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>);
        (@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).publicKey.curve = _curve;
        (@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).d = _k;
        var _privateKey = (new stdgo.Slice<stdgo.GoUInt8>((((_curveOrder.bitLen() + (7 : stdgo.GoInt) : stdgo.GoInt)) / (8 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/sec1.go#L122"
        while (((_privKey.privateKey.length) > (_privateKey.length) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/sec1.go#L123"
            if (_privKey.privateKey[(0 : stdgo.GoInt)] != ((0 : stdgo.GoUInt8))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/sec1.go#L124"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid private key length" : stdgo.GoString)) };
                    _key = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            _privKey.privateKey = (_privKey.privateKey.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/sec1.go#L132"
        (_privateKey.__slice__(((_privateKey.length) - (_privKey.privateKey.length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_privKey.privateKey);
        {
            var __tmp__ = _curve.scalarBaseMult(_privateKey);
            (@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).publicKey.x = @:tmpset0 __tmp__._0;
            (@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).publicKey.y = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/sec1.go#L135"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>; var _1 : stdgo.Error; } = { _0 : _priv, _1 : (null : stdgo.Error) };
            _key = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }

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
function parsePKCS8PrivateKey(_der:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } {
        var _key = (null : stdgo.AnyInterface), _err = (null : stdgo.Error);
        var _privKey:stdgo._internal.crypto.x509.X509_t_pkcs8.T_pkcs8 = ({} : stdgo._internal.crypto.x509.X509_t_pkcs8.T_pkcs8);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs8.go#L37"
        {
            var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_der, new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_privKey, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_pkcs8dott_pkcs8.__type__stdgodot_internaldotcryptodotx509dotX509_t_pkcs8dotT_pkcs8 })) : stdgo.Ref<stdgo._internal.crypto.x509.X509_t_pkcs8.T_pkcs8>), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_pkcs8dott_pkcs8.__type__stdgodot_internaldotcryptodotx509dotX509_t_pkcs8dotT_pkcs8), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_pkcs8dott_pkcs8.__type__stdgodot_internaldotcryptodotx509dotX509_t_pkcs8dotT_pkcs8 })))), __1:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs8.go#L38"
                {
                    var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_der, new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.crypto.x509.X509_t_ecprivatekey.T_ecPrivateKey() : stdgo._internal.crypto.x509.X509_t_ecprivatekey.T_ecPrivateKey), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_ecprivatekeydott_ecprivatekey.__type__stdgodot_internaldotcryptodotx509dotX509_t_ecprivatekeydotT_ecPrivateKey })) : stdgo.Ref<stdgo._internal.crypto.x509.X509_t_ecprivatekey.T_ecPrivateKey>), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_ecprivatekeydott_ecprivatekey.__type__stdgodot_internaldotcryptodotx509dotX509_t_ecprivatekeydotT_ecPrivateKey), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_ecprivatekeydott_ecprivatekey.__type__stdgodot_internaldotcryptodotx509dotX509_t_ecprivatekeydotT_ecPrivateKey })))), __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err == null) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs8.go#L39"
                        return {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } = { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: failed to parse private key (use ParseECPrivateKey instead for this key format)" : stdgo.GoString)) };
                            _key = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs8.go#L41"
                {
                    var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_der, new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.crypto.x509.X509_t_pkcs1privatekey.T_pkcs1PrivateKey() : stdgo._internal.crypto.x509.X509_t_pkcs1privatekey.T_pkcs1PrivateKey), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_pkcs1privatekeydott_pkcs1privatekey.__type__stdgodot_internaldotcryptodotx509dotX509_t_pkcs1privatekeydotT_pkcs1PrivateKey })) : stdgo.Ref<stdgo._internal.crypto.x509.X509_t_pkcs1privatekey.T_pkcs1PrivateKey>), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_pkcs1privatekeydott_pkcs1privatekey.__type__stdgodot_internaldotcryptodotx509dotX509_t_pkcs1privatekeydotT_pkcs1PrivateKey), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_pkcs1privatekeydott_pkcs1privatekey.__type__stdgodot_internaldotcryptodotx509dotX509_t_pkcs1privatekeydotT_pkcs1PrivateKey })))), __3:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err == null) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs8.go#L42"
                        return {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } = { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: failed to parse private key (use ParsePKCS1PrivateKey instead for this key format)" : stdgo.GoString)) };
                            _key = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs8.go#L44"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } = { _0 : (null : stdgo.AnyInterface), _1 : _err };
                    _key = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs8.go#L46"
        if (_privKey.algo.algorithm.equal(stdgo._internal.crypto.x509.X509__oidpublickeyrsa._oidPublicKeyRSA)) {
            {
                var __tmp__ = stdgo._internal.crypto.x509.X509_parsepkcs1privatekey.parsePKCS1PrivateKey(_privKey.privateKey);
                _key = new stdgo.AnyInterface(stdgo.Go.asInterface(@:tmpset0 __tmp__._0, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_privatekeydotprivatekey.__type__stdgodot_internaldotcryptodotrsadotRsa_privatekeydotPrivateKey), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_privatekeydotprivatekey.__type__stdgodot_internaldotcryptodotrsadotRsa_privatekeydotPrivateKey })));
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs8.go#L49"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs8.go#L50"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } = { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_((("x509: failed to parse RSA private key embedded in PKCS#8: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__()) };
                    _key = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs8.go#L52"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } = { _0 : _key, _1 : (null : stdgo.Error) };
                _key = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        } else if (_privKey.algo.algorithm.equal(stdgo._internal.crypto.x509.X509__oidpublickeyecdsa._oidPublicKeyECDSA)) {
            var _bytes = _privKey.algo.parameters.fullBytes;
            var _namedCurveOID = (stdgo.Go.setRef((new stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier(0, 0) : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_objectidentifierdotobjectidentifier.__type__stdgodot_internaldotencodingdotasn1dotAsn1_objectidentifierdotObjectIdentifier })) : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>);
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs8.go#L57"
            {
                var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_bytes, new stdgo.AnyInterface(stdgo.Go.asInterface(_namedCurveOID, _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_objectidentifierdotobjectidentifier.__type__stdgodot_internaldotencodingdotasn1dotAsn1_objectidentifierdotObjectIdentifier), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_objectidentifierdotobjectidentifier.__type__stdgodot_internaldotencodingdotasn1dotAsn1_objectidentifierdotObjectIdentifier })))), __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _namedCurveOID = null;
                };
            };
            {
                var __tmp__ = stdgo._internal.crypto.x509.X509__parseecprivatekey._parseECPrivateKey(_namedCurveOID, _privKey.privateKey);
                _key = new stdgo.AnyInterface(stdgo.Go.asInterface(@:tmpset0 __tmp__._0, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotecdsadotecdsa_privatekeydotprivatekey.__type__stdgodot_internaldotcryptodotecdsadotEcdsa_privatekeydotPrivateKey), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotecdsadotecdsa_privatekeydotprivatekey.__type__stdgodot_internaldotcryptodotecdsadotEcdsa_privatekeydotPrivateKey })));
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs8.go#L61"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs8.go#L62"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } = { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_((("x509: failed to parse EC private key embedded in PKCS#8: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__()) };
                    _key = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs8.go#L64"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } = { _0 : _key, _1 : (null : stdgo.Error) };
                _key = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        } else if (_privKey.algo.algorithm.equal(stdgo._internal.crypto.x509.X509__oidpublickeyed25519._oidPublicKeyEd25519)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs8.go#L67"
            {
                var _l = @:assignType (_privKey.algo.parameters.fullBytes.length : stdgo.GoInt);
                if (_l != ((0 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs8.go#L68"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } = { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid Ed25519 private key parameters" : stdgo.GoString)) };
                        _key = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            var _curvePrivateKey:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs8.go#L71"
            {
                var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_privKey.privateKey, new stdgo.AnyInterface((stdgo.Go.setRef(_curvePrivateKey, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) })))), __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs8.go#L72"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } = { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: invalid Ed25519 private key: %v" : stdgo.GoString), ({
                            final __t__ = _err;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        })) };
                        _key = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs8.go#L74"
            {
                var _l = @:assignType (_curvePrivateKey.length : stdgo.GoInt);
                if (_l != ((32 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs8.go#L75"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } = { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: invalid Ed25519 private key length: %d" : stdgo.GoString), new stdgo.AnyInterface(_l, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))) };
                        _key = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs8.go#L77"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } = { _0 : new stdgo.AnyInterface(stdgo.Go.asInterface(stdgo._internal.crypto.ed25519.Ed25519_newkeyfromseed.newKeyFromSeed(_curvePrivateKey), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodoted25519doted25519_privatekeydotprivatekey.__type__stdgodot_internaldotcryptodoted25519dotEd25519_privatekeydotPrivateKey), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodoted25519doted25519_privatekeydotprivatekey.__type__stdgodot_internaldotcryptodoted25519dotEd25519_privatekeydotPrivateKey)), _1 : (null : stdgo.Error) };
                _key = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        } else if (_privKey.algo.algorithm.equal(stdgo._internal.crypto.x509.X509__oidpublickeyx25519._oidPublicKeyX25519)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs8.go#L80"
            {
                var _l = @:assignType (_privKey.algo.parameters.fullBytes.length : stdgo.GoInt);
                if (_l != ((0 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs8.go#L81"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } = { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid X25519 private key parameters" : stdgo.GoString)) };
                        _key = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            var _curvePrivateKey:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs8.go#L84"
            {
                var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_privKey.privateKey, new stdgo.AnyInterface((stdgo.Go.setRef(_curvePrivateKey, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) })))), __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs8.go#L85"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } = { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: invalid X25519 private key: %v" : stdgo.GoString), ({
                            final __t__ = _err;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        })) };
                        _key = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs8.go#L87"
            return ({
                @:explicitConversion final __tmp__ = stdgo._internal.crypto.ecdh.Ecdh_x25519.x25519().newPrivateKey(_curvePrivateKey);
                { _0 : new stdgo.AnyInterface(stdgo.Go.asInterface(__tmp__._0, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotecdhdotecdh_privatekeydotprivatekey.__type__stdgodot_internaldotcryptodotecdhdotEcdh_privatekeydotPrivateKey), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotecdhdotecdh_privatekeydotprivatekey.__type__stdgodot_internaldotcryptodotecdhdotEcdh_privatekeydotPrivateKey }))), _1 : __tmp__._1 };
            });
        } else {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs8.go#L90"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } = { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: PKCS#8 wrapping contained private key with unknown algorithm: %v" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_privKey.algo.algorithm, _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_objectidentifierdotobjectidentifier.__type__stdgodot_internaldotencodingdotasn1dotAsn1_objectidentifierdotObjectIdentifier), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_objectidentifierdotobjectidentifier.__type__stdgodot_internaldotencodingdotasn1dotAsn1_objectidentifierdotObjectIdentifier))) };
                _key = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
    }

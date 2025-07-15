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
function marshalPKCS8PrivateKey(_key:stdgo.AnyInterface):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var _privKey:stdgo._internal.crypto.x509.X509_t_pkcs8.T_pkcs8 = ({} : stdgo._internal.crypto.x509.X509_t_pkcs8.T_pkcs8);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs8.go#L104"
        {
            final __type__ = _key;
            if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_privatekeydotprivatekey.__type__stdgodot_internaldotcryptodotrsadotRsa_privatekeydotPrivateKey }))) {
                var _k:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>) : __type__.__underlying__().value);
                _privKey.algo = ({ algorithm : stdgo._internal.crypto.x509.X509__oidpublickeyrsa._oidPublicKeyRSA, parameters : stdgo._internal.encoding.asn1.Asn1_nullrawvalue.nullRawValue?.__copy__() } : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier);
                _privKey.privateKey = stdgo._internal.crypto.x509.X509_marshalpkcs1privatekey.marshalPKCS1PrivateKey(_k);
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotecdsadotecdsa_privatekeydotprivatekey.__type__stdgodot_internaldotcryptodotecdsadotEcdsa_privatekeydotPrivateKey }))) {
                var _k:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>) : __type__.__underlying__().value);
                var __tmp__ = stdgo._internal.crypto.x509.X509__oidfromnamedcurve._oidFromNamedCurve((@:checkr _k ?? throw stdgo.Error._nullPointerDereference.__underlying__()).publicKey.curve), _oid:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier = __tmp__._0, _ok:Bool = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs8.go#L114"
                if (!_ok) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs8.go#L115"
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: unknown curve while marshaling to PKCS#8" : stdgo.GoString)) };
                };
                var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(new stdgo.AnyInterface(stdgo.Go.asInterface(_oid, _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_objectidentifierdotobjectidentifier.__type__stdgodot_internaldotencodingdotasn1dotAsn1_objectidentifierdotObjectIdentifier), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_objectidentifierdotobjectidentifier.__type__stdgodot_internaldotencodingdotasn1dotAsn1_objectidentifierdotObjectIdentifier))), _oidBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs8.go#L118"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs8.go#L119"
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_((("x509: failed to marshal curve OID: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__()) };
                };
                _privKey.algo = ({ algorithm : stdgo._internal.crypto.x509.X509__oidpublickeyecdsa._oidPublicKeyECDSA, parameters : ({ fullBytes : _oidBytes } : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue) } : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier);
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs8.go#L127"
                {
                    {
                        var __tmp__ = stdgo._internal.crypto.x509.X509__marshalecprivatekeywithoid._marshalECPrivateKeyWithOID(_k, null);
                        _privKey.privateKey = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs8.go#L128"
                        return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_((("x509: failed to marshal EC private key while building PKCS#8: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__()) };
                    };
                };
            } else if (stdgo.Go.typeEquals(__type__, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodoted25519doted25519_privatekeydotprivatekey.__type__stdgodot_internaldotcryptodoted25519dotEd25519_privatekeydotPrivateKey)) {
                var _k:stdgo._internal.crypto.ed25519.Ed25519_privatekey.PrivateKey = __type__ == null ? (new stdgo._internal.crypto.ed25519.Ed25519_privatekey.PrivateKey(0, 0) : stdgo._internal.crypto.ed25519.Ed25519_privatekey.PrivateKey) : __type__.__underlying__() == null ? (new stdgo._internal.crypto.ed25519.Ed25519_privatekey.PrivateKey(0, 0) : stdgo._internal.crypto.ed25519.Ed25519_privatekey.PrivateKey) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (new stdgo._internal.crypto.ed25519.Ed25519_privatekey.PrivateKey(0, 0) : stdgo._internal.crypto.ed25519.Ed25519_privatekey.PrivateKey) : __type__.__underlying__().value);
                _privKey.algo = ({ algorithm : stdgo._internal.crypto.x509.X509__oidpublickeyed25519._oidPublicKeyEd25519 } : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier);
                var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(new stdgo.AnyInterface(_k.seed(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) })))), _curvePrivateKey:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs8.go#L136"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs8.go#L137"
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: failed to marshal private key: %v" : stdgo.GoString), ({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    })) };
                };
                _privKey.privateKey = _curvePrivateKey;
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotecdhdotecdh_privatekeydotprivatekey.__type__stdgodot_internaldotcryptodotecdhdotEcdh_privatekeydotPrivateKey }))) {
                var _k:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs8.go#L142"
                if (({
                    final __t__ = _k.curve();
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotecdhdotecdh_curvedotcurve.__type__stdgodot_internaldotcryptodotecdhdotEcdh_curvedotCurve)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }) == (({
                    final __t__ = stdgo._internal.crypto.ecdh.Ecdh_x25519.x25519();
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotecdhdotecdh_curvedotcurve.__type__stdgodot_internaldotcryptodotecdhdotEcdh_curvedotCurve)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }))) {
                    _privKey.algo = ({ algorithm : stdgo._internal.crypto.x509.X509__oidpublickeyx25519._oidPublicKeyX25519 } : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier);
                    var _err:stdgo.Error = (null : stdgo.Error);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs8.go#L147"
                    {
                        {
                            var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(new stdgo.AnyInterface(_k.bytes(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
                            _privKey.privateKey = @:tmpset0 __tmp__._0;
                            _err = @:tmpset0 __tmp__._1;
                        };
                        if (_err != null) {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs8.go#L148"
                            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: failed to marshal private key: %v" : stdgo.GoString), ({
                                final __t__ = _err;
                                if (__t__ == null) {
                                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                                } else {
                                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                };
                            })) };
                        };
                    };
                } else {
                    var __tmp__ = stdgo._internal.crypto.x509.X509__oidfromecdhcurve._oidFromECDHCurve(_k.curve()), _oid:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier = __tmp__._0, _ok:Bool = __tmp__._1;
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs8.go#L152"
                    if (!_ok) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs8.go#L153"
                        return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: unknown curve while marshaling to PKCS#8" : stdgo.GoString)) };
                    };
                    var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(new stdgo.AnyInterface(stdgo.Go.asInterface(_oid, _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_objectidentifierdotobjectidentifier.__type__stdgodot_internaldotencodingdotasn1dotAsn1_objectidentifierdotObjectIdentifier), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_objectidentifierdotobjectidentifier.__type__stdgodot_internaldotencodingdotasn1dotAsn1_objectidentifierdotObjectIdentifier))), _oidBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs8.go#L156"
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs8.go#L157"
                        return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_((("x509: failed to marshal curve OID: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__()) };
                    };
                    _privKey.algo = ({ algorithm : stdgo._internal.crypto.x509.X509__oidpublickeyecdsa._oidPublicKeyECDSA, parameters : ({ fullBytes : _oidBytes } : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue) } : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs8.go#L165"
                    {
                        {
                            var __tmp__ = stdgo._internal.crypto.x509.X509__marshalecdhprivatekey._marshalECDHPrivateKey(_k);
                            _privKey.privateKey = @:tmpset0 __tmp__._0;
                            _err = @:tmpset0 __tmp__._1;
                        };
                        if (_err != null) {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs8.go#L166"
                            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_((("x509: failed to marshal EC private key while building PKCS#8: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__()) };
                        };
                    };
                };
            } else {
                var _k:stdgo.AnyInterface = __type__?.__underlying__();
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs8.go#L171"
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: unknown key type while marshaling PKCS#8: %T" : stdgo.GoString), _key) };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs8.go#L174"
        return stdgo._internal.encoding.asn1.Asn1_marshal.marshal(new stdgo.AnyInterface(stdgo.Go.asInterface(_privKey, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_pkcs8dott_pkcs8.__type__stdgodot_internaldotcryptodotx509dotX509_t_pkcs8dotT_pkcs8), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_pkcs8dott_pkcs8.__type__stdgodot_internaldotcryptodotx509dotX509_t_pkcs8dotT_pkcs8)));
    }

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
function _checkSignature(_algo:stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm, _signed:stdgo.Slice<stdgo.GoUInt8>, _signature:stdgo.Slice<stdgo.GoUInt8>, _publicKey:stdgo._internal.crypto.Crypto_publickey.PublicKey, _allowSHA1:Bool):stdgo.Error {
        var _err = (null : stdgo.Error);
        var _hashType:stdgo._internal.crypto.Crypto_hash.Hash = ((0 : stdgo.GoUInt) : stdgo._internal.crypto.Crypto_hash.Hash);
        var _pubKeyAlgo:stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L880"
        if (stdgo._internal.crypto.x509.X509__signaturealgorithmdetails._signatureAlgorithmDetails != null) for (__1 => _details in stdgo._internal.crypto.x509.X509__signaturealgorithmdetails._signatureAlgorithmDetails) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L881"
            if (_details._algo == (_algo)) {
                _hashType = _details._hash;
                _pubKeyAlgo = _details._pubKeyAlgo;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L887"
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _hashType;
                    if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (0u32 : stdgo._internal.crypto.Crypto_hash.Hash)))) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L889"
                        if (_pubKeyAlgo != ((4 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm))) {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L890"
                            return _err = stdgo._internal.crypto.x509.X509_errunsupportedalgorithm.errUnsupportedAlgorithm;
                        };
                        break;
                        break;
                    } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (2u32 : stdgo._internal.crypto.Crypto_hash.Hash)))) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L893"
                        return _err = stdgo.Go.asInterface((_algo : stdgo._internal.crypto.x509.X509_insecurealgorithmerror.InsecureAlgorithmError), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_insecurealgorithmerrordotinsecurealgorithmerror.__type__stdgodot_internaldotcryptodotx509dotX509_insecurealgorithmerrordotInsecureAlgorithmError);
                        break;
                        break;
                    } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == (3u32 : stdgo._internal.crypto.Crypto_hash.Hash)))) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L896"
                        if (!_allowSHA1) {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L897"
                            if (stdgo._internal.crypto.x509.X509__x509sha1._x509sha1.value() != (("1" : stdgo.GoString))) {
                                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L898"
                                return _err = stdgo.Go.asInterface((_algo : stdgo._internal.crypto.x509.X509_insecurealgorithmerror.InsecureAlgorithmError), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_insecurealgorithmerrordotinsecurealgorithmerror.__type__stdgodot_internaldotcryptodotx509dotX509_insecurealgorithmerrordotInsecureAlgorithmError);
                            };
                            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L900"
                            stdgo._internal.crypto.x509.X509__x509sha1._x509sha1.incNonDefault();
                        };
                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L902"
                        @:fallthrough {
                            __switchIndex__ = 3;
                            __run__ = true;
                            continue;
                        };
                        break;
                    } else {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L904"
                        if (!_hashType.available()) {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L905"
                            return _err = stdgo._internal.crypto.x509.X509_errunsupportedalgorithm.errUnsupportedAlgorithm;
                        };
                        var _h = @:assignType (_hashType.new_() : stdgo._internal.hash.Hash_hash.Hash);
                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L908"
                        _h.write(_signed);
                        _signed = _h.sum((null : stdgo.Slice<stdgo.GoUInt8>));
                        break;
                    };
                };
                break;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L912"
        {
            final __type__ = _publicKey;
            if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_publickeydotpublickey.__type__stdgodot_internaldotcryptodotrsadotRsa_publickeydotPublicKey }))) {
                var _pub:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L914"
                if (_pubKeyAlgo != ((1 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm))) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L915"
                    return _err = stdgo._internal.crypto.x509.X509__signaturepublickeyalgomismatcherror._signaturePublicKeyAlgoMismatchError(_pubKeyAlgo, new stdgo.AnyInterface(stdgo.Go.asInterface(_pub, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_publickeydotpublickey.__type__stdgodot_internaldotcryptodotrsadotRsa_publickeydotPublicKey), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_publickeydotpublickey.__type__stdgodot_internaldotcryptodotrsadotRsa_publickeydotPublicKey }))));
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L917"
                if (_algo._isRSAPSS()) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L918"
                    return _err = stdgo._internal.crypto.rsa.Rsa_verifypss.verifyPSS(_pub, _hashType, _signed, _signature, (stdgo.Go.setRef(({ saltLength : (-1 : stdgo.GoInt) } : stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_pssoptionsdotpssoptions.__type__stdgodot_internaldotcryptodotrsadotRsa_pssoptionsdotPSSOptions })) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions>));
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L920"
                    return _err = stdgo._internal.crypto.rsa.Rsa_verifypkcs1v15.verifyPKCS1v15(_pub, _hashType, _signed, _signature);
                };
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotecdsadotecdsa_publickeydotpublickey.__type__stdgodot_internaldotcryptodotecdsadotEcdsa_publickeydotPublicKey }))) {
                var _pub:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L923"
                if (_pubKeyAlgo != ((3 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm))) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L924"
                    return _err = stdgo._internal.crypto.x509.X509__signaturepublickeyalgomismatcherror._signaturePublicKeyAlgoMismatchError(_pubKeyAlgo, new stdgo.AnyInterface(stdgo.Go.asInterface(_pub, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotecdsadotecdsa_publickeydotpublickey.__type__stdgodot_internaldotcryptodotecdsadotEcdsa_publickeydotPublicKey), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotecdsadotecdsa_publickeydotpublickey.__type__stdgodot_internaldotcryptodotecdsadotEcdsa_publickeydotPublicKey }))));
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L926"
                if (!stdgo._internal.crypto.ecdsa.Ecdsa_verifyasn1.verifyASN1(_pub, _signed, _signature)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L927"
                    return _err = stdgo._internal.errors.Errors_new_.new_(("x509: ECDSA verification failure" : stdgo.GoString));
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L929"
                return _err;
            } else if (stdgo.Go.typeEquals(__type__, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodoted25519doted25519_publickeydotpublickey.__type__stdgodot_internaldotcryptodoted25519dotEd25519_publickeydotPublicKey)) {
                var _pub:stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey = __type__ == null ? (new stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey(0, 0) : stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey) : __type__.__underlying__() == null ? (new stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey(0, 0) : stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (new stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey(0, 0) : stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L931"
                if (_pubKeyAlgo != ((4 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm))) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L932"
                    return _err = stdgo._internal.crypto.x509.X509__signaturepublickeyalgomismatcherror._signaturePublicKeyAlgoMismatchError(_pubKeyAlgo, new stdgo.AnyInterface(stdgo.Go.asInterface(_pub, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodoted25519doted25519_publickeydotpublickey.__type__stdgodot_internaldotcryptodoted25519dotEd25519_publickeydotPublicKey), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodoted25519doted25519_publickeydotpublickey.__type__stdgodot_internaldotcryptodoted25519dotEd25519_publickeydotPublicKey)));
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L934"
                if (!stdgo._internal.crypto.ed25519.Ed25519_verify.verify(_pub, _signed, _signature)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L935"
                    return _err = stdgo._internal.errors.Errors_new_.new_(("x509: Ed25519 verification failure" : stdgo.GoString));
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L937"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L939"
        return _err = stdgo._internal.crypto.x509.X509_errunsupportedalgorithm.errUnsupportedAlgorithm;
    }

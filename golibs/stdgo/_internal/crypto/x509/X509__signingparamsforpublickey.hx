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
function _signingParamsForPublicKey(_pub:stdgo.AnyInterface, _requestedSigAlgo:stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm):{ var _0 : stdgo._internal.crypto.Crypto_hash.Hash; var _1 : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier; var _2 : stdgo.Error; } {
        var _hashFunc = ((0 : stdgo.GoUInt) : stdgo._internal.crypto.Crypto_hash.Hash), _sigAlgo = ({} : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier), _err = (null : stdgo.Error);
        var _pubType:stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1411"
        {
            final __type__ = _pub;
            if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_publickeydotpublickey.__type__stdgodot_internaldotcryptodotrsadotRsa_publickeydotPublicKey }))) {
                var _pub:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>) : __type__.__underlying__().value);
                _pubType = (1 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm);
                _hashFunc = (5u32 : stdgo._internal.crypto.Crypto_hash.Hash);
                _sigAlgo.algorithm = stdgo._internal.crypto.x509.X509__oidsignaturesha256withrsa._oidSignatureSHA256WithRSA;
                _sigAlgo.parameters = stdgo._internal.encoding.asn1.Asn1_nullrawvalue.nullRawValue?.__copy__();
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotecdsadotecdsa_publickeydotpublickey.__type__stdgodot_internaldotcryptodotecdsadotEcdsa_publickeydotPublicKey }))) {
                var _pub:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>) : __type__.__underlying__().value);
                _pubType = (3 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm);
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1421"
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
                        final __t__ = stdgo._internal.crypto.elliptic.Elliptic_p224.p224();
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotellipticdotelliptic_curvedotcurve.__type__stdgodot_internaldotcryptodotellipticdotElliptic_curvedotCurve)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    })) || ({
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
                        _hashFunc = (5u32 : stdgo._internal.crypto.Crypto_hash.Hash);
                        _sigAlgo.algorithm = stdgo._internal.crypto.x509.X509__oidsignatureecdsawithsha256._oidSignatureECDSAWithSHA256;
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
                        _hashFunc = (6u32 : stdgo._internal.crypto.Crypto_hash.Hash);
                        _sigAlgo.algorithm = stdgo._internal.crypto.x509.X509__oidsignatureecdsawithsha384._oidSignatureECDSAWithSHA384;
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
                        _hashFunc = (7u32 : stdgo._internal.crypto.Crypto_hash.Hash);
                        _sigAlgo.algorithm = stdgo._internal.crypto.x509.X509__oidsignatureecdsawithsha512._oidSignatureECDSAWithSHA512;
                    } else {
                        _err = stdgo._internal.errors.Errors_new_.new_(("x509: unknown elliptic curve" : stdgo.GoString));
                    };
                };
            } else if (stdgo.Go.typeEquals(__type__, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodoted25519doted25519_publickeydotpublickey.__type__stdgodot_internaldotcryptodoted25519dotEd25519_publickeydotPublicKey)) {
                var _pub:stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey = __type__ == null ? (new stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey(0, 0) : stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey) : __type__.__underlying__() == null ? (new stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey(0, 0) : stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (new stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey(0, 0) : stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey) : __type__.__underlying__().value);
                _pubType = (4 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm);
                _sigAlgo.algorithm = stdgo._internal.crypto.x509.X509__oidsignatureed25519._oidSignatureEd25519;
            } else {
                var _pub:stdgo.AnyInterface = __type__?.__underlying__();
                _err = stdgo._internal.errors.Errors_new_.new_(("x509: only RSA, ECDSA and Ed25519 keys supported" : stdgo.GoString));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1443"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1444"
            return { _0 : _hashFunc, _1 : _sigAlgo, _2 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1447"
        if (_requestedSigAlgo == ((0 : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1448"
            return { _0 : _hashFunc, _1 : _sigAlgo, _2 : _err };
        };
        var _found = @:assignType (false : Bool);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1452"
        if (stdgo._internal.crypto.x509.X509__signaturealgorithmdetails._signatureAlgorithmDetails != null) for (__1 => _details in stdgo._internal.crypto.x509.X509__signaturealgorithmdetails._signatureAlgorithmDetails) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1453"
            if (_details._algo == (_requestedSigAlgo)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1454"
                if (_details._pubKeyAlgo != (_pubType)) {
                    _err = stdgo._internal.errors.Errors_new_.new_(("x509: requested SignatureAlgorithm does not match private key type" : stdgo.GoString));
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1456"
                    return { _0 : _hashFunc, _1 : _sigAlgo, _2 : _err };
                };
                {
                    final __tmp__0 = _details._oid;
                    final __tmp__1 = _details._hash;
                    _sigAlgo.algorithm = @:binopAssign __tmp__0;
                    _hashFunc = @:binopAssign __tmp__1;
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1459"
                if (((_hashFunc == (0u32 : stdgo._internal.crypto.Crypto_hash.Hash)) && (_pubType != (4 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm)) : Bool)) {
                    _err = stdgo._internal.errors.Errors_new_.new_(("x509: cannot sign with hash function requested" : stdgo.GoString));
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1461"
                    return { _0 : _hashFunc, _1 : _sigAlgo, _2 : _err };
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1463"
                if (_hashFunc == ((2u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
                    _err = stdgo._internal.errors.Errors_new_.new_(("x509: signing with MD5 is not supported" : stdgo.GoString));
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1465"
                    return { _0 : _hashFunc, _1 : _sigAlgo, _2 : _err };
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1467"
                if (_requestedSigAlgo._isRSAPSS()) {
                    _sigAlgo.parameters = (stdgo._internal.crypto.x509.X509__hashtopssparameters._hashToPSSParameters[_hashFunc] ?? ({} : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue))?.__copy__();
                };
                _found = true;
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1471"
                break;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1475"
        if (!_found) {
            _err = stdgo._internal.errors.Errors_new_.new_(("x509: unknown SignatureAlgorithm" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1479"
        return { _0 : _hashFunc, _1 : _sigAlgo, _2 : _err };
    }

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
function createCertificate(_rand:stdgo._internal.io.Io_reader.Reader, _template:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>, _parent:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>, _pub:stdgo.AnyInterface, _priv:stdgo.AnyInterface):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(_priv, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcrypto_signerdotsigner.__type__stdgodot_internaldotcryptodotCrypto_signerdotSigner) : stdgo._internal.crypto.Crypto_signer.Signer), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo._internal.crypto.Crypto_signer.Signer), _1 : false };
        }, _key = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1540"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1541"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: certificate private key does not implement crypto.Signer" : stdgo.GoString)) };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1544"
        if (({
            final value = (@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).serialNumber;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1545"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: no SerialNumber given" : stdgo.GoString)) };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1553"
        if ((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).serialNumber.sign() == ((-1 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1554"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: serial number must be positive" : stdgo.GoString)) };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1557"
        if (((((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).basicConstraintsValid && !(@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).isCA : Bool) && (@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).maxPathLen != ((-1 : stdgo.GoInt)) : Bool) && ((((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).maxPathLen != (0 : stdgo.GoInt)) || (@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).maxPathLenZero : Bool)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1558"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: only CAs are allowed to specify MaxPathLen" : stdgo.GoString)) };
        };
        var __tmp__ = stdgo._internal.crypto.x509.X509__signingparamsforpublickey._signingParamsForPublicKey(({
            final __t__ = _key.public_();
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcrypto_publickeydotpublickey.__type__stdgodot_internaldotcryptodotCrypto_publickeydotPublicKey)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }), (@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).signatureAlgorithm), _hashFunc:stdgo._internal.crypto.Crypto_hash.Hash = __tmp__._0, _signatureAlgorithm:stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1562"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1563"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var __tmp__ = stdgo._internal.crypto.x509.X509__marshalpublickey._marshalPublicKey(_pub), _publicKeyBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _publicKeyAlgorithm:stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1567"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1568"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1570"
        if (stdgo._internal.crypto.x509.X509__getpublickeyalgorithmfromoid._getPublicKeyAlgorithmFromOID(_publicKeyAlgorithm.algorithm) == ((0 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1571"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: unsupported public key type: %T" : stdgo.GoString), _pub) };
        };
        var __tmp__ = stdgo._internal.crypto.x509.X509__subjectbytes._subjectBytes(_parent), _asn1Issuer:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1575"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1576"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var __tmp__ = stdgo._internal.crypto.x509.X509__subjectbytes._subjectBytes(_template), _asn1Subject:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1580"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1581"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var _authorityKeyId = (@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).authorityKeyId;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1585"
        if ((!stdgo._internal.bytes.Bytes_equal.equal(_asn1Issuer, _asn1Subject) && (((@:checkr _parent ?? throw stdgo.Error._nullPointerDereference.__underlying__()).subjectKeyId.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            _authorityKeyId = (@:checkr _parent ?? throw stdgo.Error._nullPointerDereference.__underlying__()).subjectKeyId;
        };
        var _subjectKeyId = (@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).subjectKeyId;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1590"
        if (((_subjectKeyId.length == (0 : stdgo.GoInt)) && (@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).isCA : Bool)) {
            var _h = stdgo._internal.crypto.sha1.Sha1_sum.sum(_publicKeyBytes)?.__copy__();
            _subjectKeyId = (_h.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>);
        };
        {};
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1603"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(_key.public_(), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_createcertificate___localname___privatekey_54152dott_createcertificate___localname___privatekey_54152.__type__stdgodot_internaldotcryptodotx509dotX509_t_createcertificate___localname___privatekey_54152dotT_createCertificate___localname___privateKey_54152) : stdgo._internal.crypto.x509.X509_t_createcertificate___localname___privatekey_54152.T_createCertificate___localname___privateKey_54152), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo._internal.crypto.x509.X509_t_createcertificate___localname___privatekey_54152.T_createCertificate___localname___privateKey_54152), _1 : false };
            }, _privPub = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1604"
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: internal error: supported public key does not implement Equal" : stdgo.GoString)) };
            } else if ((({
                final value = (@:checkr _parent ?? throw stdgo.Error._nullPointerDereference.__underlying__()).publicKey;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && !_privPub.equal(({
                final __t__ = (@:checkr _parent ?? throw stdgo.Error._nullPointerDereference.__underlying__()).publicKey;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.interfaceType(true, []))).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            })) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1606"
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: provided PrivateKey doesn\'t match parent\'s PublicKey" : stdgo.GoString)) };
            };
        };
        var __tmp__ = stdgo._internal.crypto.x509.X509__buildcertextensions._buildCertExtensions(_template, stdgo._internal.bytes.Bytes_equal.equal(_asn1Subject, stdgo._internal.crypto.x509.X509__emptyasn1subject._emptyASN1Subject), _authorityKeyId, _subjectKeyId), _extensions:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1610"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1611"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var _encodedPublicKey = @:assignType ({ bitLength : ((_publicKeyBytes.length) * (8 : stdgo.GoInt) : stdgo.GoInt), bytes : _publicKeyBytes } : stdgo._internal.encoding.asn1.Asn1_bitstring.BitString);
        var _c = @:assignType ({ version : (2 : stdgo.GoInt), serialNumber : (@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).serialNumber, signatureAlgorithm : _signatureAlgorithm?.__copy__(), issuer : ({ fullBytes : _asn1Issuer } : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue), validity : (new stdgo._internal.crypto.x509.X509_t_validity.T_validity((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).notBefore.uTC()?.__copy__(), (@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).notAfter.uTC()?.__copy__()) : stdgo._internal.crypto.x509.X509_t_validity.T_validity), subject : ({ fullBytes : _asn1Subject } : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue), publicKey : (new stdgo._internal.crypto.x509.X509_t_publickeyinfo.T_publicKeyInfo(null, _publicKeyAlgorithm?.__copy__(), _encodedPublicKey?.__copy__()) : stdgo._internal.crypto.x509.X509_t_publickeyinfo.T_publicKeyInfo), extensions : _extensions } : stdgo._internal.crypto.x509.X509_t_tbscertificate.T_tbsCertificate);
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(new stdgo.AnyInterface(stdgo.Go.asInterface(_c, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_tbscertificatedott_tbscertificate.__type__stdgodot_internaldotcryptodotx509dotX509_t_tbscertificatedotT_tbsCertificate), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_tbscertificatedott_tbscertificate.__type__stdgodot_internaldotcryptodotx509dotX509_t_tbscertificatedotT_tbsCertificate))), _tbsCertContents:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1627"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1628"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        _c.raw = _tbsCertContents;
        var _signed = _tbsCertContents;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1633"
        if (_hashFunc != ((0u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
            var _h = @:assignType (_hashFunc.new_() : stdgo._internal.hash.Hash_hash.Hash);
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1635"
            _h.write(_signed);
            _signed = _h.sum((null : stdgo.Slice<stdgo.GoUInt8>));
        };
        var _signerOpts:stdgo._internal.crypto.Crypto_signeropts.SignerOpts = stdgo.Go.asInterface(_hashFunc, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcrypto_hashdothash.__type__stdgodot_internaldotcryptodotCrypto_hashdotHash);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1640"
        if ((((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).signatureAlgorithm != (0 : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm)) && (@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).signatureAlgorithm._isRSAPSS() : Bool)) {
            _signerOpts = stdgo.Go.asInterface((stdgo.Go.setRef(({ saltLength : (-1 : stdgo.GoInt), hash : _hashFunc } : stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_pssoptionsdotpssoptions.__type__stdgodot_internaldotcryptodotrsadotRsa_pssoptionsdotPSSOptions })) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_pssoptionsdotpssoptions.__type__stdgodot_internaldotcryptodotrsadotRsa_pssoptionsdotPSSOptions }));
        };
        var _signature:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = _key.sign(_rand, _signed, _signerOpts);
            _signature = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1649"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1650"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(new stdgo.AnyInterface(stdgo.Go.asInterface((new stdgo._internal.crypto.x509.X509_t_certificate.T_certificate(_c?.__copy__(), _signatureAlgorithm?.__copy__(), ({ bytes : _signature, bitLength : ((_signature.length) * (8 : stdgo.GoInt) : stdgo.GoInt) } : stdgo._internal.encoding.asn1.Asn1_bitstring.BitString)) : stdgo._internal.crypto.x509.X509_t_certificate.T_certificate), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_certificatedott_certificate.__type__stdgodot_internaldotcryptodotx509dotX509_t_certificatedotT_certificate), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_certificatedott_certificate.__type__stdgodot_internaldotcryptodotx509dotX509_t_certificatedotT_certificate))), _signedCert:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1658"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1659"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1663"
        {
            var _err = @:assignType (stdgo._internal.crypto.x509.X509__checksignature._checkSignature(stdgo._internal.crypto.x509.X509__getsignaturealgorithmfromai._getSignatureAlgorithmFromAI(_signatureAlgorithm?.__copy__()), _c.raw, _signature, _key.public_(), true) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1664"
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: signature over certificate returned by signer is invalid: %w" : stdgo.GoString), ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                })) };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1667"
        return { _0 : _signedCert, _1 : (null : stdgo.Error) };
    }

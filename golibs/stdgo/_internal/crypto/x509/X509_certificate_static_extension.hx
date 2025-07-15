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
@:keep @:allow(stdgo._internal.crypto.x509.X509.Certificate_asInterface) class Certificate_static_extension {
    @:keep
    @:tdfield
    static public function createCRL( _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>, _rand:stdgo._internal.io.Io_reader.Reader, _priv:stdgo.AnyInterface, _revokedCerts:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate.RevokedCertificate>, _now:stdgo._internal.time.Time_time.Time, _expiry:stdgo._internal.time.Time_time.Time):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = _c;
        var _crlBytes = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(_priv, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcrypto_signerdotsigner.__type__stdgodot_internaldotcryptodotCrypto_signerdotSigner) : stdgo._internal.crypto.Crypto_signer.Signer), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo._internal.crypto.Crypto_signer.Signer), _1 : false };
        }, _key = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1713"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1714"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: certificate private key does not implement crypto.Signer" : stdgo.GoString)) };
                _crlBytes = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var __tmp__ = stdgo._internal.crypto.x509.X509__signingparamsforpublickey._signingParamsForPublicKey(({
            final __t__ = _key.public_();
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcrypto_publickeydotpublickey.__type__stdgodot_internaldotcryptodotCrypto_publickeydotPublicKey)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }), (0 : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm)), _hashFunc:stdgo._internal.crypto.Crypto_hash.Hash = __tmp__._0, _signatureAlgorithm:stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1718"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1719"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                _crlBytes = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var _revokedCertsUTC = (new stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate.RevokedCertificate>((_revokedCerts.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_revokedCerts.length : stdgo.GoInt).toBasic() > 0 ? (_revokedCerts.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate.RevokedCertificate)]) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate.RevokedCertificate>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1724"
        if (_revokedCerts != null) for (_i => _rc in _revokedCerts) {
            _rc.revocationTime = _rc.revocationTime.uTC()?.__copy__();
            _revokedCertsUTC[(_i : stdgo.GoInt)] = _rc?.__copy__();
        };
        var _tbsCertList = @:assignType ({ version : (1 : stdgo.GoInt), signature : _signatureAlgorithm?.__copy__(), issuer : (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).subject.toRDNSequence(), thisUpdate : _now.uTC()?.__copy__(), nextUpdate : _expiry.uTC()?.__copy__(), revokedCertificates : _revokedCertsUTC } : stdgo._internal.crypto.x509.pkix.Pkix_tbscertificatelist.TBSCertificateList);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1739"
        if ((((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).subjectKeyId.length) > (0 : stdgo.GoInt) : Bool)) {
            var _aki:stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension = ({} : stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension);
            _aki.id = stdgo._internal.crypto.x509.X509__oidextensionauthoritykeyid._oidExtensionAuthorityKeyId;
            {
                var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(new stdgo.AnyInterface(stdgo.Go.asInterface(({ id : (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).subjectKeyId } : stdgo._internal.crypto.x509.X509_t_authkeyid.T_authKeyId), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_authkeyiddott_authkeyid.__type__stdgodot_internaldotcryptodotx509dotX509_t_authkeyiddotT_authKeyId), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_authkeyiddott_authkeyid.__type__stdgodot_internaldotcryptodotx509dotX509_t_authkeyiddotT_authKeyId)));
                _aki.value = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1743"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1744"
                return { _0 : _crlBytes, _1 : _err };
            };
            _tbsCertList.extensions = (_tbsCertList.extensions.__append__(_aki?.__copy__()) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>);
        };
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(new stdgo.AnyInterface(stdgo.Go.asInterface(_tbsCertList, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotpkixdotpkix_tbscertificatelistdottbscertificatelist.__type__stdgodot_internaldotcryptodotx509dotpkixdotPkix_tbscertificatelistdotTBSCertificateList), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotpkixdotpkix_tbscertificatelistdottbscertificatelist.__type__stdgodot_internaldotcryptodotx509dotpkixdotPkix_tbscertificatelistdotTBSCertificateList))), _tbsCertListContents:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1750"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1751"
            return { _0 : _crlBytes, _1 : _err };
        };
        var _signed = _tbsCertListContents;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1755"
        if (_hashFunc != ((0u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
            var _h = @:assignType (_hashFunc.new_() : stdgo._internal.hash.Hash_hash.Hash);
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1757"
            _h.write(_signed);
            _signed = _h.sum((null : stdgo.Slice<stdgo.GoUInt8>));
        };
        var _signature:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = _key.sign(_rand, _signed, stdgo.Go.asInterface(_hashFunc, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcrypto_hashdothash.__type__stdgodot_internaldotcryptodotCrypto_hashdotHash));
            _signature = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1763"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1764"
            return { _0 : _crlBytes, _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1767"
        return ({
            @:explicitConversion final __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(new stdgo.AnyInterface(stdgo.Go.asInterface(({ tBSCertList : _tbsCertList?.__copy__(), signatureAlgorithm : _signatureAlgorithm?.__copy__(), signatureValue : ({ bytes : _signature, bitLength : ((_signature.length) * (8 : stdgo.GoInt) : stdgo.GoInt) } : stdgo._internal.encoding.asn1.Asn1_bitstring.BitString) } : stdgo._internal.crypto.x509.pkix.Pkix_certificatelist.CertificateList), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotpkixdotpkix_certificatelistdotcertificatelist.__type__stdgodot_internaldotcryptodotx509dotpkixdotPkix_certificatelistdotCertificateList), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotpkixdotpkix_certificatelistdotcertificatelist.__type__stdgodot_internaldotcryptodotx509dotpkixdotPkix_certificatelistdotCertificateList)));
            { _0 : __tmp__._0, _1 : __tmp__._1 };
        });
    }
    @:keep
    @:tdfield
    static public function checkCRLSignature( _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>, _crl:stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_certificatelist.CertificateList>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = _c;
        var _algo = @:assignType (stdgo._internal.crypto.x509.X509__getsignaturealgorithmfromai._getSignatureAlgorithmFromAI((@:checkr _crl ?? throw stdgo.Error._nullPointerDereference.__underlying__()).signatureAlgorithm?.__copy__()) : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L947"
        return _c.checkSignature(_algo, (@:checkr _crl ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tBSCertList.raw, (@:checkr _crl ?? throw stdgo.Error._nullPointerDereference.__underlying__()).signatureValue.rightAlign());
    }
    @:keep
    @:tdfield
    static public function _getSANExtension( _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = _c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L860"
        if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).extensions != null) for (__1 => _e in (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).extensions) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L861"
            if (_e.id.equal(stdgo._internal.crypto.x509.X509__oidextensionsubjectaltname._oidExtensionSubjectAltName)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L862"
                return _e.value;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L865"
        return (null : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function _hasNameConstraints( _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>):Bool {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = _c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L856"
        return stdgo._internal.crypto.x509.X509__oidinextensions._oidInExtensions(stdgo._internal.crypto.x509.X509__oidextensionnameconstraints._oidExtensionNameConstraints, (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).extensions);
    }
    @:keep
    @:tdfield
    static public function checkSignature( _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>, _algo:stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm, _signed:stdgo.Slice<stdgo.GoUInt8>, _signature:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = _c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L852"
        return stdgo._internal.crypto.x509.X509__checksignature._checkSignature(_algo, _signed, _signature, ({
            final __t__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).publicKey;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.interfaceType(true, []))).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }), true);
    }
    @:keep
    @:tdfield
    static public function checkSignatureFrom( _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>, _parent:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = _c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L828"
        if ((((@:checkr _parent ?? throw stdgo.Error._nullPointerDereference.__underlying__()).version == ((3 : stdgo.GoInt)) && !(@:checkr _parent ?? throw stdgo.Error._nullPointerDereference.__underlying__()).basicConstraintsValid : Bool) || ((@:checkr _parent ?? throw stdgo.Error._nullPointerDereference.__underlying__()).basicConstraintsValid && !(@:checkr _parent ?? throw stdgo.Error._nullPointerDereference.__underlying__()).isCA : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L830"
            return stdgo.Go.asInterface((new stdgo._internal.crypto.x509.X509_constraintviolationerror.ConstraintViolationError() : stdgo._internal.crypto.x509.X509_constraintviolationerror.ConstraintViolationError), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_constraintviolationerrordotconstraintviolationerror.__type__stdgodot_internaldotcryptodotx509dotX509_constraintviolationerrordotConstraintViolationError);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L833"
        if ((((@:checkr _parent ?? throw stdgo.Error._nullPointerDereference.__underlying__()).keyUsage != (0 : stdgo._internal.crypto.x509.X509_keyusage.KeyUsage)) && (((@:checkr _parent ?? throw stdgo.Error._nullPointerDereference.__underlying__()).keyUsage & (32 : stdgo._internal.crypto.x509.X509_keyusage.KeyUsage) : stdgo._internal.crypto.x509.X509_keyusage.KeyUsage) == (0 : stdgo._internal.crypto.x509.X509_keyusage.KeyUsage)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L834"
            return stdgo.Go.asInterface((new stdgo._internal.crypto.x509.X509_constraintviolationerror.ConstraintViolationError() : stdgo._internal.crypto.x509.X509_constraintviolationerror.ConstraintViolationError), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_constraintviolationerrordotconstraintviolationerror.__type__stdgodot_internaldotcryptodotx509dotX509_constraintviolationerrordotConstraintViolationError);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L837"
        if ((@:checkr _parent ?? throw stdgo.Error._nullPointerDereference.__underlying__()).publicKeyAlgorithm == ((0 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L838"
            return stdgo._internal.crypto.x509.X509_errunsupportedalgorithm.errUnsupportedAlgorithm;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L841"
        return stdgo._internal.crypto.x509.X509__checksignature._checkSignature((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).signatureAlgorithm, (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rawTBSCertificate, (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).signature, ({
            final __t__ = (@:checkr _parent ?? throw stdgo.Error._nullPointerDereference.__underlying__()).publicKey;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.interfaceType(true, []))).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }), false);
    }
    @:keep
    @:tdfield
    static public function _hasSANExtension( _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>):Bool {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = _c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L815"
        return stdgo._internal.crypto.x509.X509__oidinextensions._oidInExtensions(stdgo._internal.crypto.x509.X509__oidextensionsubjectaltname._oidExtensionSubjectAltName, (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).extensions);
    }
    @:keep
    @:tdfield
    static public function equal( _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>, _other:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>):Bool {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = _c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L808"
        if ((({
            final value = _c;
            (value == null || (value : Dynamic).__nil__);
        }) || ({
            final value = _other;
            (value == null || (value : Dynamic).__nil__);
        }) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L809"
            return _c == (_other);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L811"
        return stdgo._internal.bytes.Bytes_equal.equal((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).raw, (@:checkr _other ?? throw stdgo.Error._nullPointerDereference.__underlying__()).raw);
    }
    @:keep
    @:tdfield
    static public function verifyHostname( _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>, _h:stdgo.GoString):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = _c;
        var _candidateIP = @:assignType (_h?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L1087"
        if (((((_h.length) >= (3 : stdgo.GoInt) : Bool) && _h[(0 : stdgo.GoInt)] == ((91 : stdgo.GoUInt8)) : Bool) && (_h[((_h.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (93 : stdgo.GoUInt8)) : Bool)) {
            _candidateIP = (_h.__slice__((1 : stdgo.GoInt), ((_h.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L1090"
        {
            var _ip = @:assignType (stdgo._internal.net.Net_parseip.parseIP(_candidateIP?.__copy__()) : stdgo._internal.net.Net_ip.IP);
            if (_ip != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L1093"
                if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iPAddresses != null) for (__1 => _candidate in (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iPAddresses) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L1094"
                    if (_ip.equal(_candidate)) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L1095"
                        return (null : stdgo.Error);
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L1098"
                return stdgo.Go.asInterface((new stdgo._internal.crypto.x509.X509_hostnameerror.HostnameError(_c, _candidateIP?.__copy__()) : stdgo._internal.crypto.x509.X509_hostnameerror.HostnameError), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_hostnameerrordothostnameerror.__type__stdgodot_internaldotcryptodotx509dotX509_hostnameerrordotHostnameError);
            };
        };
        var _candidateName = @:assignType (stdgo._internal.crypto.x509.X509__tolowercaseascii._toLowerCaseASCII(_h?.__copy__())?.__copy__() : stdgo.GoString);
        var _validCandidateName = @:assignType (stdgo._internal.crypto.x509.X509__validhostnameinput._validHostnameInput(_candidateName?.__copy__()) : Bool);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L1104"
        if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dNSNames != null) for (__1 => _match in (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dNSNames) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L1110"
            if ((_validCandidateName && stdgo._internal.crypto.x509.X509__validhostnamepattern._validHostnamePattern(_match?.__copy__()) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L1111"
                if (stdgo._internal.crypto.x509.X509__matchhostnames._matchHostnames(_match?.__copy__(), _candidateName?.__copy__())) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L1112"
                    return (null : stdgo.Error);
                };
            } else {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L1115"
                if (stdgo._internal.crypto.x509.X509__matchexactly._matchExactly(_match?.__copy__(), _candidateName?.__copy__())) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L1116"
                    return (null : stdgo.Error);
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L1121"
        return stdgo.Go.asInterface((new stdgo._internal.crypto.x509.X509_hostnameerror.HostnameError(_c, _h?.__copy__()) : stdgo._internal.crypto.x509.X509_hostnameerror.HostnameError), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_hostnameerrordothostnameerror.__type__stdgodot_internaldotcryptodotx509dotX509_hostnameerrordotHostnameError);
    }
    @:keep
    @:tdfield
    static public function _buildChains( _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>, _currentChain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>, _sigChecks:stdgo.Pointer<stdgo.GoInt>, _opts:stdgo.Ref<stdgo._internal.crypto.x509.X509_verifyoptions.VerifyOptions>):{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = _c;
        var _chains = (null : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>>), _err = (null : stdgo.Error);
        var _hintErr:stdgo.Error = (null : stdgo.Error), _hintCert:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
        var _considerCandidate = function(_certType:stdgo.GoInt, _candidate:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>):Void {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L902"
            if (stdgo._internal.crypto.x509.X509__alreadyinchain._alreadyInChain(_candidate, _currentChain)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L903"
                return;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L906"
            if (_sigChecks == null) {
                _sigChecks = stdgo.Go.pointer((0 : stdgo.GoInt));
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L909"
            _sigChecks.value++;
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L910"
            if ((_sigChecks.value > (100 : stdgo.GoInt) : Bool)) {
                _err = stdgo._internal.errors.Errors_new_.new_(("x509: signature check attempts limit reached while verifying certificate chain" : stdgo.GoString));
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L912"
                return;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L915"
            {
                var _err = @:assignType (_c.checkSignatureFrom(_candidate) : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L916"
                    if (_hintErr == null) {
                        _hintErr = _err;
                        _hintCert = _candidate;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L920"
                    return;
                };
            };
            _err = _candidate._isValid(_certType, _currentChain, _opts);
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L924"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L925"
                if (_hintErr == null) {
                    _hintErr = _err;
                    _hintCert = _candidate;
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L929"
                return;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L932"
            {
                final __value__ = _certType;
                if (__value__ == ((2 : stdgo.GoInt))) {
                    _chains = (_chains.__append__(stdgo._internal.crypto.x509.X509__appendtofreshchain._appendToFreshChain(_currentChain, _candidate)) : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>>);
                } else if (__value__ == ((1 : stdgo.GoInt))) {
                    var _childChains:stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>> = (null : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>>);
                    {
                        var __tmp__ = _candidate._buildChains(stdgo._internal.crypto.x509.X509__appendtofreshchain._appendToFreshChain(_currentChain, _candidate), _sigChecks, _opts);
                        _childChains = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    _chains = (_chains.__append__(...(_childChains : Array<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>>)) : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>>);
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L942"
        if ((@:checkr _opts ?? throw stdgo.Error._nullPointerDereference.__underlying__()).roots._findPotentialParents(_c) != null) for (__1 => _root in (@:checkr _opts ?? throw stdgo.Error._nullPointerDereference.__underlying__()).roots._findPotentialParents(_c)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L943"
            _considerCandidate((2 : stdgo.GoInt), _root);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L945"
        if ((@:checkr _opts ?? throw stdgo.Error._nullPointerDereference.__underlying__()).intermediates._findPotentialParents(_c) != null) for (__2 => _intermediate in (@:checkr _opts ?? throw stdgo.Error._nullPointerDereference.__underlying__()).intermediates._findPotentialParents(_c)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L946"
            _considerCandidate((1 : stdgo.GoInt), _intermediate);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L949"
        if (((_chains.length) > (0 : stdgo.GoInt) : Bool)) {
            _err = (null : stdgo.Error);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L952"
        if (((_chains.length == (0 : stdgo.GoInt)) && (_err == null) : Bool)) {
            _err = stdgo.Go.asInterface((new stdgo._internal.crypto.x509.X509_unknownauthorityerror.UnknownAuthorityError(_c, _hintErr, _hintCert) : stdgo._internal.crypto.x509.X509_unknownauthorityerror.UnknownAuthorityError), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_unknownauthorityerrordotunknownauthorityerror.__type__stdgodot_internaldotcryptodotx509dotX509_unknownauthorityerrordotUnknownAuthorityError);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L956"
        return { _0 : _chains, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function verify( _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>, _opts:stdgo._internal.crypto.x509.X509_verifyoptions.VerifyOptions):{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = _c;
        var _chains = (null : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>>), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L751"
        if (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).raw.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L752"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>>), _1 : stdgo._internal.crypto.x509.X509__errnotparsed._errNotParsed };
                _chains = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L754"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < _opts.intermediates._len() : Bool)) {
                var __tmp__ = _opts.intermediates._cert(_i), _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
//"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L756"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L757"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("crypto/x509: error fetching intermediate: %w" : stdgo.GoString), ({
                            final __t__ = _err;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        })) };
                        _chains = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
//"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L759"
                if (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).raw.length) == ((0 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L760"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>>), _1 : stdgo._internal.crypto.x509.X509__errnotparsed._errNotParsed };
                        _chains = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L765"
        if (false) {
            var _systemPool = stdgo._internal.crypto.x509.X509__systemrootspool._systemRootsPool();
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L769"
            if ((({
                final value = _opts.roots;
                (value == null || (value : Dynamic).__nil__);
            }) && ((({
                final value = _systemPool;
                (value == null || (value : Dynamic).__nil__);
            }) || (@:checkr _systemPool ?? throw stdgo.Error._nullPointerDereference.__underlying__())._systemPool : Bool)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L770"
                return _c._systemVerify((stdgo.Go.setRef(_opts, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_verifyoptionsdotverifyoptions.__type__stdgodot_internaldotcryptodotx509dotX509_verifyoptionsdotVerifyOptions })) : stdgo.Ref<stdgo._internal.crypto.x509.X509_verifyoptions.VerifyOptions>));
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L772"
            if ((({
                final value = _opts.roots;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && (@:checkr _opts.roots ?? throw stdgo.Error._nullPointerDereference.__underlying__())._systemPool : Bool)) {
                var __tmp__ = _c._systemVerify((stdgo.Go.setRef(_opts, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_verifyoptionsdotverifyoptions.__type__stdgodot_internaldotcryptodotx509dotX509_verifyoptionsdotVerifyOptions })) : stdgo.Ref<stdgo._internal.crypto.x509.X509_verifyoptions.VerifyOptions>)), _platformChains:stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L777"
                if (((_err == null) || (_opts.roots._len() == (0 : stdgo.GoInt)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L778"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>>; var _1 : stdgo.Error; } = { _0 : _platformChains, _1 : _err };
                        _chains = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L783"
        if (({
            final value = _opts.roots;
            (value == null || (value : Dynamic).__nil__);
        })) {
            _opts.roots = stdgo._internal.crypto.x509.X509__systemrootspool._systemRootsPool();
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L785"
            if (({
                final value = _opts.roots;
                (value == null || (value : Dynamic).__nil__);
            })) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L786"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>>), _1 : stdgo.Go.asInterface((new stdgo._internal.crypto.x509.X509_systemrootserror.SystemRootsError(stdgo._internal.crypto.x509.X509__systemrootserr._systemRootsErr) : stdgo._internal.crypto.x509.X509_systemrootserror.SystemRootsError), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_systemrootserrordotsystemrootserror.__type__stdgodot_internaldotcryptodotx509dotX509_systemrootserrordotSystemRootsError) };
                    _chains = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        _err = _c._isValid((0 : stdgo.GoInt), (null : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>), (stdgo.Go.setRef(_opts, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_verifyoptionsdotverifyoptions.__type__stdgodot_internaldotcryptodotx509dotX509_verifyoptionsdotVerifyOptions })) : stdgo.Ref<stdgo._internal.crypto.x509.X509_verifyoptions.VerifyOptions>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L791"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L792"
            return { _0 : _chains, _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L795"
        if (((_opts.dNSName.length) > (0 : stdgo.GoInt) : Bool)) {
            _err = _c.verifyHostname(_opts.dNSName?.__copy__());
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L797"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L798"
                return { _0 : _chains, _1 : _err };
            };
        };
        var _candidateChains:stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>> = (null : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L803"
        if (_opts.roots._contains(_c)) {
            _candidateChains = (new stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>>(1, 1, ...[(new stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>(1, 1, ...[_c]) : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>)]) : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>>);
        } else {
            {
                var __tmp__ = _c._buildChains((new stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>(1, 1, ...[_c]) : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>), (null : stdgo.Pointer<stdgo.GoInt>), (stdgo.Go.setRef(_opts, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_verifyoptionsdotverifyoptions.__type__stdgodot_internaldotcryptodotx509dotX509_verifyoptionsdotVerifyOptions })) : stdgo.Ref<stdgo._internal.crypto.x509.X509_verifyoptions.VerifyOptions>));
                _candidateChains = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L807"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L808"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>>), _1 : _err };
                    _chains = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L812"
        if ((_opts.keyUsages.length) == ((0 : stdgo.GoInt))) {
            _opts.keyUsages = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>(1, 1, ...[(1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage)]).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L816"
        if (_opts.keyUsages != null) for (__1 => _eku in _opts.keyUsages) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L817"
            if (_eku == ((0 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L820"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>>; var _1 : stdgo.Error; } = { _0 : _candidateChains, _1 : (null : stdgo.Error) };
                    _chains = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        _chains = (new stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>>((0 : stdgo.GoInt).toBasic(), (_candidateChains.length)) : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L825"
        if (_candidateChains != null) for (__2 => _candidate in _candidateChains) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L826"
            if (stdgo._internal.crypto.x509.X509__checkchainforkeyusage._checkChainForKeyUsage(_candidate, _opts.keyUsages)) {
                _chains = (_chains.__append__(_candidate) : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>>);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L831"
        if ((_chains.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L832"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>>), _1 : stdgo.Go.asInterface((new stdgo._internal.crypto.x509.X509_certificateinvaliderror.CertificateInvalidError(_c, (4 : stdgo._internal.crypto.x509.X509_invalidreason.InvalidReason), (stdgo.Go.str() : stdgo.GoString)?.__copy__()) : stdgo._internal.crypto.x509.X509_certificateinvaliderror.CertificateInvalidError), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_certificateinvaliderrordotcertificateinvaliderror.__type__stdgodot_internaldotcryptodotx509dotX509_certificateinvaliderrordotCertificateInvalidError) };
                _chains = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L835"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>>; var _1 : stdgo.Error; } = { _0 : _chains, _1 : (null : stdgo.Error) };
            _chains = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _isValid( _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>, _certType:stdgo.GoInt, _currentChain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>, _opts:stdgo.Ref<stdgo._internal.crypto.x509.X509_verifyoptions.VerifyOptions>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = _c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L559"
        if ((((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).unhandledCriticalExtensions.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L560"
            return stdgo.Go.asInterface((new stdgo._internal.crypto.x509.X509_unhandledcriticalextension.UnhandledCriticalExtension() : stdgo._internal.crypto.x509.X509_unhandledcriticalextension.UnhandledCriticalExtension), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_unhandledcriticalextensiondotunhandledcriticalextension.__type__stdgodot_internaldotcryptodotx509dotX509_unhandledcriticalextensiondotUnhandledCriticalExtension);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L563"
        if (((_currentChain.length) > (0 : stdgo.GoInt) : Bool)) {
            var _child = _currentChain[((_currentChain.length) - (1 : stdgo.GoInt) : stdgo.GoInt)];
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L565"
            if (!stdgo._internal.bytes.Bytes_equal.equal((@:checkr _child ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rawIssuer, (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rawSubject)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L566"
                return stdgo.Go.asInterface((new stdgo._internal.crypto.x509.X509_certificateinvaliderror.CertificateInvalidError(_c, (5 : stdgo._internal.crypto.x509.X509_invalidreason.InvalidReason), (stdgo.Go.str() : stdgo.GoString)?.__copy__()) : stdgo._internal.crypto.x509.X509_certificateinvaliderror.CertificateInvalidError), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_certificateinvaliderrordotcertificateinvaliderror.__type__stdgodot_internaldotcryptodotx509dotX509_certificateinvaliderrordotCertificateInvalidError);
            };
        };
        var _now = @:assignType ((@:checkr _opts ?? throw stdgo.Error._nullPointerDereference.__underlying__()).currentTime?.__copy__() : stdgo._internal.time.Time_time.Time);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L571"
        if (_now.isZero()) {
            _now = stdgo._internal.time.Time_now.now()?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L574"
        if (_now.before((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).notBefore?.__copy__())) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L575"
            return stdgo.Go.asInterface(({ cert : _c, reason : (1 : stdgo._internal.crypto.x509.X509_invalidreason.InvalidReason), detail : stdgo._internal.fmt.Fmt_sprintf.sprintf(("current time %s is before %s" : stdgo.GoString), new stdgo.AnyInterface(_now.format(("2006-01-02T15:04:05Z07:00" : stdgo.GoString)), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).notBefore.format(("2006-01-02T15:04:05Z07:00" : stdgo.GoString)), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))))?.__copy__() } : stdgo._internal.crypto.x509.X509_certificateinvaliderror.CertificateInvalidError), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_certificateinvaliderrordotcertificateinvaliderror.__type__stdgodot_internaldotcryptodotx509dotX509_certificateinvaliderrordotCertificateInvalidError);
        } else if (_now.after((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).notAfter?.__copy__())) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L581"
            return stdgo.Go.asInterface(({ cert : _c, reason : (1 : stdgo._internal.crypto.x509.X509_invalidreason.InvalidReason), detail : stdgo._internal.fmt.Fmt_sprintf.sprintf(("current time %s is after %s" : stdgo.GoString), new stdgo.AnyInterface(_now.format(("2006-01-02T15:04:05Z07:00" : stdgo.GoString)), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).notAfter.format(("2006-01-02T15:04:05Z07:00" : stdgo.GoString)), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))))?.__copy__() } : stdgo._internal.crypto.x509.X509_certificateinvaliderror.CertificateInvalidError), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_certificateinvaliderrordotcertificateinvaliderror.__type__stdgodot_internaldotcryptodotx509dotX509_certificateinvaliderrordotCertificateInvalidError);
        };
        var _maxConstraintComparisons = @:assignType ((@:checkr _opts ?? throw stdgo.Error._nullPointerDereference.__underlying__()).maxConstraintComparisions : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L589"
        if (_maxConstraintComparisons == ((0 : stdgo.GoInt))) {
            _maxConstraintComparisons = (250000 : stdgo.GoInt);
        };
        var _comparisonCount = @:assignType (0 : stdgo.GoInt);
        var _comparisonCount__pointer__ = stdgo.Go.pointer(_comparisonCount);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L594"
        if (((_certType == (1 : stdgo.GoInt)) || (_certType == (2 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L595"
            if ((_currentChain.length) == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L596"
                return stdgo._internal.errors.Errors_new_.new_(("x509: internal error: empty chain when appending CA cert" : stdgo.GoString));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L600"
        if (((((_certType == (1 : stdgo.GoInt)) || (_certType == (2 : stdgo.GoInt)) : Bool)) && _c._hasNameConstraints() : Bool)) {
            var _toCheck = (new stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>(0, 0, ...[]) : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>);
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L603"
            if (_currentChain != null) for (__1 => _c in _currentChain) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L604"
                if (_c._hasSANExtension()) {
                    _toCheck = (_toCheck.__append__(_c) : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>);
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L608"
            if (_toCheck != null) for (__2 => _sanCert in _toCheck) {
                var _err = @:assignType (stdgo._internal.crypto.x509.X509__foreachsan._forEachSAN(_sanCert._getSANExtension(), function(_tag:stdgo.GoInt, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L610"
                    {
                        final __value__ = _tag;
                        if (__value__ == ((1 : stdgo.GoInt))) {
                            var _name = @:assignType ((_data : stdgo.GoString)?.__copy__() : stdgo.GoString);
                            var __tmp__ = stdgo._internal.crypto.x509.X509__parserfc2821mailbox._parseRFC2821Mailbox(_name?.__copy__()), _mailbox:stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox = __tmp__._0, _ok:Bool = __tmp__._1;
                            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L614"
                            if (!_ok) {
                                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L615"
                                return stdgo._internal.fmt.Fmt_errorf.errorf(("x509: cannot parse rfc822Name %q" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_mailbox, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_rfc2821mailboxdott_rfc2821mailbox.__type__stdgodot_internaldotcryptodotx509dotX509_t_rfc2821mailboxdotT_rfc2821Mailbox), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_rfc2821mailboxdott_rfc2821mailbox.__type__stdgodot_internaldotcryptodotx509dotX509_t_rfc2821mailboxdotT_rfc2821Mailbox)));
                            };
                            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L618"
                            {
                                var _err = @:assignType (_c._checkNameConstraints(_comparisonCount__pointer__, _maxConstraintComparisons, ("email address" : stdgo.GoString), _name?.__copy__(), new stdgo.AnyInterface(stdgo.Go.asInterface(_mailbox, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_rfc2821mailboxdott_rfc2821mailbox.__type__stdgodot_internaldotcryptodotx509dotX509_t_rfc2821mailboxdotT_rfc2821Mailbox), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_rfc2821mailboxdott_rfc2821mailbox.__type__stdgodot_internaldotcryptodotx509dotX509_t_rfc2821mailboxdotT_rfc2821Mailbox)), function(_parsedName:stdgo.AnyInterface, _constraint:stdgo.AnyInterface):{ var _0 : Bool; var _1 : stdgo.Error; } {
                                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L620"
                                    return stdgo._internal.crypto.x509.X509__matchemailconstraint._matchEmailConstraint((stdgo.Go.typeAssert(_parsedName, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_rfc2821mailboxdott_rfc2821mailbox.__type__stdgodot_internaldotcryptodotx509dotX509_t_rfc2821mailboxdotT_rfc2821Mailbox) : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox)?.__copy__(), (stdgo.Go.typeAssert(_constraint, stdgo._internal.internal.reflect.GoType.basic(string_kind)) : stdgo.GoString)?.__copy__());
                                }, new stdgo.AnyInterface((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).permittedEmailAddresses, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }))), new stdgo.AnyInterface((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).excludedEmailAddresses, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) })))) : stdgo.Error);
                                if (_err != null) {
                                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L622"
                                    return _err;
                                };
                            };
                        } else if (__value__ == ((2 : stdgo.GoInt))) {
                            var _name = @:assignType ((_data : stdgo.GoString)?.__copy__() : stdgo.GoString);
                            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L627"
                            {
                                var __tmp__ = stdgo._internal.crypto.x509.X509__domaintoreverselabels._domainToReverseLabels(_name?.__copy__()), __3:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
                                if (!_ok) {
                                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L628"
                                    return stdgo._internal.fmt.Fmt_errorf.errorf(("x509: cannot parse dnsName %q" : stdgo.GoString), new stdgo.AnyInterface(_name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                                };
                            };
                            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L631"
                            {
                                var _err = @:assignType (_c._checkNameConstraints(_comparisonCount__pointer__, _maxConstraintComparisons, ("DNS name" : stdgo.GoString), _name?.__copy__(), new stdgo.AnyInterface(_name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), function(_parsedName:stdgo.AnyInterface, _constraint:stdgo.AnyInterface):{ var _0 : Bool; var _1 : stdgo.Error; } {
                                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L633"
                                    return stdgo._internal.crypto.x509.X509__matchdomainconstraint._matchDomainConstraint((stdgo.Go.typeAssert(_parsedName, stdgo._internal.internal.reflect.GoType.basic(string_kind)) : stdgo.GoString)?.__copy__(), (stdgo.Go.typeAssert(_constraint, stdgo._internal.internal.reflect.GoType.basic(string_kind)) : stdgo.GoString)?.__copy__());
                                }, new stdgo.AnyInterface((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).permittedDNSDomains, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }))), new stdgo.AnyInterface((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).excludedDNSDomains, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) })))) : stdgo.Error);
                                if (_err != null) {
                                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L635"
                                    return _err;
                                };
                            };
                        } else if (__value__ == ((6 : stdgo.GoInt))) {
                            var _name = @:assignType ((_data : stdgo.GoString)?.__copy__() : stdgo.GoString);
                            var __tmp__ = stdgo._internal.net.url.Url_parse.parse(_name?.__copy__()), _uri:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L641"
                            if (_err != null) {
                                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L642"
                                return stdgo._internal.fmt.Fmt_errorf.errorf(("x509: internal error: URI SAN %q failed to parse" : stdgo.GoString), new stdgo.AnyInterface(_name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                            };
                            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L645"
                            {
                                var _err = @:assignType (_c._checkNameConstraints(_comparisonCount__pointer__, _maxConstraintComparisons, ("URI" : stdgo.GoString), _name?.__copy__(), new stdgo.AnyInterface(stdgo.Go.asInterface(_uri, _internal.gotype.Gotype___type__stdgodot_internaldotnetdoturldoturl_urldoturl.__type__stdgodot_internaldotnetdoturldotUrl_urldotURL), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdoturldoturl_urldoturl.__type__stdgodot_internaldotnetdoturldotUrl_urldotURL }))), function(_parsedName:stdgo.AnyInterface, _constraint:stdgo.AnyInterface):{ var _0 : Bool; var _1 : stdgo.Error; } {
                                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L647"
                                    return stdgo._internal.crypto.x509.X509__matchuriconstraint._matchURIConstraint((stdgo.Go.typeAssert(_parsedName, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdoturldoturl_urldoturl.__type__stdgodot_internaldotnetdoturldotUrl_urldotURL })) : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>), (stdgo.Go.typeAssert(_constraint, stdgo._internal.internal.reflect.GoType.basic(string_kind)) : stdgo.GoString)?.__copy__());
                                }, new stdgo.AnyInterface((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).permittedURIDomains, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }))), new stdgo.AnyInterface((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).excludedURIDomains, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) })))) : stdgo.Error);
                                if (_err != null) {
                                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L649"
                                    return _err;
                                };
                            };
                        } else if (__value__ == ((7 : stdgo.GoInt))) {
                            var _ip = @:assignType (_data : stdgo._internal.net.Net_ip.IP);
                            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L654"
                            {
                                var _l = @:assignType (_ip.length : stdgo.GoInt);
                                if (((_l != (4 : stdgo.GoInt)) && (_l != (16 : stdgo.GoInt)) : Bool)) {
                                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L655"
                                    return stdgo._internal.fmt.Fmt_errorf.errorf(("x509: internal error: IP SAN %x failed to parse" : stdgo.GoString), new stdgo.AnyInterface(_data, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
                                };
                            };
                            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L658"
                            {
                                var _err = @:assignType (_c._checkNameConstraints(_comparisonCount__pointer__, _maxConstraintComparisons, ("IP address" : stdgo.GoString), (_ip.string() : stdgo.GoString)?.__copy__(), new stdgo.AnyInterface(stdgo.Go.asInterface(_ip, _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_ipdotip.__type__stdgodot_internaldotnetdotNet_ipdotIP), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_ipdotip.__type__stdgodot_internaldotnetdotNet_ipdotIP)), function(_parsedName:stdgo.AnyInterface, _constraint:stdgo.AnyInterface):{ var _0 : Bool; var _1 : stdgo.Error; } {
                                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L660"
                                    return stdgo._internal.crypto.x509.X509__matchipconstraint._matchIPConstraint((stdgo.Go.typeAssert(_parsedName, _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_ipdotip.__type__stdgodot_internaldotnetdotNet_ipdotIP) : stdgo._internal.net.Net_ip.IP), (stdgo.Go.typeAssert(_constraint, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_ipnetdotipnet.__type__stdgodot_internaldotnetdotNet_ipnetdotIPNet })) : stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>));
                                }, new stdgo.AnyInterface((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).permittedIPRanges, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_ipnetdotipnet.__type__stdgodot_internaldotnetdotNet_ipnetdotIPNet }) }))), new stdgo.AnyInterface((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).excludedIPRanges, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_ipnetdotipnet.__type__stdgodot_internaldotnetdotNet_ipnetdotIPNet }) })))) : stdgo.Error);
                                if (_err != null) {
                                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L662"
                                    return _err;
                                };
                            };
                        } else {};
                    };
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L669"
                    return (null : stdgo.Error);
                }) : stdgo.Error);
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L672"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L673"
                    return _err;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L695"
        if (((_certType == (1 : stdgo.GoInt)) && ((!(@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).basicConstraintsValid || !(@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).isCA : Bool)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L696"
            return stdgo.Go.asInterface((new stdgo._internal.crypto.x509.X509_certificateinvaliderror.CertificateInvalidError(_c, (0 : stdgo._internal.crypto.x509.X509_invalidreason.InvalidReason), (stdgo.Go.str() : stdgo.GoString)?.__copy__()) : stdgo._internal.crypto.x509.X509_certificateinvaliderror.CertificateInvalidError), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_certificateinvaliderrordotcertificateinvaliderror.__type__stdgodot_internaldotcryptodotx509dotX509_certificateinvaliderrordotCertificateInvalidError);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L699"
        if (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).basicConstraintsValid && ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).maxPathLen >= (0 : stdgo.GoInt) : Bool) : Bool)) {
            var _numIntermediates = @:assignType ((_currentChain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L701"
            if ((_numIntermediates > (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).maxPathLen : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L702"
                return stdgo.Go.asInterface((new stdgo._internal.crypto.x509.X509_certificateinvaliderror.CertificateInvalidError(_c, (3 : stdgo._internal.crypto.x509.X509_invalidreason.InvalidReason), (stdgo.Go.str() : stdgo.GoString)?.__copy__()) : stdgo._internal.crypto.x509.X509_certificateinvaliderror.CertificateInvalidError), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_certificateinvaliderrordotcertificateinvaliderror.__type__stdgodot_internaldotcryptodotx509dotX509_certificateinvaliderrordotCertificateInvalidError);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L706"
        if (!stdgo._internal.crypto.x509.X509__boringallowcert._boringAllowCert(_c)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L710"
            return stdgo.Go.asInterface((new stdgo._internal.crypto.x509.X509_certificateinvaliderror.CertificateInvalidError(_c, (4 : stdgo._internal.crypto.x509.X509_invalidreason.InvalidReason), (stdgo.Go.str() : stdgo.GoString)?.__copy__()) : stdgo._internal.crypto.x509.X509_certificateinvaliderror.CertificateInvalidError), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_certificateinvaliderrordotcertificateinvaliderror.__type__stdgodot_internaldotcryptodotx509dotX509_certificateinvaliderrordotCertificateInvalidError);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L713"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _checkNameConstraints( _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>, _count:stdgo.Pointer<stdgo.GoInt>, _maxConstraintComparisons:stdgo.GoInt, _nameType:stdgo.GoString, _name:stdgo.GoString, _parsedName:stdgo.AnyInterface, _match:(stdgo.AnyInterface, stdgo.AnyInterface) -> { var _0 : Bool; var _1 : stdgo.Error; }, _permitted:stdgo.AnyInterface, _excluded:stdgo.AnyInterface):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = _c;
        var _excludedValue = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(_excluded)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        _count.value = (_count.value + (_excludedValue.len()) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L512"
        if ((_count.value > _maxConstraintComparisons : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L513"
            return stdgo.Go.asInterface((new stdgo._internal.crypto.x509.X509_certificateinvaliderror.CertificateInvalidError(_c, (8 : stdgo._internal.crypto.x509.X509_invalidreason.InvalidReason), (stdgo.Go.str() : stdgo.GoString)?.__copy__()) : stdgo._internal.crypto.x509.X509_certificateinvaliderror.CertificateInvalidError), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_certificateinvaliderrordotcertificateinvaliderror.__type__stdgodot_internaldotcryptodotx509dotX509_certificateinvaliderrordotCertificateInvalidError);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L516"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < _excludedValue.len() : Bool)) {
                var _constraint = @:assignType (_excludedValue.index(_i).interface_() : stdgo.AnyInterface);
var __tmp__ = _match(_parsedName, _constraint), _match:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
//"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L519"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L520"
                    return stdgo.Go.asInterface((new stdgo._internal.crypto.x509.X509_certificateinvaliderror.CertificateInvalidError(_c, (2 : stdgo._internal.crypto.x509.X509_invalidreason.InvalidReason), _err.error().__copy__()) : stdgo._internal.crypto.x509.X509_certificateinvaliderror.CertificateInvalidError), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_certificateinvaliderrordotcertificateinvaliderror.__type__stdgodot_internaldotcryptodotx509dotX509_certificateinvaliderrordotCertificateInvalidError);
                };
//"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L523"
                if (_match) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L524"
                    return stdgo.Go.asInterface((new stdgo._internal.crypto.x509.X509_certificateinvaliderror.CertificateInvalidError(_c, (2 : stdgo._internal.crypto.x509.X509_invalidreason.InvalidReason), stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s %q is excluded by constraint %q" : stdgo.GoString), new stdgo.AnyInterface(_nameType, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), _constraint).__copy__()) : stdgo._internal.crypto.x509.X509_certificateinvaliderror.CertificateInvalidError), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_certificateinvaliderrordotcertificateinvaliderror.__type__stdgodot_internaldotcryptodotx509dotX509_certificateinvaliderrordotCertificateInvalidError);
                };
                _i++;
            };
        };
        var _permittedValue = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(_permitted)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        _count.value = (_count.value + (_permittedValue.len()) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L531"
        if ((_count.value > _maxConstraintComparisons : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L532"
            return stdgo.Go.asInterface((new stdgo._internal.crypto.x509.X509_certificateinvaliderror.CertificateInvalidError(_c, (8 : stdgo._internal.crypto.x509.X509_invalidreason.InvalidReason), (stdgo.Go.str() : stdgo.GoString)?.__copy__()) : stdgo._internal.crypto.x509.X509_certificateinvaliderror.CertificateInvalidError), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_certificateinvaliderrordotcertificateinvaliderror.__type__stdgodot_internaldotcryptodotx509dotX509_certificateinvaliderrordotCertificateInvalidError);
        };
        var _ok = @:assignType (true : Bool);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L536"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < _permittedValue.len() : Bool)) {
                var _constraint = @:assignType (_permittedValue.index(_i).interface_() : stdgo.AnyInterface);
var _err:stdgo.Error = (null : stdgo.Error);
//"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L540"
                {
                    {
                        var __tmp__ = _match(_parsedName, _constraint);
                        _ok = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L541"
                        return stdgo.Go.asInterface((new stdgo._internal.crypto.x509.X509_certificateinvaliderror.CertificateInvalidError(_c, (2 : stdgo._internal.crypto.x509.X509_invalidreason.InvalidReason), _err.error().__copy__()) : stdgo._internal.crypto.x509.X509_certificateinvaliderror.CertificateInvalidError), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_certificateinvaliderrordotcertificateinvaliderror.__type__stdgodot_internaldotcryptodotx509dotX509_certificateinvaliderrordotCertificateInvalidError);
                    };
                };
//"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L544"
                if (_ok) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L545"
                    break;
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L549"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L550"
            return stdgo.Go.asInterface((new stdgo._internal.crypto.x509.X509_certificateinvaliderror.CertificateInvalidError(_c, (2 : stdgo._internal.crypto.x509.X509_invalidreason.InvalidReason), stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s %q is not permitted by any constraint" : stdgo.GoString), new stdgo.AnyInterface(_nameType, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))))?.__copy__()) : stdgo._internal.crypto.x509.X509_certificateinvaliderror.CertificateInvalidError), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_certificateinvaliderrordotcertificateinvaliderror.__type__stdgodot_internaldotcryptodotx509dotX509_certificateinvaliderrordotCertificateInvalidError);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L553"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _systemVerify( _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>, _opts:stdgo.Ref<stdgo._internal.crypto.x509.X509_verifyoptions.VerifyOptions>):{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = _c;
        var _chains = (null : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>>), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/root_unix.go#L29"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>>), _1 : (null : stdgo.Error) };
            _chains = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
}

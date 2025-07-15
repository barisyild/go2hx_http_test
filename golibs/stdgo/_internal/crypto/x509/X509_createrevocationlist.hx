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
function createRevocationList(_rand:stdgo._internal.io.Io_reader.Reader, _template:stdgo.Ref<stdgo._internal.crypto.x509.X509_revocationlist.RevocationList>, _issuer:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>, _priv:stdgo._internal.crypto.Crypto_signer.Signer):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2293"
        if (({
            final value = _template;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2294"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: template can not be nil" : stdgo.GoString)) };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2296"
        if (({
            final value = _issuer;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2297"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: issuer can not be nil" : stdgo.GoString)) };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2299"
        if ((((@:checkr _issuer ?? throw stdgo.Error._nullPointerDereference.__underlying__()).keyUsage & (64 : stdgo._internal.crypto.x509.X509_keyusage.KeyUsage) : stdgo._internal.crypto.x509.X509_keyusage.KeyUsage)) == ((0 : stdgo._internal.crypto.x509.X509_keyusage.KeyUsage))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2300"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: issuer must have the crlSign key usage bit set" : stdgo.GoString)) };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2302"
        if (((@:checkr _issuer ?? throw stdgo.Error._nullPointerDereference.__underlying__()).subjectKeyId.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2303"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: issuer certificate doesn\'t contain a subject key identifier" : stdgo.GoString)) };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2305"
        if ((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).nextUpdate.before((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).thisUpdate?.__copy__())) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2306"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: template.ThisUpdate is after template.NextUpdate" : stdgo.GoString)) };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2308"
        if (({
            final value = (@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).number;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2309"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: template contains nil Number field" : stdgo.GoString)) };
        };
        var __tmp__ = stdgo._internal.crypto.x509.X509__signingparamsforpublickey._signingParamsForPublicKey(({
            final __t__ = _priv.public_();
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcrypto_publickeydotpublickey.__type__stdgodot_internaldotcryptodotCrypto_publickeydotPublicKey)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }), (@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).signatureAlgorithm), _hashFunc:stdgo._internal.crypto.Crypto_hash.Hash = __tmp__._0, _signatureAlgorithm:stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2313"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2314"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var _revokedCerts:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate.RevokedCertificate> = (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate.RevokedCertificate>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2320"
        if (((((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).revokedCertificates.length) > (0 : stdgo.GoInt) : Bool) && ((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).revokedCertificateEntries.length == (0 : stdgo.GoInt)) : Bool)) {
            _revokedCerts = (new stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate.RevokedCertificate>(((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).revokedCertificates.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... (((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).revokedCertificates.length : stdgo.GoInt).toBasic() > 0 ? ((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).revokedCertificates.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate.RevokedCertificate)]) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate.RevokedCertificate>);
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2323"
            if ((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).revokedCertificates != null) for (_i => _rc in (@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).revokedCertificates) {
                _rc.revocationTime = _rc.revocationTime.uTC()?.__copy__();
                _revokedCerts[(_i : stdgo.GoInt)] = _rc?.__copy__();
            };
        } else {
            _revokedCerts = (new stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate.RevokedCertificate>(((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).revokedCertificateEntries.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... (((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).revokedCertificateEntries.length : stdgo.GoInt).toBasic() > 0 ? ((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).revokedCertificateEntries.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate.RevokedCertificate)]) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate.RevokedCertificate>);
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2331"
            if ((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).revokedCertificateEntries != null) for (_i => _rce in (@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).revokedCertificateEntries) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2332"
                if (({
                    final value = _rce.serialNumber;
                    (value == null || (value : Dynamic).__nil__);
                })) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2333"
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: template contains entry with nil SerialNumber field" : stdgo.GoString)) };
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2335"
                if (_rce.revocationTime.isZero()) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2336"
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: template contains entry with zero RevocationTime field" : stdgo.GoString)) };
                };
                var _rc = @:assignType ({ serialNumber : _rce.serialNumber, revocationTime : _rce.revocationTime.uTC()?.__copy__() } : stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate.RevokedCertificate);
                var _exts = (new stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>((0 : stdgo.GoInt).toBasic(), (_rce.extraExtensions.length), ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > (_rce.extraExtensions.length) ? (0 : stdgo.GoInt).toBasic() : (_rce.extraExtensions.length) : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension)]) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>);
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2347"
                if (_rce.extraExtensions != null) for (__1 => _ext in _rce.extraExtensions) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2348"
                    if (_ext.id.equal(stdgo._internal.crypto.x509.X509__oidextensionreasoncode._oidExtensionReasonCode)) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2349"
                        return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: template contains entry with ReasonCode ExtraExtension; use ReasonCode field instead" : stdgo.GoString)) };
                    };
                    _exts = (_exts.__append__(_ext?.__copy__()) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>);
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2356"
                if (_rce.reasonCode != ((0 : stdgo.GoInt))) {
                    var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(new stdgo.AnyInterface((_rce.reasonCode : stdgo._internal.encoding.asn1.Asn1_enumerated.Enumerated), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_enumerateddotenumerated.__type__stdgodot_internaldotencodingdotasn1dotAsn1_enumerateddotEnumerated))), _reasonBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2358"
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2359"
                        return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                    };
                    _exts = (_exts.__append__(({ id : stdgo._internal.crypto.x509.X509__oidextensionreasoncode._oidExtensionReasonCode, value : _reasonBytes } : stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension)) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>);
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2368"
                if (((_exts.length) > (0 : stdgo.GoInt) : Bool)) {
                    _rc.extensions = _exts;
                };
                _revokedCerts[(_i : stdgo.GoInt)] = _rc?.__copy__();
            };
        };
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(new stdgo.AnyInterface(stdgo.Go.asInterface(({ id : (@:checkr _issuer ?? throw stdgo.Error._nullPointerDereference.__underlying__()).subjectKeyId } : stdgo._internal.crypto.x509.X509_t_authkeyid.T_authKeyId), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_authkeyiddott_authkeyid.__type__stdgodot_internaldotcryptodotx509dotX509_t_authkeyiddotT_authKeyId), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_authkeyiddott_authkeyid.__type__stdgodot_internaldotcryptodotx509dotX509_t_authkeyiddotT_authKeyId))), _aki:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2376"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2377"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2380"
        {
            var _numBytes = (@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).number.bytes();
            if ((((_numBytes.length) > (20 : stdgo.GoInt) : Bool) || (((_numBytes.length == (20 : stdgo.GoInt)) && ((_numBytes[(0 : stdgo.GoInt)] & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) != (0 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2381"
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: CRL number exceeds 20 octets" : stdgo.GoString)) };
            };
        };
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(new stdgo.AnyInterface(stdgo.Go.asInterface((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).number, _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })))), _crlNum:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2384"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2385"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var __tmp__ = stdgo._internal.crypto.x509.X509__subjectbytes._subjectBytes(_issuer), _issuerSubject:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2390"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2391"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var _tbsCertList = @:assignType ({ version : (1 : stdgo.GoInt), signature : _signatureAlgorithm?.__copy__(), issuer : ({ fullBytes : _issuerSubject } : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue), thisUpdate : (@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).thisUpdate.uTC()?.__copy__(), nextUpdate : (@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).nextUpdate.uTC()?.__copy__(), extensions : (new stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>(2, 2, ...[({ id : stdgo._internal.crypto.x509.X509__oidextensionauthoritykeyid._oidExtensionAuthorityKeyId, value : _aki } : stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension), ({ id : stdgo._internal.crypto.x509.X509__oidextensioncrlnumber._oidExtensionCRLNumber, value : _crlNum } : stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension)])) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>) } : stdgo._internal.crypto.x509.X509_t_tbscertificatelist.T_tbsCertificateList);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2411"
        if (((_revokedCerts.length) > (0 : stdgo.GoInt) : Bool)) {
            _tbsCertList.revokedCertificates = _revokedCerts;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2415"
        if ((((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).extraExtensions.length) > (0 : stdgo.GoInt) : Bool)) {
            _tbsCertList.extensions = (_tbsCertList.extensions.__append__(...((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).extraExtensions : Array<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>)) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>);
        };
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(new stdgo.AnyInterface(stdgo.Go.asInterface(_tbsCertList, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_tbscertificatelistdott_tbscertificatelist.__type__stdgodot_internaldotcryptodotx509dotX509_t_tbscertificatelistdotT_tbsCertificateList), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_tbscertificatelistdott_tbscertificatelist.__type__stdgodot_internaldotcryptodotx509dotX509_t_tbscertificatelistdotT_tbsCertificateList))), _tbsCertListContents:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2420"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2421"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        _tbsCertList.raw = _tbsCertListContents;
        var _input = _tbsCertListContents;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2429"
        if (_hashFunc != ((0u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
            var _h = @:assignType (_hashFunc.new_() : stdgo._internal.hash.Hash_hash.Hash);
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2431"
            _h.write(_tbsCertListContents);
            _input = _h.sum((null : stdgo.Slice<stdgo.GoUInt8>));
        };
        var _signerOpts:stdgo._internal.crypto.Crypto_signeropts.SignerOpts = stdgo.Go.asInterface(_hashFunc, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcrypto_hashdothash.__type__stdgodot_internaldotcryptodotCrypto_hashdotHash);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2435"
        if ((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).signatureAlgorithm._isRSAPSS()) {
            _signerOpts = stdgo.Go.asInterface((stdgo.Go.setRef(({ saltLength : (-1 : stdgo.GoInt), hash : _hashFunc } : stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_pssoptionsdotpssoptions.__type__stdgodot_internaldotcryptodotrsadotRsa_pssoptionsdotPSSOptions })) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_pssoptionsdotpssoptions.__type__stdgodot_internaldotcryptodotrsadotRsa_pssoptionsdotPSSOptions }));
        };
        var __tmp__ = _priv.sign(_rand, _input, _signerOpts), _signature:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2443"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2444"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2447"
        return stdgo._internal.encoding.asn1.Asn1_marshal.marshal(new stdgo.AnyInterface(stdgo.Go.asInterface(({ tBSCertList : _tbsCertList?.__copy__(), signatureAlgorithm : _signatureAlgorithm?.__copy__(), signatureValue : ({ bytes : _signature, bitLength : ((_signature.length) * (8 : stdgo.GoInt) : stdgo.GoInt) } : stdgo._internal.encoding.asn1.Asn1_bitstring.BitString) } : stdgo._internal.crypto.x509.X509_t_certificatelist.T_certificateList), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_certificatelistdott_certificatelist.__type__stdgodot_internaldotcryptodotx509dotX509_t_certificatelistdotT_certificateList), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_certificatelistdott_certificatelist.__type__stdgodot_internaldotcryptodotx509dotX509_t_certificatelistdotT_certificateList)));
    }

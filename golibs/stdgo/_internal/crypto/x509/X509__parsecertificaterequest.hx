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
function _parseCertificateRequest(_in:stdgo.Ref<stdgo._internal.crypto.x509.X509_t_certificaterequest.T_certificateRequest>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificaterequest.CertificateRequest>; var _1 : stdgo.Error; } {
        var _out = (stdgo.Go.setRef(({ raw : (@:checkr _in ?? throw stdgo.Error._nullPointerDereference.__underlying__()).raw, rawTBSCertificateRequest : (@:checkr _in ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tBSCSR.raw, rawSubjectPublicKeyInfo : (@:checkr _in ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tBSCSR.publicKey.raw, rawSubject : (@:checkr _in ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tBSCSR.subject.fullBytes, signature : (@:checkr _in ?? throw stdgo.Error._nullPointerDereference.__underlying__()).signatureValue.rightAlign(), signatureAlgorithm : stdgo._internal.crypto.x509.X509__getsignaturealgorithmfromai._getSignatureAlgorithmFromAI((@:checkr _in ?? throw stdgo.Error._nullPointerDereference.__underlying__()).signatureAlgorithm?.__copy__()), publicKeyAlgorithm : stdgo._internal.crypto.x509.X509__getpublickeyalgorithmfromoid._getPublicKeyAlgorithmFromOID((@:checkr _in ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tBSCSR.publicKey.algorithm.algorithm), version : (@:checkr _in ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tBSCSR.version, attributes : stdgo._internal.crypto.x509.X509__parserawattributes._parseRawAttributes((@:checkr _in ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tBSCSR.rawAttributes) } : stdgo._internal.crypto.x509.X509_certificaterequest.CertificateRequest), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_certificaterequestdotcertificaterequest.__type__stdgodot_internaldotcryptodotx509dotX509_certificaterequestdotCertificateRequest })) : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificaterequest.CertificateRequest>);
        var _err:stdgo.Error = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2120"
        if ((@:checkr _out ?? throw stdgo.Error._nullPointerDereference.__underlying__()).publicKeyAlgorithm != ((0 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm))) {
            {
                var __tmp__ = stdgo._internal.crypto.x509.X509__parsepublickey._parsePublicKey((stdgo.Go.setRef((@:checkr _in ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tBSCSR.publicKey, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_publickeyinfodott_publickeyinfo.__type__stdgodot_internaldotcryptodotx509dotX509_t_publickeyinfodotT_publicKeyInfo })) : stdgo.Ref<stdgo._internal.crypto.x509.X509_t_publickeyinfo.T_publicKeyInfo>));
                (@:checkr _out ?? throw stdgo.Error._nullPointerDereference.__underlying__()).publicKey = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2122"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2123"
                return { _0 : null, _1 : _err };
            };
        };
        var _subject:stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence = (new stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence(0, 0) : stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2128"
        {
            var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal((@:checkr _in ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tBSCSR.subject.fullBytes, new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_subject, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotpkixdotpkix_rdnsequencedotrdnsequence.__type__stdgodot_internaldotcryptodotx509dotpkixdotPkix_rdnsequencedotRDNSequence })) : stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence>), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotpkixdotpkix_rdnsequencedotrdnsequence.__type__stdgodot_internaldotcryptodotx509dotpkixdotPkix_rdnsequencedotRDNSequence), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotpkixdotpkix_rdnsequencedotrdnsequence.__type__stdgodot_internaldotcryptodotx509dotpkixdotPkix_rdnsequencedotRDNSequence })))), _rest:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2129"
                return { _0 : null, _1 : _err };
            } else if ((_rest.length) != ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2131"
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: trailing data after X.509 Subject" : stdgo.GoString)) };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2134"
        (@:checkr _out ?? throw stdgo.Error._nullPointerDereference.__underlying__()).subject.fillFromRDNSequence((stdgo.Go.setRef(_subject, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotpkixdotpkix_rdnsequencedotrdnsequence.__type__stdgodot_internaldotcryptodotx509dotpkixdotPkix_rdnsequencedotRDNSequence })) : stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2136"
        {
            {
                var __tmp__ = stdgo._internal.crypto.x509.X509__parsecsrextensions._parseCSRExtensions((@:checkr _in ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tBSCSR.rawAttributes);
                (@:checkr _out ?? throw stdgo.Error._nullPointerDereference.__underlying__()).extensions = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2137"
                return { _0 : null, _1 : _err };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2140"
        if ((@:checkr _out ?? throw stdgo.Error._nullPointerDereference.__underlying__()).extensions != null) for (__1 => _extension in (@:checkr _out ?? throw stdgo.Error._nullPointerDereference.__underlying__()).extensions) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2141"
            if (_extension.id.equal(stdgo._internal.crypto.x509.X509__oidextensionsubjectaltname._oidExtensionSubjectAltName)) {
                {
                    var __tmp__ = stdgo._internal.crypto.x509.X509__parsesanextension._parseSANExtension(_extension.value);
                    (@:checkr _out ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dNSNames = @:tmpset0 __tmp__._0;
                    (@:checkr _out ?? throw stdgo.Error._nullPointerDereference.__underlying__()).emailAddresses = @:tmpset0 __tmp__._1;
                    (@:checkr _out ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iPAddresses = @:tmpset0 __tmp__._2;
                    (@:checkr _out ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRIs = @:tmpset0 __tmp__._3;
                    _err = @:tmpset0 __tmp__._4;
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2144"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2145"
                    return { _0 : null, _1 : _err };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2150"
        return { _0 : _out, _1 : (null : stdgo.Error) };
    }

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
function createCertificateRequest(_rand:stdgo._internal.io.Io_reader.Reader, _template:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificaterequest.CertificateRequest>, _priv:stdgo.AnyInterface):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var _csr = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(_priv, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcrypto_signerdotsigner.__type__stdgodot_internaldotcryptodotCrypto_signerdotSigner) : stdgo._internal.crypto.Crypto_signer.Signer), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo._internal.crypto.Crypto_signer.Signer), _1 : false };
        }, _key = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1933"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1934"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: certificate private key does not implement crypto.Signer" : stdgo.GoString)) };
                _csr = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var _hashFunc:stdgo._internal.crypto.Crypto_hash.Hash = ((0 : stdgo.GoUInt) : stdgo._internal.crypto.Crypto_hash.Hash);
        var _sigAlgo:stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier = ({} : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier);
        {
            var __tmp__ = stdgo._internal.crypto.x509.X509__signingparamsforpublickey._signingParamsForPublicKey(({
                final __t__ = _key.public_();
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcrypto_publickeydotpublickey.__type__stdgodot_internaldotcryptodotCrypto_publickeydotPublicKey)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), (@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).signatureAlgorithm);
            _hashFunc = @:tmpset0 __tmp__._0;
            _sigAlgo = @:tmpset0 __tmp__._1?.__copy__();
            _err = @:tmpset0 __tmp__._2;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1940"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1941"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                _csr = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var _publicKeyBytes:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _publicKeyAlgorithm:stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier = ({} : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier);
        {
            var __tmp__ = stdgo._internal.crypto.x509.X509__marshalpublickey._marshalPublicKey(({
                final __t__ = _key.public_();
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcrypto_publickeydotpublickey.__type__stdgodot_internaldotcryptodotCrypto_publickeydotPublicKey)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
            _publicKeyBytes = @:tmpset0 __tmp__._0;
            _publicKeyAlgorithm = @:tmpset0 __tmp__._1?.__copy__();
            _err = @:tmpset0 __tmp__._2;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1947"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1948"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                _csr = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var __tmp__ = stdgo._internal.crypto.x509.X509__buildcsrextensions._buildCSRExtensions(_template), _extensions:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1952"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1953"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                _csr = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var _attributes = (new stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalueset.AttributeTypeAndValueSET>((0 : stdgo.GoInt).toBasic(), ((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).attributes.length), ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > ((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).attributes.length) ? (0 : stdgo.GoInt).toBasic() : ((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).attributes.length) : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalueset.AttributeTypeAndValueSET)]) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalueset.AttributeTypeAndValueSET>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1958"
        if ((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).attributes != null) for (__1 => _attr in (@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).attributes) {
            var _values = (new stdgo.Slice<stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalue.AttributeTypeAndValue>>((_attr.value.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalue.AttributeTypeAndValue>>);
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1960"
            _values.__copyTo__(_attr.value);
            _attributes = (_attributes.__append__(({ type : _attr.type, value : _values } : stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalueset.AttributeTypeAndValueSET)) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalueset.AttributeTypeAndValueSET>);
        };
        var _extensionsAppended = @:assignType (false : Bool);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1968"
        if (((_extensions.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1970"
            if (_attributes != null) for (__2 => _atvSet in _attributes) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1971"
                if ((!_atvSet.type.equal(stdgo._internal.crypto.x509.X509__oidextensionrequest._oidExtensionRequest) || (_atvSet.value.length == (0 : stdgo.GoInt)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1972"
                    continue;
                };
                var _specifiedExtensions = (({
                    final x = new stdgo.GoMap.GoStringMap<Bool>();
                    x.__defaultValue__ = () -> false;
                    {};
                    x;
                } : stdgo.GoMap<stdgo.GoString, Bool>) : stdgo.GoMap<stdgo.GoString, Bool>);
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1979"
                if (_atvSet.value != null) for (__3 => _atvs in _atvSet.value) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1980"
                    if (_atvs != null) for (__4 => _atv in _atvs) {
                        _specifiedExtensions[(_atv.type.string() : stdgo.GoString)] = true;
                    };
                };
                var _newValue = (new stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalue.AttributeTypeAndValue>((0 : stdgo.GoInt).toBasic(), ((_atvSet.value[(0 : stdgo.GoInt)].length) + (_extensions.length) : stdgo.GoInt), ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > ((_atvSet.value[(0 : stdgo.GoInt)].length) + (_extensions.length) : stdgo.GoInt) ? (0 : stdgo.GoInt).toBasic() : ((_atvSet.value[(0 : stdgo.GoInt)].length) + (_extensions.length) : stdgo.GoInt) : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalue.AttributeTypeAndValue)]) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalue.AttributeTypeAndValue>);
                _newValue = (_newValue.__append__(...(_atvSet.value[(0 : stdgo.GoInt)] : Array<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalue.AttributeTypeAndValue>)) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalue.AttributeTypeAndValue>);
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1988"
                if (_extensions != null) for (__4 => _e in _extensions) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1989"
                    if ((_specifiedExtensions[(_e.id.string() : stdgo.GoString)] ?? false)) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1992"
                        continue;
                    };
                    _newValue = (_newValue.__append__(({ type : _e.id, value : new stdgo.AnyInterface(_e.value, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))) } : stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalue.AttributeTypeAndValue)) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalue.AttributeTypeAndValue>);
                };
                _atvSet.value[(0 : stdgo.GoInt)] = _newValue;
                _extensionsAppended = true;
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2005"
                break;
            };
        };
        var __tmp__ = stdgo._internal.crypto.x509.X509__newrawattributes._newRawAttributes(_attributes), _rawAttributes:stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2010"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2011"
            return { _0 : _csr, _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2016"
        if ((((_extensions.length) > (0 : stdgo.GoInt) : Bool) && !_extensionsAppended : Bool)) {
            var _attr = @:assignType ({ type : stdgo._internal.crypto.x509.X509__oidextensionrequest._oidExtensionRequest, value : (new stdgo.Slice<stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>>(1, 1, ...[_extensions]) : stdgo.Slice<stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>>) } : stdgo._internal.crypto.x509.X509_t__struct_16.T__struct_16);
            var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(new stdgo.AnyInterface(stdgo.Go.asInterface(_attr, stdgo._internal.internal.reflect.GoType.structType([{ name : "type", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_objectidentifierdotobjectidentifier.__type__stdgodot_internaldotencodingdotasn1dotAsn1_objectidentifierdotObjectIdentifier }, optional : false }, { name : "value", embedded : false, tag : "`asn1:\"set\"`", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotpkixdotpkix_extensiondotextension.__type__stdgodot_internaldotcryptodotx509dotpkixdotPkix_extensiondotExtension }) }) }, optional : false }])), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "type", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_objectidentifierdotobjectidentifier.__type__stdgodot_internaldotencodingdotasn1dotAsn1_objectidentifierdotObjectIdentifier }, optional : false }, { name : "value", embedded : false, tag : "`asn1:\"set\"`", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotpkixdotpkix_extensiondotextension.__type__stdgodot_internaldotcryptodotx509dotpkixdotPkix_extensiondotExtension }) }) }, optional : false }])))), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2026"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2027"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_((("x509: failed to serialise extensions attribute: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__()) };
                    _csr = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            var _rawValue:stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue = ({} : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue);
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2031"
            {
                var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_b, new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rawValue, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_rawvaluedotrawvalue.__type__stdgodot_internaldotencodingdotasn1dotAsn1_rawvaluedotRawValue })) : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue>), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_rawvaluedotrawvalue.__type__stdgodot_internaldotencodingdotasn1dotAsn1_rawvaluedotRawValue), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_rawvaluedotrawvalue.__type__stdgodot_internaldotencodingdotasn1dotAsn1_rawvaluedotRawValue })))), __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2032"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                        _csr = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            _rawAttributes = (_rawAttributes.__append__(_rawValue?.__copy__()) : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue>);
        };
        var _asn1Subject = (@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rawSubject;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2039"
        if ((_asn1Subject.length) == ((0 : stdgo.GoInt))) {
            {
                var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(new stdgo.AnyInterface(stdgo.Go.asInterface((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).subject.toRDNSequence(), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotpkixdotpkix_rdnsequencedotrdnsequence.__type__stdgodot_internaldotcryptodotx509dotpkixdotPkix_rdnsequencedotRDNSequence), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotpkixdotpkix_rdnsequencedotrdnsequence.__type__stdgodot_internaldotcryptodotx509dotpkixdotPkix_rdnsequencedotRDNSequence)));
                _asn1Subject = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2041"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2042"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                    _csr = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        var _tbsCSR = @:assignType ({ version : (0 : stdgo.GoInt), subject : ({ fullBytes : _asn1Subject } : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue), publicKey : ({ algorithm : _publicKeyAlgorithm?.__copy__(), publicKey : ({ bytes : _publicKeyBytes, bitLength : ((_publicKeyBytes.length) * (8 : stdgo.GoInt) : stdgo.GoInt) } : stdgo._internal.encoding.asn1.Asn1_bitstring.BitString) } : stdgo._internal.crypto.x509.X509_t_publickeyinfo.T_publicKeyInfo), rawAttributes : _rawAttributes } : stdgo._internal.crypto.x509.X509_t_tbscertificaterequest.T_tbsCertificateRequest);
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(new stdgo.AnyInterface(stdgo.Go.asInterface(_tbsCSR, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_tbscertificaterequestdott_tbscertificaterequest.__type__stdgodot_internaldotcryptodotx509dotX509_t_tbscertificaterequestdotT_tbsCertificateRequest), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_tbscertificaterequestdott_tbscertificaterequest.__type__stdgodot_internaldotcryptodotx509dotX509_t_tbscertificaterequestdotT_tbsCertificateRequest))), _tbsCSRContents:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2060"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2061"
            return { _0 : _csr, _1 : _err };
        };
        _tbsCSR.raw = _tbsCSRContents;
        var _signed = _tbsCSRContents;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2066"
        if (_hashFunc != ((0u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
            var _h = @:assignType (_hashFunc.new_() : stdgo._internal.hash.Hash_hash.Hash);
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2068"
            _h.write(_signed);
            _signed = _h.sum((null : stdgo.Slice<stdgo.GoUInt8>));
        };
        var _signature:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = _key.sign(_rand, _signed, stdgo.Go.asInterface(_hashFunc, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcrypto_hashdothash.__type__stdgodot_internaldotcryptodotCrypto_hashdotHash));
            _signature = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2074"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2075"
            return { _0 : _csr, _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2078"
        return ({
            @:explicitConversion final __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(new stdgo.AnyInterface(stdgo.Go.asInterface(({ tBSCSR : _tbsCSR?.__copy__(), signatureAlgorithm : _sigAlgo?.__copy__(), signatureValue : ({ bytes : _signature, bitLength : ((_signature.length) * (8 : stdgo.GoInt) : stdgo.GoInt) } : stdgo._internal.encoding.asn1.Asn1_bitstring.BitString) } : stdgo._internal.crypto.x509.X509_t_certificaterequest.T_certificateRequest), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_certificaterequestdott_certificaterequest.__type__stdgodot_internaldotcryptodotx509dotX509_t_certificaterequestdotT_certificateRequest), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_certificaterequestdott_certificaterequest.__type__stdgodot_internaldotcryptodotx509dotX509_t_certificaterequestdotT_certificateRequest)));
            { _0 : __tmp__._0, _1 : __tmp__._1 };
        });
    }

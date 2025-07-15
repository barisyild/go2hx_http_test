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
function _parseName(_raw:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_):{ var _0 : stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence>; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L112"
        if (!_raw.readASN1((stdgo.Go.setRef(_raw, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L113"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid RDNSequence" : stdgo.GoString)) };
        };
        var _rdnSeq:stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence = (new stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence(0, 0) : stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L117"
        while (!_raw.empty()) {
            var _rdnSet:stdgo._internal.crypto.x509.pkix.Pkix_relativedistinguishednameset.RelativeDistinguishedNameSET = (new stdgo._internal.crypto.x509.pkix.Pkix_relativedistinguishednameset.RelativeDistinguishedNameSET(0, 0) : stdgo._internal.crypto.x509.pkix.Pkix_relativedistinguishednameset.RelativeDistinguishedNameSET);
            var _set:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L120"
            if (!_raw.readASN1((stdgo.Go.setRef(_set, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (49 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L121"
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid RDNSequence" : stdgo.GoString)) };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L123"
            while (!_set.empty()) {
                var _atav:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L125"
                if (!_set.readASN1((stdgo.Go.setRef(_atav, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L126"
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid RDNSequence: invalid attribute" : stdgo.GoString)) };
                };
                var _attr:stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalue.AttributeTypeAndValue = ({} : stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalue.AttributeTypeAndValue);
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L129"
                if (!_atav.readASN1ObjectIdentifier((stdgo.Go.setRef(_attr.type, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_objectidentifierdotobjectidentifier.__type__stdgodot_internaldotencodingdotasn1dotAsn1_objectidentifierdotObjectIdentifier })) : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>))) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L130"
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid RDNSequence: invalid attribute type" : stdgo.GoString)) };
                };
                var _rawValue:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                var _valueTag:_internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag = ((0 : stdgo.GoUInt8) : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag), _valueTag__pointer__ = stdgo.Go.pointer(_valueTag);
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L134"
                if (!_atav.readAnyASN1((stdgo.Go.setRef(_rawValue, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), _valueTag__pointer__)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L135"
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid RDNSequence: invalid attribute value" : stdgo.GoString)) };
                };
                var _err:stdgo.Error = (null : stdgo.Error);
                {
                    var __tmp__ = stdgo._internal.crypto.x509.X509__parseasn1string._parseASN1String(_valueTag, _rawValue);
                    _attr.value = new stdgo.AnyInterface(@:tmpset0 __tmp__._0, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L139"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L140"
                    return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: invalid RDNSequence: invalid attribute value: %s" : stdgo.GoString), ({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    })) };
                };
                _rdnSet = (_rdnSet.__append__(_attr?.__copy__()) : stdgo._internal.crypto.x509.pkix.Pkix_relativedistinguishednameset.RelativeDistinguishedNameSET);
            };
            _rdnSeq = (_rdnSeq.__append__(_rdnSet) : stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L148"
        return { _0 : (stdgo.Go.setRef(_rdnSeq, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotpkixdotpkix_rdnsequencedotrdnsequence.__type__stdgodot_internaldotcryptodotx509dotpkixdotPkix_rdnsequencedotRDNSequence })) : stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence>), _1 : (null : stdgo.Error) };
    }

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
function _processExtensions(_out:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>):stdgo.Error {
        var _err:stdgo.Error = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L645"
        if ((@:checkr _out ?? throw stdgo.Error._nullPointerDereference.__underlying__()).extensions != null) for (__1 => _e in (@:checkr _out ?? throw stdgo.Error._nullPointerDereference.__underlying__()).extensions) {
            var _unhandled = @:assignType (false : Bool);
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L648"
            if (((((_e.id.length) == ((4 : stdgo.GoInt)) && _e.id[(0 : stdgo.GoInt)] == ((2 : stdgo.GoInt)) : Bool) && _e.id[(1 : stdgo.GoInt)] == ((5 : stdgo.GoInt)) : Bool) && (_e.id[(2 : stdgo.GoInt)] == (29 : stdgo.GoInt)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L649"
                {
                    var __switchIndex__ = -1;
                    var __run__ = true;
                    while (__run__) {
                        __run__ = false;
                        {
                            final __value__ = _e.id[(3 : stdgo.GoInt)];
                            if (__value__ == ((15 : stdgo.GoInt))) {
                                {
                                    var __tmp__ = stdgo._internal.crypto.x509.X509__parsekeyusageextension._parseKeyUsageExtension(_e.value);
                                    (@:checkr _out ?? throw stdgo.Error._nullPointerDereference.__underlying__()).keyUsage = @:tmpset0 __tmp__._0;
                                    _err = @:tmpset0 __tmp__._1;
                                };
                                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L652"
                                if (_err != null) {
                                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L653"
                                    return _err;
                                };
                                break;
                            } else if (__value__ == ((19 : stdgo.GoInt))) {
                                {
                                    var __tmp__ = stdgo._internal.crypto.x509.X509__parsebasicconstraintsextension._parseBasicConstraintsExtension(_e.value);
                                    (@:checkr _out ?? throw stdgo.Error._nullPointerDereference.__underlying__()).isCA = @:tmpset0 __tmp__._0;
                                    (@:checkr _out ?? throw stdgo.Error._nullPointerDereference.__underlying__()).maxPathLen = @:tmpset0 __tmp__._1;
                                    _err = @:tmpset0 __tmp__._2;
                                };
                                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L657"
                                if (_err != null) {
                                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L658"
                                    return _err;
                                };
                                (@:checkr _out ?? throw stdgo.Error._nullPointerDereference.__underlying__()).basicConstraintsValid = true;
                                (@:checkr _out ?? throw stdgo.Error._nullPointerDereference.__underlying__()).maxPathLenZero = (@:checkr _out ?? throw stdgo.Error._nullPointerDereference.__underlying__()).maxPathLen == ((0 : stdgo.GoInt));
                                break;
                            } else if (__value__ == ((17 : stdgo.GoInt))) {
                                {
                                    var __tmp__ = stdgo._internal.crypto.x509.X509__parsesanextension._parseSANExtension(_e.value);
                                    (@:checkr _out ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dNSNames = @:tmpset0 __tmp__._0;
                                    (@:checkr _out ?? throw stdgo.Error._nullPointerDereference.__underlying__()).emailAddresses = @:tmpset0 __tmp__._1;
                                    (@:checkr _out ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iPAddresses = @:tmpset0 __tmp__._2;
                                    (@:checkr _out ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRIs = @:tmpset0 __tmp__._3;
                                    _err = @:tmpset0 __tmp__._4;
                                };
                                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L664"
                                if (_err != null) {
                                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L665"
                                    return _err;
                                };
                                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L668"
                                if ((((((@:checkr _out ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dNSNames.length) == ((0 : stdgo.GoInt)) && ((@:checkr _out ?? throw stdgo.Error._nullPointerDereference.__underlying__()).emailAddresses.length) == ((0 : stdgo.GoInt)) : Bool) && ((@:checkr _out ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iPAddresses.length) == ((0 : stdgo.GoInt)) : Bool) && ((@:checkr _out ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRIs.length == (0 : stdgo.GoInt)) : Bool)) {
                                    _unhandled = true;
                                };
                                break;
                            } else if (__value__ == ((30 : stdgo.GoInt))) {
                                {
                                    var __tmp__ = stdgo._internal.crypto.x509.X509__parsenameconstraintsextension._parseNameConstraintsExtension(_out, _e?.__copy__());
                                    _unhandled = @:tmpset0 __tmp__._0;
                                    _err = @:tmpset0 __tmp__._1;
                                };
                                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L675"
                                if (_err != null) {
                                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L676"
                                    return _err;
                                };
                                break;
                            } else if (__value__ == ((31 : stdgo.GoInt))) {
                                var _val = @:assignType (_e.value : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L693"
                                if (!_val.readASN1((stdgo.Go.setRef(_val, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
                                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L694"
                                    return stdgo._internal.errors.Errors_new_.new_(("x509: invalid CRL distribution points" : stdgo.GoString));
                                };
                                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L696"
                                while (!_val.empty()) {
                                    var _dpDER:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L698"
                                    if (!_val.readASN1((stdgo.Go.setRef(_dpDER, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
                                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L699"
                                        return stdgo._internal.errors.Errors_new_.new_(("x509: invalid CRL distribution point" : stdgo.GoString));
                                    };
                                    var _dpNameDER:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                                    var _dpNamePresent:Bool = false, _dpNamePresent__pointer__ = stdgo.Go.pointer(_dpNamePresent);
                                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L703"
                                    if (!_dpDER.readOptionalASN1((stdgo.Go.setRef(_dpNameDER, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), _dpNamePresent__pointer__, (0 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag).constructed().contextSpecific())) {
                                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L704"
                                        return stdgo._internal.errors.Errors_new_.new_(("x509: invalid CRL distribution point" : stdgo.GoString));
                                    };
                                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L706"
                                    if (!_dpNamePresent) {
                                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L707"
                                        continue;
                                    };
                                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L709"
                                    if (!_dpNameDER.readASN1((stdgo.Go.setRef(_dpNameDER, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (0 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag).constructed().contextSpecific())) {
                                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L710"
                                        return stdgo._internal.errors.Errors_new_.new_(("x509: invalid CRL distribution point" : stdgo.GoString));
                                    };
                                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L712"
                                    while (!_dpNameDER.empty()) {
                                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L713"
                                        if (!_dpNameDER.peekASN1Tag((6 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag).contextSpecific())) {
                                            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L714"
                                            break;
                                        };
                                        var _uri:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L717"
                                        if (!_dpNameDER.readASN1((stdgo.Go.setRef(_uri, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (6 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag).contextSpecific())) {
                                            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L718"
                                            return stdgo._internal.errors.Errors_new_.new_(("x509: invalid CRL distribution point" : stdgo.GoString));
                                        };
                                        (@:checkr _out ?? throw stdgo.Error._nullPointerDereference.__underlying__()).cRLDistributionPoints = ((@:checkr _out ?? throw stdgo.Error._nullPointerDereference.__underlying__()).cRLDistributionPoints.__append__((_uri : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                                    };
                                };
                                break;
                            } else if (__value__ == ((35 : stdgo.GoInt))) {
                                var _val = @:assignType (_e.value : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                                var _akid:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L728"
                                if (!_val.readASN1((stdgo.Go.setRef(_akid, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
                                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L729"
                                    return stdgo._internal.errors.Errors_new_.new_(("x509: invalid authority key identifier" : stdgo.GoString));
                                };
                                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L731"
                                if (_akid.peekASN1Tag((0 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag).contextSpecific())) {
                                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L732"
                                    if (!_akid.readASN1((stdgo.Go.setRef(_akid, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (0 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag).contextSpecific())) {
                                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L733"
                                        return stdgo._internal.errors.Errors_new_.new_(("x509: invalid authority key identifier" : stdgo.GoString));
                                    };
                                    (@:checkr _out ?? throw stdgo.Error._nullPointerDereference.__underlying__()).authorityKeyId = _akid;
                                };
                                break;
                            } else if (__value__ == ((37 : stdgo.GoInt))) {
                                {
                                    var __tmp__ = stdgo._internal.crypto.x509.X509__parseextkeyusageextension._parseExtKeyUsageExtension(_e.value);
                                    (@:checkr _out ?? throw stdgo.Error._nullPointerDereference.__underlying__()).extKeyUsage = @:tmpset0 __tmp__._0;
                                    (@:checkr _out ?? throw stdgo.Error._nullPointerDereference.__underlying__()).unknownExtKeyUsage = @:tmpset0 __tmp__._1;
                                    _err = @:tmpset0 __tmp__._2;
                                };
                                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L739"
                                if (_err != null) {
                                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L740"
                                    return _err;
                                };
                                break;
                            } else if (__value__ == ((14 : stdgo.GoInt))) {
                                var _val = @:assignType (_e.value : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                                var _skid:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L746"
                                if (!_val.readASN1((stdgo.Go.setRef(_skid, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (4 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
                                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L747"
                                    return stdgo._internal.errors.Errors_new_.new_(("x509: invalid subject key identifier" : stdgo.GoString));
                                };
                                (@:checkr _out ?? throw stdgo.Error._nullPointerDereference.__underlying__()).subjectKeyId = _skid;
                                break;
                            } else if (__value__ == ((32 : stdgo.GoInt))) {
                                {
                                    var __tmp__ = stdgo._internal.crypto.x509.X509__parsecertificatepoliciesextension._parseCertificatePoliciesExtension(_e.value);
                                    (@:checkr _out ?? throw stdgo.Error._nullPointerDereference.__underlying__()).policyIdentifiers = @:tmpset0 __tmp__._0;
                                    _err = @:tmpset0 __tmp__._1;
                                };
                                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L752"
                                if (_err != null) {
                                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L753"
                                    return _err;
                                };
                                break;
                            } else {
                                _unhandled = true;
                            };
                        };
                        break;
                    };
                };
            } else if (_e.id.equal(stdgo._internal.crypto.x509.X509__oidextensionauthorityinfoaccess._oidExtensionAuthorityInfoAccess)) {
                var _val = @:assignType (_e.value : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L762"
                if (!_val.readASN1((stdgo.Go.setRef(_val, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L763"
                    return stdgo._internal.errors.Errors_new_.new_(("x509: invalid authority info access" : stdgo.GoString));
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L765"
                while (!_val.empty()) {
                    var _aiaDER:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L767"
                    if (!_val.readASN1((stdgo.Go.setRef(_aiaDER, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L768"
                        return stdgo._internal.errors.Errors_new_.new_(("x509: invalid authority info access" : stdgo.GoString));
                    };
                    var _method:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier = (new stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier(0, 0) : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L771"
                    if (!_aiaDER.readASN1ObjectIdentifier((stdgo.Go.setRef(_method, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_objectidentifierdotobjectidentifier.__type__stdgodot_internaldotencodingdotasn1dotAsn1_objectidentifierdotObjectIdentifier })) : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>))) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L772"
                        return stdgo._internal.errors.Errors_new_.new_(("x509: invalid authority info access" : stdgo.GoString));
                    };
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L774"
                    if (!_aiaDER.peekASN1Tag((6 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag).contextSpecific())) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L775"
                        continue;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L777"
                    if (!_aiaDER.readASN1((stdgo.Go.setRef(_aiaDER, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (6 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag).contextSpecific())) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L778"
                        return stdgo._internal.errors.Errors_new_.new_(("x509: invalid authority info access" : stdgo.GoString));
                    };
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L780"
                    if (_method.equal(stdgo._internal.crypto.x509.X509__oidauthorityinfoaccessocsp._oidAuthorityInfoAccessOcsp)) {
                        (@:checkr _out ?? throw stdgo.Error._nullPointerDereference.__underlying__()).oCSPServer = ((@:checkr _out ?? throw stdgo.Error._nullPointerDereference.__underlying__()).oCSPServer.__append__((_aiaDER : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                    } else if (_method.equal(stdgo._internal.crypto.x509.X509__oidauthorityinfoaccessissuers._oidAuthorityInfoAccessIssuers)) {
                        (@:checkr _out ?? throw stdgo.Error._nullPointerDereference.__underlying__()).issuingCertificateURL = ((@:checkr _out ?? throw stdgo.Error._nullPointerDereference.__underlying__()).issuingCertificateURL.__append__((_aiaDER : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                    };
                };
            } else {
                _unhandled = true;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L792"
            if ((_e.critical && _unhandled : Bool)) {
                (@:checkr _out ?? throw stdgo.Error._nullPointerDereference.__underlying__()).unhandledCriticalExtensions = ((@:checkr _out ?? throw stdgo.Error._nullPointerDereference.__underlying__()).unhandledCriticalExtensions.__append__(_e.id) : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L797"
        return (null : stdgo.Error);
    }

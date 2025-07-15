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
function _buildCertExtensions(_template:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>, _subjectIsEmpty:Bool, _authorityKeyId:stdgo.Slice<stdgo.GoUInt8>, _subjectKeyId:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>; var _1 : stdgo.Error; } {
        var _ret = (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>), _err = (null : stdgo.Error);
        _ret = (new stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>((10 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((10 : stdgo.GoInt).toBasic() > 0 ? (10 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension)]) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>);
        var _n = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1099"
        if ((((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).keyUsage != (0 : stdgo._internal.crypto.x509.X509_keyusage.KeyUsage)) && !stdgo._internal.crypto.x509.X509__oidinextensions._oidInExtensions(stdgo._internal.crypto.x509.X509__oidextensionkeyusage._oidExtensionKeyUsage, (@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).extraExtensions) : Bool)) {
            {
                var __tmp__ = stdgo._internal.crypto.x509.X509__marshalkeyusage._marshalKeyUsage((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).keyUsage);
                _ret[(_n : stdgo.GoInt)] = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1102"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1103"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>), _1 : _err };
                    _ret = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1105"
            _n++;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1108"
        if (((((((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).extKeyUsage.length) > (0 : stdgo.GoInt) : Bool) || (((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).unknownExtKeyUsage.length) > (0 : stdgo.GoInt) : Bool) : Bool)) && !stdgo._internal.crypto.x509.X509__oidinextensions._oidInExtensions(stdgo._internal.crypto.x509.X509__oidextensionextendedkeyusage._oidExtensionExtendedKeyUsage, (@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).extraExtensions) : Bool)) {
            {
                var __tmp__ = stdgo._internal.crypto.x509.X509__marshalextkeyusage._marshalExtKeyUsage((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).extKeyUsage, (@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).unknownExtKeyUsage);
                _ret[(_n : stdgo.GoInt)] = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1111"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1112"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>), _1 : _err };
                    _ret = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1114"
            _n++;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1117"
        if (((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).basicConstraintsValid && !stdgo._internal.crypto.x509.X509__oidinextensions._oidInExtensions(stdgo._internal.crypto.x509.X509__oidextensionbasicconstraints._oidExtensionBasicConstraints, (@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).extraExtensions) : Bool)) {
            {
                var __tmp__ = stdgo._internal.crypto.x509.X509__marshalbasicconstraints._marshalBasicConstraints((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).isCA, (@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).maxPathLen, (@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).maxPathLenZero);
                _ret[(_n : stdgo.GoInt)] = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1119"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1120"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>), _1 : _err };
                    _ret = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1122"
            _n++;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1125"
        if ((((_subjectKeyId.length) > (0 : stdgo.GoInt) : Bool) && !stdgo._internal.crypto.x509.X509__oidinextensions._oidInExtensions(stdgo._internal.crypto.x509.X509__oidextensionsubjectkeyid._oidExtensionSubjectKeyId, (@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).extraExtensions) : Bool)) {
            _ret[(_n : stdgo.GoInt)].id = stdgo._internal.crypto.x509.X509__oidextensionsubjectkeyid._oidExtensionSubjectKeyId;
            {
                var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(new stdgo.AnyInterface(_subjectKeyId, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
                _ret[(_n : stdgo.GoInt)].value = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1128"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1129"
                return { _0 : _ret, _1 : _err };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1131"
            _n++;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1134"
        if ((((_authorityKeyId.length) > (0 : stdgo.GoInt) : Bool) && !stdgo._internal.crypto.x509.X509__oidinextensions._oidInExtensions(stdgo._internal.crypto.x509.X509__oidextensionauthoritykeyid._oidExtensionAuthorityKeyId, (@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).extraExtensions) : Bool)) {
            _ret[(_n : stdgo.GoInt)].id = stdgo._internal.crypto.x509.X509__oidextensionauthoritykeyid._oidExtensionAuthorityKeyId;
            {
                var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(new stdgo.AnyInterface(stdgo.Go.asInterface((new stdgo._internal.crypto.x509.X509_t_authkeyid.T_authKeyId(_authorityKeyId) : stdgo._internal.crypto.x509.X509_t_authkeyid.T_authKeyId), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_authkeyiddott_authkeyid.__type__stdgodot_internaldotcryptodotx509dotX509_t_authkeyiddotT_authKeyId), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_authkeyiddott_authkeyid.__type__stdgodot_internaldotcryptodotx509dotX509_t_authkeyiddotT_authKeyId)));
                _ret[(_n : stdgo.GoInt)].value = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1137"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1138"
                return { _0 : _ret, _1 : _err };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1140"
            _n++;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1143"
        if (((((((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).oCSPServer.length) > (0 : stdgo.GoInt) : Bool) || (((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).issuingCertificateURL.length) > (0 : stdgo.GoInt) : Bool) : Bool)) && !stdgo._internal.crypto.x509.X509__oidinextensions._oidInExtensions(stdgo._internal.crypto.x509.X509__oidextensionauthorityinfoaccess._oidExtensionAuthorityInfoAccess, (@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).extraExtensions) : Bool)) {
            _ret[(_n : stdgo.GoInt)].id = stdgo._internal.crypto.x509.X509__oidextensionauthorityinfoaccess._oidExtensionAuthorityInfoAccess;
            var _aiaValues:stdgo.Slice<stdgo._internal.crypto.x509.X509_t_authorityinfoaccess.T_authorityInfoAccess> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_t_authorityinfoaccess.T_authorityInfoAccess>);
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1147"
            if ((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).oCSPServer != null) for (__1 => _name in (@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).oCSPServer) {
                _aiaValues = (_aiaValues.__append__(({ method : stdgo._internal.crypto.x509.X509__oidauthorityinfoaccessocsp._oidAuthorityInfoAccessOcsp, location : ({ tag : (6 : stdgo.GoInt), class_ : (2 : stdgo.GoInt), bytes : (_name : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue) } : stdgo._internal.crypto.x509.X509_t_authorityinfoaccess.T_authorityInfoAccess)) : stdgo.Slice<stdgo._internal.crypto.x509.X509_t_authorityinfoaccess.T_authorityInfoAccess>);
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1153"
            if ((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).issuingCertificateURL != null) for (__2 => _name in (@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).issuingCertificateURL) {
                _aiaValues = (_aiaValues.__append__(({ method : stdgo._internal.crypto.x509.X509__oidauthorityinfoaccessissuers._oidAuthorityInfoAccessIssuers, location : ({ tag : (6 : stdgo.GoInt), class_ : (2 : stdgo.GoInt), bytes : (_name : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue) } : stdgo._internal.crypto.x509.X509_t_authorityinfoaccess.T_authorityInfoAccess)) : stdgo.Slice<stdgo._internal.crypto.x509.X509_t_authorityinfoaccess.T_authorityInfoAccess>);
            };
            {
                var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(new stdgo.AnyInterface(_aiaValues, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_authorityinfoaccessdott_authorityinfoaccess.__type__stdgodot_internaldotcryptodotx509dotX509_t_authorityinfoaccessdotT_authorityInfoAccess }))));
                _ret[(_n : stdgo.GoInt)].value = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1160"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1161"
                return { _0 : _ret, _1 : _err };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1163"
            _n++;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1166"
        if (((((((((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dNSNames.length) > (0 : stdgo.GoInt) : Bool) || (((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).emailAddresses.length) > (0 : stdgo.GoInt) : Bool) : Bool) || (((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iPAddresses.length) > (0 : stdgo.GoInt) : Bool) : Bool) || (((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRIs.length) > (0 : stdgo.GoInt) : Bool) : Bool)) && !stdgo._internal.crypto.x509.X509__oidinextensions._oidInExtensions(stdgo._internal.crypto.x509.X509__oidextensionsubjectaltname._oidExtensionSubjectAltName, (@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).extraExtensions) : Bool)) {
            _ret[(_n : stdgo.GoInt)].id = stdgo._internal.crypto.x509.X509__oidextensionsubjectaltname._oidExtensionSubjectAltName;
            _ret[(_n : stdgo.GoInt)].critical = _subjectIsEmpty;
            {
                var __tmp__ = stdgo._internal.crypto.x509.X509__marshalsans._marshalSANs((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dNSNames, (@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).emailAddresses, (@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iPAddresses, (@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRIs);
                _ret[(_n : stdgo.GoInt)].value = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1174"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1175"
                return { _0 : _ret, _1 : _err };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1177"
            _n++;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1180"
        if (((((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).policyIdentifiers.length) > (0 : stdgo.GoInt) : Bool) && !stdgo._internal.crypto.x509.X509__oidinextensions._oidInExtensions(stdgo._internal.crypto.x509.X509__oidextensioncertificatepolicies._oidExtensionCertificatePolicies, (@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).extraExtensions) : Bool)) {
            {
                var __tmp__ = stdgo._internal.crypto.x509.X509__marshalcertificatepolicies._marshalCertificatePolicies((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).policyIdentifiers);
                _ret[(_n : stdgo.GoInt)] = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1183"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1184"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>), _1 : _err };
                    _ret = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1186"
            _n++;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1189"
        if (((((((((((((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).permittedDNSDomains.length) > (0 : stdgo.GoInt) : Bool) || (((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).excludedDNSDomains.length) > (0 : stdgo.GoInt) : Bool) : Bool) || (((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).permittedIPRanges.length) > (0 : stdgo.GoInt) : Bool) : Bool) || (((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).excludedIPRanges.length) > (0 : stdgo.GoInt) : Bool) : Bool) || (((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).permittedEmailAddresses.length) > (0 : stdgo.GoInt) : Bool) : Bool) || (((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).excludedEmailAddresses.length) > (0 : stdgo.GoInt) : Bool) : Bool) || (((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).permittedURIDomains.length) > (0 : stdgo.GoInt) : Bool) : Bool) || (((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).excludedURIDomains.length) > (0 : stdgo.GoInt) : Bool) : Bool)) && !stdgo._internal.crypto.x509.X509__oidinextensions._oidInExtensions(stdgo._internal.crypto.x509.X509__oidextensionnameconstraints._oidExtensionNameConstraints, (@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).extraExtensions) : Bool)) {
            _ret[(_n : stdgo.GoInt)].id = stdgo._internal.crypto.x509.X509__oidextensionnameconstraints._oidExtensionNameConstraints;
            _ret[(_n : stdgo.GoInt)].critical = (@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).permittedDNSDomainsCritical;
            var _ipAndMask = function(_ipNet:stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>):stdgo.Slice<stdgo.GoUInt8> {
                var _maskedIP = @:assignType ((@:checkr _ipNet ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iP.mask((@:checkr _ipNet ?? throw stdgo.Error._nullPointerDereference.__underlying__()).mask) : stdgo._internal.net.Net_ip.IP);
                var _ipAndMask = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((_maskedIP.length) + ((@:checkr _ipNet ?? throw stdgo.Error._nullPointerDereference.__underlying__()).mask.length) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                _ipAndMask = (_ipAndMask.__append__(...(_maskedIP : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                _ipAndMask = (_ipAndMask.__append__(...((@:checkr _ipNet ?? throw stdgo.Error._nullPointerDereference.__underlying__()).mask : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1202"
                return _ipAndMask;
            };
            var _serialiseConstraints = function(_dns:stdgo.Slice<stdgo.GoString>, _ips:stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>, _emails:stdgo.Slice<stdgo.GoString>, _uriDomains:stdgo.Slice<stdgo.GoString>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
                var _der = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
                var _b:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder = ({} : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder);
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1208"
                if (_dns != null) for (__1 => _name in _dns) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1209"
                    {
                        _err = stdgo._internal.crypto.x509.X509__isia5string._isIA5String(_name?.__copy__());
                        if (_err != null) {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1210"
                            return {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                                _der = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                        };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1213"
                    _b.addASN1((48 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag), function(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1214"
                        _b.addASN1((2 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag).contextSpecific(), function(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1215"
                            _b.addBytes((_name : stdgo.Slice<stdgo.GoUInt8>));
                        });
                    });
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1220"
                if (_ips != null) for (__2 => _ipNet in _ips) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1221"
                    _b.addASN1((48 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag), function(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1222"
                        _b.addASN1((7 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag).contextSpecific(), function(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1223"
                            _b.addBytes(_ipAndMask(_ipNet));
                        });
                    });
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1228"
                if (_emails != null) for (__3 => _email in _emails) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1229"
                    {
                        _err = stdgo._internal.crypto.x509.X509__isia5string._isIA5String(_email?.__copy__());
                        if (_err != null) {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1230"
                            return {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                                _der = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                        };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1233"
                    _b.addASN1((48 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag), function(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1234"
                        _b.addASN1((1 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag).contextSpecific(), function(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1235"
                            _b.addBytes((_email : stdgo.Slice<stdgo.GoUInt8>));
                        });
                    });
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1240"
                if (_uriDomains != null) for (__4 => _uriDomain in _uriDomains) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1241"
                    {
                        _err = stdgo._internal.crypto.x509.X509__isia5string._isIA5String(_uriDomain?.__copy__());
                        if (_err != null) {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1242"
                            return {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                                _der = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                        };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1245"
                    _b.addASN1((48 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag), function(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1246"
                        _b.addASN1((6 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag).contextSpecific(), function(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1247"
                            _b.addBytes((_uriDomain : stdgo.Slice<stdgo.GoUInt8>));
                        });
                    });
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1252"
                return ({
                    @:explicitConversion final __tmp__ = _b.bytes();
                    { _0 : __tmp__._0, _1 : __tmp__._1 };
                });
            };
            var __tmp__ = _serialiseConstraints((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).permittedDNSDomains, (@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).permittedIPRanges, (@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).permittedEmailAddresses, (@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).permittedURIDomains), _permitted:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1256"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1257"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>), _1 : _err };
                    _ret = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            var __tmp__ = _serialiseConstraints((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).excludedDNSDomains, (@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).excludedIPRanges, (@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).excludedEmailAddresses, (@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).excludedURIDomains), _excluded:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1261"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1262"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>), _1 : _err };
                    _ret = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            var _b:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder = ({} : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder);
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1266"
            _b.addASN1((48 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag), function(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1267"
                if (((_permitted.length) > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1268"
                    _b.addASN1((0 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag).contextSpecific().constructed(), function(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1269"
                        _b.addBytes(_permitted);
                    });
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1273"
                if (((_excluded.length) > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1274"
                    _b.addASN1((1 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag).contextSpecific().constructed(), function(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1275"
                        _b.addBytes(_excluded);
                    });
                };
            });
            {
                var __tmp__ = _b.bytes();
                _ret[(_n : stdgo.GoInt)].value = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1281"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1282"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>), _1 : _err };
                    _ret = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1284"
            _n++;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1287"
        if (((((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).cRLDistributionPoints.length) > (0 : stdgo.GoInt) : Bool) && !stdgo._internal.crypto.x509.X509__oidinextensions._oidInExtensions(stdgo._internal.crypto.x509.X509__oidextensioncrldistributionpoints._oidExtensionCRLDistributionPoints, (@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).extraExtensions) : Bool)) {
            _ret[(_n : stdgo.GoInt)].id = stdgo._internal.crypto.x509.X509__oidextensioncrldistributionpoints._oidExtensionCRLDistributionPoints;
            var _crlDp:stdgo.Slice<stdgo._internal.crypto.x509.X509_t_distributionpoint.T_distributionPoint> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_t_distributionpoint.T_distributionPoint>);
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1292"
            if ((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).cRLDistributionPoints != null) for (__1 => _name in (@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).cRLDistributionPoints) {
                var _dp = @:assignType ({ distributionPoint : ({ fullName : (new stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue>(1, 1, ...[({ tag : (6 : stdgo.GoInt), class_ : (2 : stdgo.GoInt), bytes : (_name : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue)])) : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue>) } : stdgo._internal.crypto.x509.X509_t_distributionpointname.T_distributionPointName) } : stdgo._internal.crypto.x509.X509_t_distributionpoint.T_distributionPoint);
                _crlDp = (_crlDp.__append__(_dp?.__copy__()) : stdgo.Slice<stdgo._internal.crypto.x509.X509_t_distributionpoint.T_distributionPoint>);
            };
            {
                var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(new stdgo.AnyInterface(_crlDp, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_distributionpointdott_distributionpoint.__type__stdgodot_internaldotcryptodotx509dotX509_t_distributionpointdotT_distributionPoint }))));
                _ret[(_n : stdgo.GoInt)].value = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1304"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1305"
                return { _0 : _ret, _1 : _err };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1307"
            _n++;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1314"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>; var _1 : stdgo.Error; } = { _0 : ((_ret.__slice__(0, _n) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>).__append__(...((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).extraExtensions : Array<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>)) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>), _1 : (null : stdgo.Error) };
            _ret = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }

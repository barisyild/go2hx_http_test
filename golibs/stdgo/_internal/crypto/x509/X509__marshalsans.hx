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
function _marshalSANs(_dnsNames:stdgo.Slice<stdgo.GoString>, _emailAddresses:stdgo.Slice<stdgo.GoString>, _ipAddresses:stdgo.Slice<stdgo._internal.net.Net_ip.IP>, _uris:stdgo.Slice<stdgo.Ref<stdgo._internal.net.url.Url_url.URL>>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var _derBytes = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        var _rawValues:stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue> = (null : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1054"
        if (_dnsNames != null) for (__1 => _name in _dnsNames) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1055"
            {
                var _err = @:assignType (stdgo._internal.crypto.x509.X509__isia5string._isIA5String(_name?.__copy__()) : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1056"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                        _derBytes = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            _rawValues = (_rawValues.__append__(({ tag : (2 : stdgo.GoInt), class_ : (2 : stdgo.GoInt), bytes : (_name : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue)) : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue>);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1060"
        if (_emailAddresses != null) for (__2 => _email in _emailAddresses) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1061"
            {
                var _err = @:assignType (stdgo._internal.crypto.x509.X509__isia5string._isIA5String(_email?.__copy__()) : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1062"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                        _derBytes = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            _rawValues = (_rawValues.__append__(({ tag : (1 : stdgo.GoInt), class_ : (2 : stdgo.GoInt), bytes : (_email : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue)) : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue>);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1066"
        if (_ipAddresses != null) for (__3 => _rawIP in _ipAddresses) {
            var _ip = @:assignType (_rawIP.to4() : stdgo._internal.net.Net_ip.IP);
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1069"
            if (_ip == null) {
                _ip = _rawIP;
            };
            _rawValues = (_rawValues.__append__(({ tag : (7 : stdgo.GoInt), class_ : (2 : stdgo.GoInt), bytes : _ip } : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue)) : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue>);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1074"
        if (_uris != null) for (__4 => _uri in _uris) {
            var _uriStr = @:assignType ((_uri.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1076"
            {
                var _err = @:assignType (stdgo._internal.crypto.x509.X509__isia5string._isIA5String(_uriStr?.__copy__()) : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1077"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                        _derBytes = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            _rawValues = (_rawValues.__append__(({ tag : (6 : stdgo.GoInt), class_ : (2 : stdgo.GoInt), bytes : (_uriStr : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue)) : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue>);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1081"
        return ({
            @:explicitConversion final __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(new stdgo.AnyInterface(_rawValues, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_rawvaluedotrawvalue.__type__stdgodot_internaldotencodingdotasn1dotAsn1_rawvaluedotRawValue }))));
            { _0 : __tmp__._0, _1 : __tmp__._1 };
        });
    }

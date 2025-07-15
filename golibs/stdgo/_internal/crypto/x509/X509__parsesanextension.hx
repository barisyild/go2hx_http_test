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
function _parseSANExtension(_der:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Slice<stdgo.GoString>; var _2 : stdgo.Slice<stdgo._internal.net.Net_ip.IP>; var _3 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.url.Url_url.URL>>; var _4 : stdgo.Error; } {
        var _dnsNames = (null : stdgo.Slice<stdgo.GoString>), _emailAddresses = (null : stdgo.Slice<stdgo.GoString>), _ipAddresses = (null : stdgo.Slice<stdgo._internal.net.Net_ip.IP>), _uris = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.url.Url_url.URL>>), _err = (null : stdgo.Error);
        _err = stdgo._internal.crypto.x509.X509__foreachsan._forEachSAN(_der, function(_tag:stdgo.GoInt, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L375"
            {
                final __value__ = _tag;
                if (__value__ == ((1 : stdgo.GoInt))) {
                    var _email = @:assignType ((_data : stdgo.GoString)?.__copy__() : stdgo.GoString);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L378"
                    {
                        var _err = @:assignType (stdgo._internal.crypto.x509.X509__isia5string._isIA5String(_email?.__copy__()) : stdgo.Error);
                        if (_err != null) {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L379"
                            return stdgo._internal.errors.Errors_new_.new_(("x509: SAN rfc822Name is malformed" : stdgo.GoString));
                        };
                    };
                    _emailAddresses = (_emailAddresses.__append__(_email?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                } else if (__value__ == ((2 : stdgo.GoInt))) {
                    var _name = @:assignType ((_data : stdgo.GoString)?.__copy__() : stdgo.GoString);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L384"
                    {
                        var _err = @:assignType (stdgo._internal.crypto.x509.X509__isia5string._isIA5String(_name?.__copy__()) : stdgo.Error);
                        if (_err != null) {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L385"
                            return stdgo._internal.errors.Errors_new_.new_(("x509: SAN dNSName is malformed" : stdgo.GoString));
                        };
                    };
                    _dnsNames = (_dnsNames.__append__((_name : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                } else if (__value__ == ((6 : stdgo.GoInt))) {
                    var _uriStr = @:assignType ((_data : stdgo.GoString)?.__copy__() : stdgo.GoString);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L390"
                    {
                        var _err = @:assignType (stdgo._internal.crypto.x509.X509__isia5string._isIA5String(_uriStr?.__copy__()) : stdgo.Error);
                        if (_err != null) {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L391"
                            return stdgo._internal.errors.Errors_new_.new_(("x509: SAN uniformResourceIdentifier is malformed" : stdgo.GoString));
                        };
                    };
                    var __tmp__ = stdgo._internal.net.url.Url_parse.parse(_uriStr?.__copy__()), _uri:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L394"
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L395"
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("x509: cannot parse URI %q: %s" : stdgo.GoString), new stdgo.AnyInterface(_uriStr, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                            final __t__ = _err;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }));
                    };
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L397"
                    if ((((@:checkr _uri ?? throw stdgo.Error._nullPointerDereference.__underlying__()).host.length) > (0 : stdgo.GoInt) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L398"
                        {
                            var __tmp__ = stdgo._internal.crypto.x509.X509__domaintoreverselabels._domainToReverseLabels((@:checkr _uri ?? throw stdgo.Error._nullPointerDereference.__underlying__()).host?.__copy__()), __1:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
                            if (!_ok) {
                                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L399"
                                return stdgo._internal.fmt.Fmt_errorf.errorf(("x509: cannot parse URI %q: invalid domain" : stdgo.GoString), new stdgo.AnyInterface(_uriStr, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                            };
                        };
                    };
                    _uris = (_uris.__append__(_uri) : stdgo.Slice<stdgo.Ref<stdgo._internal.net.url.Url_url.URL>>);
                } else if (__value__ == ((7 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L404"
                    {
                        final __value__ = (_data.length);
                        if (__value__ == ((4 : stdgo.GoInt)) || __value__ == ((16 : stdgo.GoInt))) {
                            _ipAddresses = (_ipAddresses.__append__(_data) : stdgo.Slice<stdgo._internal.net.Net_ip.IP>);
                        } else {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L408"
                            return stdgo._internal.errors.Errors_new_.new_((("x509: cannot parse IP address of length " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa((_data.length))?.__copy__() : stdgo.GoString)?.__copy__());
                        };
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L412"
            return (null : stdgo.Error);
        });
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L415"
        return { _0 : _dnsNames, _1 : _emailAddresses, _2 : _ipAddresses, _3 : _uris, _4 : _err };
    }

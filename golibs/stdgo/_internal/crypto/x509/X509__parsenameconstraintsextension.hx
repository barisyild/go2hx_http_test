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
function _parseNameConstraintsExtension(_out:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>, _e:stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _unhandled = false, _err = (null : stdgo.Error);
        var _outer = @:assignType (_e.value : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        var _toplevel:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_), _permitted:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_), _excluded:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        var _havePermitted:Bool = false, _haveExcluded:Bool = false, _haveExcluded__pointer__ = stdgo.Go.pointer(_haveExcluded), _havePermitted__pointer__ = stdgo.Go.pointer(_havePermitted);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L502"
        if (((((!_outer.readASN1((stdgo.Go.setRef(_toplevel, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag)) || !_outer.empty() : Bool) || !_toplevel.readOptionalASN1((stdgo.Go.setRef(_permitted, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), _havePermitted__pointer__, (0 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag).contextSpecific().constructed()) : Bool) || !_toplevel.readOptionalASN1((stdgo.Go.setRef(_excluded, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), _haveExcluded__pointer__, (1 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag).contextSpecific().constructed()) : Bool) || !_toplevel.empty() : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L507"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid NameConstraints extension" : stdgo.GoString)) };
                _unhandled = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L510"
        if (((!_havePermitted && !_haveExcluded : Bool) || ((_permitted.length) == ((0 : stdgo.GoInt)) && (_excluded.length) == ((0 : stdgo.GoInt)) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L515"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: empty name constraints extension" : stdgo.GoString)) };
                _unhandled = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var _getValues = @:assignType (function(_subtrees:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>; var _2 : stdgo.Slice<stdgo.GoString>; var _3 : stdgo.Slice<stdgo.GoString>; var _4 : stdgo.Error; } {
            var _dnsNames = (null : stdgo.Slice<stdgo.GoString>), _ips = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>), _emails = (null : stdgo.Slice<stdgo.GoString>), _uriDomains = (null : stdgo.Slice<stdgo.GoString>), _err = (null : stdgo.Error);
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L519"
            while (!_subtrees.empty()) {
                var _seq:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_), _value:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                var _tag:_internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag = ((0 : stdgo.GoUInt8) : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag), _tag__pointer__ = stdgo.Go.pointer(_tag);
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L522"
                if ((!_subtrees.readASN1((stdgo.Go.setRef(_seq, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag)) || !_seq.readAnyASN1((stdgo.Go.setRef(_value, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), _tag__pointer__) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L524"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>; var _2 : stdgo.Slice<stdgo.GoString>; var _3 : stdgo.Slice<stdgo.GoString>; var _4 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>), _2 : (null : stdgo.Slice<stdgo.GoString>), _3 : (null : stdgo.Slice<stdgo.GoString>), _4 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: invalid NameConstraints extension" : stdgo.GoString)) };
                        _dnsNames = __tmp__._0;
                        _ips = __tmp__._1;
                        _emails = __tmp__._2;
                        _uriDomains = __tmp__._3;
                        _err = __tmp__._4;
                        __tmp__;
                    };
                };
                var _dnsTag = (2 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag).contextSpecific(), _emailTag = (1 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag).contextSpecific(), _ipTag = (7 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag).contextSpecific(), _uriTag = (6 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag).contextSpecific();
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L534"
                {
                    final __value__ = _tag;
                    if (__value__ == (_dnsTag)) {
                        var _domain = @:assignType ((_value : stdgo.GoString)?.__copy__() : stdgo.GoString);
                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L537"
                        {
                            var _err = @:assignType (stdgo._internal.crypto.x509.X509__isia5string._isIA5String(_domain?.__copy__()) : stdgo.Error);
                            if (_err != null) {
                                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L538"
                                return {
                                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>; var _2 : stdgo.Slice<stdgo.GoString>; var _3 : stdgo.Slice<stdgo.GoString>; var _4 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>), _2 : (null : stdgo.Slice<stdgo.GoString>), _3 : (null : stdgo.Slice<stdgo.GoString>), _4 : stdgo._internal.errors.Errors_new_.new_((("x509: invalid constraint value: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__()) };
                                    _dnsNames = __tmp__._0;
                                    _ips = __tmp__._1;
                                    _emails = __tmp__._2;
                                    _uriDomains = __tmp__._3;
                                    _err = __tmp__._4;
                                    __tmp__;
                                };
                            };
                        };
                        var _trimmedDomain = @:assignType (_domain?.__copy__() : stdgo.GoString);
                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L542"
                        if ((((_trimmedDomain.length) > (0 : stdgo.GoInt) : Bool) && (_trimmedDomain[(0 : stdgo.GoInt)] == (46 : stdgo.GoUInt8)) : Bool)) {
                            _trimmedDomain = (_trimmedDomain.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        };
                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L549"
                        {
                            var __tmp__ = stdgo._internal.crypto.x509.X509__domaintoreverselabels._domainToReverseLabels(_trimmedDomain?.__copy__()), __1:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
                            if (!_ok) {
                                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L550"
                                return {
                                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>; var _2 : stdgo.Slice<stdgo.GoString>; var _3 : stdgo.Slice<stdgo.GoString>; var _4 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>), _2 : (null : stdgo.Slice<stdgo.GoString>), _3 : (null : stdgo.Slice<stdgo.GoString>), _4 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: failed to parse dnsName constraint %q" : stdgo.GoString), new stdgo.AnyInterface(_domain, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))) };
                                    _dnsNames = __tmp__._0;
                                    _ips = __tmp__._1;
                                    _emails = __tmp__._2;
                                    _uriDomains = __tmp__._3;
                                    _err = __tmp__._4;
                                    __tmp__;
                                };
                            };
                        };
                        _dnsNames = (_dnsNames.__append__(_domain?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                    } else if (__value__ == (_ipTag)) {
                        var _l = @:assignType (_value.length : stdgo.GoInt);
                        var _ip:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>), _mask:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L558"
                        {
                            final __value__ = _l;
                            if (__value__ == ((8 : stdgo.GoInt))) {
                                _ip = (_value.__slice__(0, (4 : stdgo.GoInt)) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                                _mask = (_value.__slice__((4 : stdgo.GoInt)) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                            } else if (__value__ == ((32 : stdgo.GoInt))) {
                                _ip = (_value.__slice__(0, (16 : stdgo.GoInt)) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                                _mask = (_value.__slice__((16 : stdgo.GoInt)) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                            } else {
                                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L568"
                                return {
                                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>; var _2 : stdgo.Slice<stdgo.GoString>; var _3 : stdgo.Slice<stdgo.GoString>; var _4 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>), _2 : (null : stdgo.Slice<stdgo.GoString>), _3 : (null : stdgo.Slice<stdgo.GoString>), _4 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: IP constraint contained value of length %d" : stdgo.GoString), new stdgo.AnyInterface(_l, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))) };
                                    _dnsNames = __tmp__._0;
                                    _ips = __tmp__._1;
                                    _emails = __tmp__._2;
                                    _uriDomains = __tmp__._3;
                                    _err = __tmp__._4;
                                    __tmp__;
                                };
                            };
                        };
                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L571"
                        if (!stdgo._internal.crypto.x509.X509__isvalidipmask._isValidIPMask(_mask)) {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L572"
                            return {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>; var _2 : stdgo.Slice<stdgo.GoString>; var _3 : stdgo.Slice<stdgo.GoString>; var _4 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>), _2 : (null : stdgo.Slice<stdgo.GoString>), _3 : (null : stdgo.Slice<stdgo.GoString>), _4 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: IP constraint contained invalid mask %x" : stdgo.GoString), new stdgo.AnyInterface(_mask, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) })))) };
                                _dnsNames = __tmp__._0;
                                _ips = __tmp__._1;
                                _emails = __tmp__._2;
                                _uriDomains = __tmp__._3;
                                _err = __tmp__._4;
                                __tmp__;
                            };
                        };
                        _ips = (_ips.__append__((stdgo.Go.setRef(({ iP : (_ip : stdgo._internal.net.Net_ip.IP), mask : (_mask : stdgo._internal.net.Net_ipmask.IPMask) } : stdgo._internal.net.Net_ipnet.IPNet), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_ipnetdotipnet.__type__stdgodot_internaldotnetdotNet_ipnetdotIPNet })) : stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>)) : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>);
                    } else if (__value__ == (_emailTag)) {
                        var _constraint = @:assignType ((_value : stdgo.GoString)?.__copy__() : stdgo.GoString);
                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L579"
                        {
                            var _err = @:assignType (stdgo._internal.crypto.x509.X509__isia5string._isIA5String(_constraint?.__copy__()) : stdgo.Error);
                            if (_err != null) {
                                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L580"
                                return {
                                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>; var _2 : stdgo.Slice<stdgo.GoString>; var _3 : stdgo.Slice<stdgo.GoString>; var _4 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>), _2 : (null : stdgo.Slice<stdgo.GoString>), _3 : (null : stdgo.Slice<stdgo.GoString>), _4 : stdgo._internal.errors.Errors_new_.new_((("x509: invalid constraint value: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__()) };
                                    _dnsNames = __tmp__._0;
                                    _ips = __tmp__._1;
                                    _emails = __tmp__._2;
                                    _uriDomains = __tmp__._3;
                                    _err = __tmp__._4;
                                    __tmp__;
                                };
                            };
                        };
                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L585"
                        if (stdgo._internal.strings.Strings_contains.contains(_constraint?.__copy__(), ("@" : stdgo.GoString))) {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L586"
                            {
                                var __tmp__ = stdgo._internal.crypto.x509.X509__parserfc2821mailbox._parseRFC2821Mailbox(_constraint?.__copy__()), __1:stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox = __tmp__._0, _ok:Bool = __tmp__._1;
                                if (!_ok) {
                                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L587"
                                    return {
                                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>; var _2 : stdgo.Slice<stdgo.GoString>; var _3 : stdgo.Slice<stdgo.GoString>; var _4 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>), _2 : (null : stdgo.Slice<stdgo.GoString>), _3 : (null : stdgo.Slice<stdgo.GoString>), _4 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: failed to parse rfc822Name constraint %q" : stdgo.GoString), new stdgo.AnyInterface(_constraint, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))) };
                                        _dnsNames = __tmp__._0;
                                        _ips = __tmp__._1;
                                        _emails = __tmp__._2;
                                        _uriDomains = __tmp__._3;
                                        _err = __tmp__._4;
                                        __tmp__;
                                    };
                                };
                            };
                        } else {
                            var _domain = @:assignType (_constraint?.__copy__() : stdgo.GoString);
                            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L592"
                            if ((((_domain.length) > (0 : stdgo.GoInt) : Bool) && (_domain[(0 : stdgo.GoInt)] == (46 : stdgo.GoUInt8)) : Bool)) {
                                _domain = (_domain.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                            };
                            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L595"
                            {
                                var __tmp__ = stdgo._internal.crypto.x509.X509__domaintoreverselabels._domainToReverseLabels(_domain?.__copy__()), __1:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
                                if (!_ok) {
                                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L596"
                                    return {
                                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>; var _2 : stdgo.Slice<stdgo.GoString>; var _3 : stdgo.Slice<stdgo.GoString>; var _4 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>), _2 : (null : stdgo.Slice<stdgo.GoString>), _3 : (null : stdgo.Slice<stdgo.GoString>), _4 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: failed to parse rfc822Name constraint %q" : stdgo.GoString), new stdgo.AnyInterface(_constraint, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))) };
                                        _dnsNames = __tmp__._0;
                                        _ips = __tmp__._1;
                                        _emails = __tmp__._2;
                                        _uriDomains = __tmp__._3;
                                        _err = __tmp__._4;
                                        __tmp__;
                                    };
                                };
                            };
                        };
                        _emails = (_emails.__append__(_constraint?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                    } else if (__value__ == (_uriTag)) {
                        var _domain = @:assignType ((_value : stdgo.GoString)?.__copy__() : stdgo.GoString);
                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L603"
                        {
                            var _err = @:assignType (stdgo._internal.crypto.x509.X509__isia5string._isIA5String(_domain?.__copy__()) : stdgo.Error);
                            if (_err != null) {
                                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L604"
                                return {
                                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>; var _2 : stdgo.Slice<stdgo.GoString>; var _3 : stdgo.Slice<stdgo.GoString>; var _4 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>), _2 : (null : stdgo.Slice<stdgo.GoString>), _3 : (null : stdgo.Slice<stdgo.GoString>), _4 : stdgo._internal.errors.Errors_new_.new_((("x509: invalid constraint value: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__()) };
                                    _dnsNames = __tmp__._0;
                                    _ips = __tmp__._1;
                                    _emails = __tmp__._2;
                                    _uriDomains = __tmp__._3;
                                    _err = __tmp__._4;
                                    __tmp__;
                                };
                            };
                        };
                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L607"
                        if (stdgo._internal.net.Net_parseip.parseIP(_domain?.__copy__()) != null) {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L608"
                            return {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>; var _2 : stdgo.Slice<stdgo.GoString>; var _3 : stdgo.Slice<stdgo.GoString>; var _4 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>), _2 : (null : stdgo.Slice<stdgo.GoString>), _3 : (null : stdgo.Slice<stdgo.GoString>), _4 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: failed to parse URI constraint %q: cannot be IP address" : stdgo.GoString), new stdgo.AnyInterface(_domain, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))) };
                                _dnsNames = __tmp__._0;
                                _ips = __tmp__._1;
                                _emails = __tmp__._2;
                                _uriDomains = __tmp__._3;
                                _err = __tmp__._4;
                                __tmp__;
                            };
                        };
                        var _trimmedDomain = @:assignType (_domain?.__copy__() : stdgo.GoString);
                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L612"
                        if ((((_trimmedDomain.length) > (0 : stdgo.GoInt) : Bool) && (_trimmedDomain[(0 : stdgo.GoInt)] == (46 : stdgo.GoUInt8)) : Bool)) {
                            _trimmedDomain = (_trimmedDomain.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        };
                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L619"
                        {
                            var __tmp__ = stdgo._internal.crypto.x509.X509__domaintoreverselabels._domainToReverseLabels(_trimmedDomain?.__copy__()), __1:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
                            if (!_ok) {
                                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L620"
                                return {
                                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>; var _2 : stdgo.Slice<stdgo.GoString>; var _3 : stdgo.Slice<stdgo.GoString>; var _4 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>), _2 : (null : stdgo.Slice<stdgo.GoString>), _3 : (null : stdgo.Slice<stdgo.GoString>), _4 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: failed to parse URI constraint %q" : stdgo.GoString), new stdgo.AnyInterface(_domain, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))) };
                                    _dnsNames = __tmp__._0;
                                    _ips = __tmp__._1;
                                    _emails = __tmp__._2;
                                    _uriDomains = __tmp__._3;
                                    _err = __tmp__._4;
                                    __tmp__;
                                };
                            };
                        };
                        _uriDomains = (_uriDomains.__append__(_domain?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                    } else {
                        _unhandled = true;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L629"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>; var _2 : stdgo.Slice<stdgo.GoString>; var _3 : stdgo.Slice<stdgo.GoString>; var _4 : stdgo.Error; } = { _0 : _dnsNames, _1 : _ips, _2 : _emails, _3 : _uriDomains, _4 : (null : stdgo.Error) };
                _dnsNames = __tmp__._0;
                _ips = __tmp__._1;
                _emails = __tmp__._2;
                _uriDomains = __tmp__._3;
                _err = __tmp__._4;
                __tmp__;
            };
        } : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ -> { var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>; var _2 : stdgo.Slice<stdgo.GoString>; var _3 : stdgo.Slice<stdgo.GoString>; var _4 : stdgo.Error; });
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L632"
        {
            {
                var __tmp__ = _getValues(_permitted);
                (@:checkr _out ?? throw stdgo.Error._nullPointerDereference.__underlying__()).permittedDNSDomains = @:tmpset0 __tmp__._0;
                (@:checkr _out ?? throw stdgo.Error._nullPointerDereference.__underlying__()).permittedIPRanges = @:tmpset0 __tmp__._1;
                (@:checkr _out ?? throw stdgo.Error._nullPointerDereference.__underlying__()).permittedEmailAddresses = @:tmpset0 __tmp__._2;
                (@:checkr _out ?? throw stdgo.Error._nullPointerDereference.__underlying__()).permittedURIDomains = @:tmpset0 __tmp__._3;
                _err = @:tmpset0 __tmp__._4;
            };
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L633"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err };
                    _unhandled = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L635"
        {
            {
                var __tmp__ = _getValues(_excluded);
                (@:checkr _out ?? throw stdgo.Error._nullPointerDereference.__underlying__()).excludedDNSDomains = @:tmpset0 __tmp__._0;
                (@:checkr _out ?? throw stdgo.Error._nullPointerDereference.__underlying__()).excludedIPRanges = @:tmpset0 __tmp__._1;
                (@:checkr _out ?? throw stdgo.Error._nullPointerDereference.__underlying__()).excludedEmailAddresses = @:tmpset0 __tmp__._2;
                (@:checkr _out ?? throw stdgo.Error._nullPointerDereference.__underlying__()).excludedURIDomains = @:tmpset0 __tmp__._3;
                _err = @:tmpset0 __tmp__._4;
            };
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L636"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err };
                    _unhandled = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        (@:checkr _out ?? throw stdgo.Error._nullPointerDereference.__underlying__()).permittedDNSDomainsCritical = _e.critical;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L640"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : _unhandled, _1 : (null : stdgo.Error) };
            _unhandled = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }

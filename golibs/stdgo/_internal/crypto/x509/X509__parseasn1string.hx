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
function _parseASN1String(_tag:_internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag, _value:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L60"
        {
            final __value__ = _tag;
            if (__value__ == ((20 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L62"
                return { _0 : (_value : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
            } else if (__value__ == ((19 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L64"
                if (_value != null) for (__1 => _b in _value) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L65"
                    if (!stdgo._internal.crypto.x509.X509__isprintable._isPrintable(_b)) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L66"
                        return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("invalid PrintableString" : stdgo.GoString)) };
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L69"
                return { _0 : (_value : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
            } else if (__value__ == ((12 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L71"
                if (!stdgo._internal.unicode.utf8.Utf8_valid.valid(_value)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L72"
                    return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("invalid UTF-8 string" : stdgo.GoString)) };
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L74"
                return { _0 : (_value : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
            } else if (__value__ == ((30 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L76"
                if (((_value.length) % (2 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L77"
                    return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("invalid BMPString" : stdgo.GoString)) };
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L81"
                {
                    var _l = @:assignType (_value.length : stdgo.GoInt);
                    if ((((_l >= (2 : stdgo.GoInt) : Bool) && _value[(_l - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((0 : stdgo.GoUInt8)) : Bool) && (_value[(_l - (2 : stdgo.GoInt) : stdgo.GoInt)] == (0 : stdgo.GoUInt8)) : Bool)) {
                        _value = (_value.__slice__(0, (_l - (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    };
                };
                var _s = (new stdgo.Slice<stdgo.GoUInt16>((0 : stdgo.GoInt).toBasic(), ((_value.length) / (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt16>);
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L86"
                while (((_value.length) > (0 : stdgo.GoInt) : Bool)) {
                    _s = (_s.__append__((((_value[(0 : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) + (_value[(1 : stdgo.GoInt)] : stdgo.GoUInt16) : stdgo.GoUInt16)) : stdgo.Slice<stdgo.GoUInt16>);
                    _value = (_value.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L91"
                return { _0 : (stdgo._internal.unicode.utf16.Utf16_decode.decode(_s) : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
            } else if (__value__ == ((22 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
                var _s = @:assignType ((_value : stdgo.GoString)?.__copy__() : stdgo.GoString);
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L94"
                if (stdgo._internal.crypto.x509.X509__isia5string._isIA5String(_s?.__copy__()) != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L95"
                    return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("invalid IA5String" : stdgo.GoString)) };
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L97"
                return { _0 : _s?.__copy__(), _1 : (null : stdgo.Error) };
            } else if (__value__ == ((18 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L99"
                if (_value != null) for (__1 => _b in _value) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L100"
                    if (!(((((48 : stdgo.GoUInt8) <= _b : Bool) && (_b <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_b == (32 : stdgo.GoUInt8)) : Bool))) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L101"
                        return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("invalid NumericString" : stdgo.GoString)) };
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L104"
                return { _0 : (_value : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L106"
        return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("unsupported string type: %v" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_tag, _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotasn1dotasn1_tagdottag.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotasn1dotAsn1_tagdotTag), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotasn1dotasn1_tagdottag.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotasn1dotAsn1_tagdotTag))) };
    }

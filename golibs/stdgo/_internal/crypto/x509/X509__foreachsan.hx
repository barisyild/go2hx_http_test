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
function _forEachSAN(_der:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_, _callback:(stdgo.GoInt, stdgo.Slice<stdgo.GoUInt8>) -> stdgo.Error):stdgo.Error {
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L356"
        if (!_der.readASN1((stdgo.Go.setRef(_der, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L357"
            return stdgo._internal.errors.Errors_new_.new_(("x509: invalid subject alternative names" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L359"
        while (!_der.empty()) {
            var _san:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
            var _tag:_internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag = ((0 : stdgo.GoUInt8) : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag), _tag__pointer__ = stdgo.Go.pointer(_tag);
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L362"
            if (!_der.readAnyASN1((stdgo.Go.setRef(_san, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), _tag__pointer__)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L363"
                return stdgo._internal.errors.Errors_new_.new_(("x509: invalid subject alternative name" : stdgo.GoString));
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L365"
            {
                var _err = @:assignType (_callback(((_tag ^ (128 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag) : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag) : stdgo.GoInt), _san) : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L366"
                    return _err;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L370"
        return (null : stdgo.Error);
    }

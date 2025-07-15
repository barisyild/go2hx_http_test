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
function _parseBasicConstraintsExtension(_der:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_):{ var _0 : Bool; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        var _isCA:Bool = false, _isCA__pointer__ = stdgo.Go.pointer(_isCA);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L336"
        if (!_der.readASN1((stdgo.Go.setRef(_der, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L337"
            return { _0 : false, _1 : (0 : stdgo.GoInt), _2 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid basic constraints" : stdgo.GoString)) };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L339"
        if (_der.peekASN1Tag((1 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L340"
            if (!_der.readASN1Boolean(_isCA__pointer__)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L341"
                return { _0 : false, _1 : (0 : stdgo.GoInt), _2 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid basic constraints" : stdgo.GoString)) };
            };
        };
        var _maxPathLen = @:assignType (-1 : stdgo.GoInt);
        var _maxPathLen__pointer__ = stdgo.Go.pointer(_maxPathLen);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L345"
        if (_der.peekASN1Tag((2 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L346"
            if (!_der.readASN1Integer(new stdgo.AnyInterface(_maxPathLen__pointer__, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L347"
                return { _0 : false, _1 : (0 : stdgo.GoInt), _2 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid basic constraints" : stdgo.GoString)) };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L352"
        return { _0 : _isCA, _1 : _maxPathLen, _2 : (null : stdgo.Error) };
    }

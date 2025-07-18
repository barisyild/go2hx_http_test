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
function _matchHostnames(_pattern:stdgo.GoString, _host:stdgo.GoString):Bool {
        _pattern = stdgo._internal.crypto.x509.X509__tolowercaseascii._toLowerCaseASCII(_pattern?.__copy__())?.__copy__();
        _host = stdgo._internal.crypto.x509.X509__tolowercaseascii._toLowerCaseASCII(stdgo._internal.strings.Strings_trimsuffix.trimSuffix(_host?.__copy__(), ("." : stdgo.GoString))?.__copy__())?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L1020"
        if (((_pattern.length == (0 : stdgo.GoInt)) || (_host.length == (0 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L1021"
            return false;
        };
        var _patternParts = stdgo._internal.strings.Strings_split.split(_pattern?.__copy__(), ("." : stdgo.GoString));
        var _hostParts = stdgo._internal.strings.Strings_split.split(_host?.__copy__(), ("." : stdgo.GoString));
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L1027"
        if ((_patternParts.length) != ((_hostParts.length))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L1028"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L1031"
        if (_patternParts != null) for (_i => _patternPart in _patternParts) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L1032"
            if (((_i == (0 : stdgo.GoInt)) && (_patternPart == ("*" : stdgo.GoString)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L1033"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L1035"
            if (_patternPart != (_hostParts[(_i : stdgo.GoInt)])) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L1036"
                return false;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L1040"
        return true;
    }

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
function _validHostname(_host:stdgo.GoString, _isPattern:Bool):Bool {
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L966"
        if (!_isPattern) {
            _host = stdgo._internal.strings.Strings_trimsuffix.trimSuffix(_host?.__copy__(), ("." : stdgo.GoString))?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L969"
        if ((_host.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L970"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L973"
        if (stdgo._internal.strings.Strings_split.split(_host?.__copy__(), ("." : stdgo.GoString)) != null) for (_i => _part in stdgo._internal.strings.Strings_split.split(_host?.__copy__(), ("." : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L974"
            if (_part == ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L976"
                return false;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L978"
            if (((_isPattern && _i == ((0 : stdgo.GoInt)) : Bool) && (_part == ("*" : stdgo.GoString)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L982"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L984"
            if (_part != null) for (_j => _c in _part) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L985"
                if ((((97 : stdgo.GoInt32) <= _c : Bool) && (_c <= (122 : stdgo.GoInt32) : Bool) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L986"
                    continue;
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L988"
                if ((((48 : stdgo.GoInt32) <= _c : Bool) && (_c <= (57 : stdgo.GoInt32) : Bool) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L989"
                    continue;
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L991"
                if ((((65 : stdgo.GoInt32) <= _c : Bool) && (_c <= (90 : stdgo.GoInt32) : Bool) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L992"
                    continue;
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L994"
                if (((_c == (45 : stdgo.GoInt32)) && (_j != (0 : stdgo.GoInt)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L995"
                    continue;
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L997"
                if (_c == ((95 : stdgo.GoInt32))) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L1000"
                    continue;
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L1002"
                return false;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L1006"
        return true;
    }

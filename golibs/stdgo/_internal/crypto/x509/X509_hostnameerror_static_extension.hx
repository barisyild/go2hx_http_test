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
@:keep @:allow(stdgo._internal.crypto.x509.X509.HostnameError_asInterface) class HostnameError_static_extension {
    @:keep
    @:tdfield
    static public function error( _h:stdgo._internal.crypto.x509.X509_hostnameerror.HostnameError):stdgo.GoString {
        @:recv var _h:stdgo._internal.crypto.x509.X509_hostnameerror.HostnameError = _h?.__copy__();
        var _c = _h.certificate;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L103"
        if ((!_c._hasSANExtension() && stdgo._internal.crypto.x509.X509__matchhostnames._matchHostnames((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).subject.commonName?.__copy__(), _h.host?.__copy__()) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L104"
            return ("x509: certificate relies on legacy Common Name field, use SANs instead" : stdgo.GoString);
        };
        var _valid:stdgo.GoString = ("" : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L108"
        {
            var _ip = @:assignType (stdgo._internal.net.Net_parseip.parseIP(_h.host?.__copy__()) : stdgo._internal.net.Net_ip.IP);
            if (_ip != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L110"
                if (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iPAddresses.length) == ((0 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L111"
                    return ((("x509: cannot validate certificate for " : stdgo.GoString) + _h.host?.__copy__() : stdgo.GoString) + (" because it doesn\'t contain any IP SANs" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L113"
                if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iPAddresses != null) for (__1 => _san in (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iPAddresses) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L114"
                    if (((_valid.length) > (0 : stdgo.GoInt) : Bool)) {
                        _valid = (_valid + ((", " : stdgo.GoString))?.__copy__() : stdgo.GoString);
                    };
                    _valid = (_valid + ((_san.string() : stdgo.GoString))?.__copy__() : stdgo.GoString);
                };
            } else {
                _valid = stdgo._internal.strings.Strings_join.join((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dNSNames, (", " : stdgo.GoString))?.__copy__();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L123"
        if ((_valid.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L124"
            return (("x509: certificate is not valid for any names, but wanted to match " : stdgo.GoString) + _h.host?.__copy__() : stdgo.GoString)?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L126"
        return (((("x509: certificate is valid for " : stdgo.GoString) + _valid?.__copy__() : stdgo.GoString) + (", not " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _h.host?.__copy__() : stdgo.GoString)?.__copy__();
    }
}

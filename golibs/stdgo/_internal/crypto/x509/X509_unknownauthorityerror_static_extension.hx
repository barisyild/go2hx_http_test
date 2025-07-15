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
@:keep @:allow(stdgo._internal.crypto.x509.X509.UnknownAuthorityError_asInterface) class UnknownAuthorityError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.crypto.x509.X509_unknownauthorityerror.UnknownAuthorityError):stdgo.GoString {
        @:recv var _e:stdgo._internal.crypto.x509.X509_unknownauthorityerror.UnknownAuthorityError = _e?.__copy__();
        var _s = @:assignType (("x509: certificate signed by unknown authority" : stdgo.GoString) : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L142"
        if (_e._hintErr != null) {
            var _certName = @:assignType ((@:checkr _e._hintCert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).subject.commonName?.__copy__() : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L144"
            if ((_certName.length) == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L145"
                if ((((@:checkr _e._hintCert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).subject.organization.length) > (0 : stdgo.GoInt) : Bool)) {
                    _certName = (@:checkr _e._hintCert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).subject.organization[(0 : stdgo.GoInt)]?.__copy__();
                } else {
                    _certName = (("serial:" : stdgo.GoString) + ((@:checkr _e._hintCert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).serialNumber.string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                };
            };
            _s = (_s + (stdgo._internal.fmt.Fmt_sprintf.sprintf(((" (possibly because of %q while trying to verify candidate authority certificate %q)" : stdgo.GoString) : stdgo.GoString), ({
                final __t__ = _e._hintErr;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), new stdgo.AnyInterface(_certName, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))))?.__copy__() : stdgo.GoString);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L153"
        return _s?.__copy__();
    }
}

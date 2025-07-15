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
@:structInit @:using(stdgo._internal.crypto.x509.X509_certificateinvaliderror_static_extension.CertificateInvalidError_static_extension) @:using(stdgo._internal.crypto.x509.X509_certificateinvaliderror_static_extension.CertificateInvalidError_static_extension) class CertificateInvalidError {
    public var cert : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
    public var reason : stdgo._internal.crypto.x509.X509_invalidreason.InvalidReason = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_invalidreason.InvalidReason);
    public var detail : stdgo.GoString = "";
    public function new(?cert:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>, ?reason:stdgo._internal.crypto.x509.X509_invalidreason.InvalidReason, ?detail:stdgo.GoString) {
        if (cert != null) this.cert = cert;
        if (reason != null) this.reason = reason;
        if (detail != null) this.detail = detail;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "cert", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_certificatedotcertificate.__type__stdgodot_internaldotcryptodotx509dotX509_certificatedotCertificate }) }, optional : false }, { name : "reason", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_invalidreasondotinvalidreason.__type__stdgodot_internaldotcryptodotx509dotX509_invalidreasondotInvalidReason }, optional : false }, { name : "detail", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }])));
    public function __copy__() {
        return new CertificateInvalidError(cert, reason, detail);
    }
}

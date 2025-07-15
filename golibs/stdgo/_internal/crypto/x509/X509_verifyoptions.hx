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
@:structInit @:using(stdgo._internal.crypto.x509.X509_verifyoptions_static_extension.VerifyOptions_static_extension) @:using(stdgo._internal.crypto.x509.X509_verifyoptions_static_extension.VerifyOptions_static_extension) class VerifyOptions {
    public var dNSName : stdgo.GoString = "";
    public var intermediates : stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool>);
    public var roots : stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool>);
    public var currentTime : stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
    public var keyUsages : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
    public var maxConstraintComparisions : stdgo.GoInt = 0;
    public function new(?dNSName:stdgo.GoString, ?intermediates:stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool>, ?roots:stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool>, ?currentTime:stdgo._internal.time.Time_time.Time, ?keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>, ?maxConstraintComparisions:stdgo.GoInt) {
        if (dNSName != null) this.dNSName = dNSName;
        if (intermediates != null) this.intermediates = intermediates;
        if (roots != null) this.roots = roots;
        if (currentTime != null) this.currentTime = currentTime;
        if (keyUsages != null) this.keyUsages = keyUsages;
        if (maxConstraintComparisions != null) this.maxConstraintComparisions = maxConstraintComparisions;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "dNSName", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "intermediates", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_certpooldotcertpool.__type__stdgodot_internaldotcryptodotx509dotX509_certpooldotCertPool }) }, optional : false }, { name : "roots", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_certpooldotcertpool.__type__stdgodot_internaldotcryptodotx509dotX509_certpooldotCertPool }) }, optional : false }, { name : "currentTime", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_timedottime.__type__stdgodot_internaldottimedotTime_timedotTime }, optional : false }, { name : "keyUsages", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_extkeyusagedotextkeyusage.__type__stdgodot_internaldotcryptodotx509dotX509_extkeyusagedotExtKeyUsage }) }, optional : false }, { name : "maxConstraintComparisions", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new VerifyOptions(dNSName, intermediates, roots, currentTime, keyUsages, maxConstraintComparisions);
    }
}

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
@:structInit @:using(stdgo._internal.crypto.x509.X509_t_tbscertificaterequest_static_extension.T_tbsCertificateRequest_static_extension) @:using(stdgo._internal.crypto.x509.X509_t_tbscertificaterequest_static_extension.T_tbsCertificateRequest_static_extension) class T_tbsCertificateRequest {
    public var raw : stdgo._internal.encoding.asn1.Asn1_rawcontent.RawContent = (new stdgo._internal.encoding.asn1.Asn1_rawcontent.RawContent(0, 0) : stdgo._internal.encoding.asn1.Asn1_rawcontent.RawContent);
    public var version : stdgo.GoInt = 0;
    public var subject : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue = ({} : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue);
    public var publicKey : stdgo._internal.crypto.x509.X509_t_publickeyinfo.T_publicKeyInfo = ({} : stdgo._internal.crypto.x509.X509_t_publickeyinfo.T_publicKeyInfo);
    @:tag("`asn1:\"tag:0\"`")
    public var rawAttributes : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue> = (null : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue>);
    public function new(?raw:stdgo._internal.encoding.asn1.Asn1_rawcontent.RawContent, ?version:stdgo.GoInt, ?subject:stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue, ?publicKey:stdgo._internal.crypto.x509.X509_t_publickeyinfo.T_publicKeyInfo, ?rawAttributes:stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue>) {
        if (raw != null) this.raw = raw;
        if (version != null) this.version = version;
        if (subject != null) this.subject = subject;
        if (publicKey != null) this.publicKey = publicKey;
        if (rawAttributes != null) this.rawAttributes = rawAttributes;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "raw", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_rawcontentdotrawcontent.__type__stdgodot_internaldotencodingdotasn1dotAsn1_rawcontentdotRawContent }, optional : false }, { name : "version", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "subject", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_rawvaluedotrawvalue.__type__stdgodot_internaldotencodingdotasn1dotAsn1_rawvaluedotRawValue }, optional : false }, { name : "publicKey", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_publickeyinfodott_publickeyinfo.__type__stdgodot_internaldotcryptodotx509dotX509_t_publickeyinfodotT_publicKeyInfo }, optional : false }, { name : "rawAttributes", embedded : false, tag : "`asn1:\"tag:0\"`", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_rawvaluedotrawvalue.__type__stdgodot_internaldotencodingdotasn1dotAsn1_rawvaluedotRawValue }) }, optional : false }])));
    public function __copy__() {
        return new T_tbsCertificateRequest(raw, version, subject, publicKey, rawAttributes);
    }
}

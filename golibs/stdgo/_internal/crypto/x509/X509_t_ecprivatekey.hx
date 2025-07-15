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
@:structInit @:using(stdgo._internal.crypto.x509.X509_t_ecprivatekey_static_extension.T_ecPrivateKey_static_extension) @:using(stdgo._internal.crypto.x509.X509_t_ecprivatekey_static_extension.T_ecPrivateKey_static_extension) class T_ecPrivateKey {
    public var version : stdgo.GoInt = 0;
    public var privateKey : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    @:tag("`asn1:\"optional,explicit,tag:0\"`")
    public var namedCurveOID : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier = (new stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier(0, 0) : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier);
    @:tag("`asn1:\"optional,explicit,tag:1\"`")
    public var publicKey : stdgo._internal.encoding.asn1.Asn1_bitstring.BitString = ({} : stdgo._internal.encoding.asn1.Asn1_bitstring.BitString);
    public function new(?version:stdgo.GoInt, ?privateKey:stdgo.Slice<stdgo.GoUInt8>, ?namedCurveOID:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier, ?publicKey:stdgo._internal.encoding.asn1.Asn1_bitstring.BitString) {
        if (version != null) this.version = version;
        if (privateKey != null) this.privateKey = privateKey;
        if (namedCurveOID != null) this.namedCurveOID = namedCurveOID;
        if (publicKey != null) this.publicKey = publicKey;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "version", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "privateKey", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }, { name : "namedCurveOID", embedded : false, tag : "`asn1:\"optional,explicit,tag:0\"`", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_objectidentifierdotobjectidentifier.__type__stdgodot_internaldotencodingdotasn1dotAsn1_objectidentifierdotObjectIdentifier }, optional : false }, { name : "publicKey", embedded : false, tag : "`asn1:\"optional,explicit,tag:1\"`", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_bitstringdotbitstring.__type__stdgodot_internaldotencodingdotasn1dotAsn1_bitstringdotBitString }, optional : false }])));
    public function __copy__() {
        return new T_ecPrivateKey(version, privateKey, namedCurveOID, publicKey);
    }
}

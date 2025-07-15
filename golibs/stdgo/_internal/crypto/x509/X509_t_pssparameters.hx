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
@:structInit @:using(stdgo._internal.crypto.x509.X509_t_pssparameters_static_extension.T_pssParameters_static_extension) @:using(stdgo._internal.crypto.x509.X509_t_pssparameters_static_extension.T_pssParameters_static_extension) class T_pssParameters {
    @:tag("`asn1:\"explicit,tag:0\"`")
    public var hash : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier = ({} : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier);
    @:tag("`asn1:\"explicit,tag:1\"`")
    public var mGF : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier = ({} : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier);
    @:tag("`asn1:\"explicit,tag:2\"`")
    public var saltLength : stdgo.GoInt = 0;
    @:tag("`asn1:\"optional,explicit,tag:3,default:1\"`")
    public var trailerField : stdgo.GoInt = 0;
    public function new(?hash:stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier, ?mGF:stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier, ?saltLength:stdgo.GoInt, ?trailerField:stdgo.GoInt) {
        if (hash != null) this.hash = hash;
        if (mGF != null) this.mGF = mGF;
        if (saltLength != null) this.saltLength = saltLength;
        if (trailerField != null) this.trailerField = trailerField;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "hash", embedded : false, tag : "`asn1:\"explicit,tag:0\"`", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotpkixdotpkix_algorithmidentifierdotalgorithmidentifier.__type__stdgodot_internaldotcryptodotx509dotpkixdotPkix_algorithmidentifierdotAlgorithmIdentifier }, optional : false }, { name : "mGF", embedded : false, tag : "`asn1:\"explicit,tag:1\"`", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotpkixdotpkix_algorithmidentifierdotalgorithmidentifier.__type__stdgodot_internaldotcryptodotx509dotpkixdotPkix_algorithmidentifierdotAlgorithmIdentifier }, optional : false }, { name : "saltLength", embedded : false, tag : "`asn1:\"explicit,tag:2\"`", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "trailerField", embedded : false, tag : "`asn1:\"optional,explicit,tag:3,default:1\"`", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new T_pssParameters(hash, mGF, saltLength, trailerField);
    }
}

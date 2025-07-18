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
@:structInit @:using(stdgo._internal.crypto.x509.X509_t_pkcs1privatekey_static_extension.T_pkcs1PrivateKey_static_extension) @:using(stdgo._internal.crypto.x509.X509_t_pkcs1privatekey_static_extension.T_pkcs1PrivateKey_static_extension) class T_pkcs1PrivateKey {
    public var version : stdgo.GoInt = 0;
    public var n : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
    public var e : stdgo.GoInt = 0;
    public var d : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
    public var p : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
    public var q : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
    @:tag("`asn1:\"optional\"`")
    public var dp : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
    @:tag("`asn1:\"optional\"`")
    public var dq : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
    @:tag("`asn1:\"optional\"`")
    public var qinv : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
    @:tag("`asn1:\"optional,omitempty\"`")
    public var additionalPrimes : stdgo.Slice<stdgo._internal.crypto.x509.X509_t_pkcs1additionalrsaprime.T_pkcs1AdditionalRSAPrime> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_t_pkcs1additionalrsaprime.T_pkcs1AdditionalRSAPrime>);
    public function new(?version:stdgo.GoInt, ?n:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, ?e:stdgo.GoInt, ?d:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, ?p:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, ?q:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, ?dp:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, ?dq:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, ?qinv:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, ?additionalPrimes:stdgo.Slice<stdgo._internal.crypto.x509.X509_t_pkcs1additionalrsaprime.T_pkcs1AdditionalRSAPrime>) {
        if (version != null) this.version = version;
        if (n != null) this.n = n;
        if (e != null) this.e = e;
        if (d != null) this.d = d;
        if (p != null) this.p = p;
        if (q != null) this.q = q;
        if (dp != null) this.dp = dp;
        if (dq != null) this.dq = dq;
        if (qinv != null) this.qinv = qinv;
        if (additionalPrimes != null) this.additionalPrimes = additionalPrimes;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "version", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "n", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ }) }, optional : false }, { name : "e", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "d", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ }) }, optional : false }, { name : "p", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ }) }, optional : false }, { name : "q", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ }) }, optional : false }, { name : "dp", embedded : false, tag : "`asn1:\"optional\"`", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ }) }, optional : false }, { name : "dq", embedded : false, tag : "`asn1:\"optional\"`", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ }) }, optional : false }, { name : "qinv", embedded : false, tag : "`asn1:\"optional\"`", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ }) }, optional : false }, { name : "additionalPrimes", embedded : false, tag : "`asn1:\"optional,omitempty\"`", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_pkcs1additionalrsaprimedott_pkcs1additionalrsaprime.__type__stdgodot_internaldotcryptodotx509dotX509_t_pkcs1additionalrsaprimedotT_pkcs1AdditionalRSAPrime }) }, optional : false }])));
    public function __copy__() {
        return new T_pkcs1PrivateKey(version, n, e, d, p, q, dp, dq, qinv, additionalPrimes);
    }
}

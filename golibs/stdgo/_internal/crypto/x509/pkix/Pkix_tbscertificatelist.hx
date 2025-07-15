package stdgo._internal.crypto.x509.pkix;
import stdgo._internal.encoding.asn1.Asn1;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(stdgo._internal.crypto.x509.pkix.Pkix_tbscertificatelist_static_extension.TBSCertificateList_static_extension) @:using(stdgo._internal.crypto.x509.pkix.Pkix_tbscertificatelist_static_extension.TBSCertificateList_static_extension) class TBSCertificateList {
    public var raw : stdgo._internal.encoding.asn1.Asn1_rawcontent.RawContent = (new stdgo._internal.encoding.asn1.Asn1_rawcontent.RawContent(0, 0) : stdgo._internal.encoding.asn1.Asn1_rawcontent.RawContent);
    @:tag("`asn1:\"optional,default:0\"`")
    public var version : stdgo.GoInt = 0;
    public var signature : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier = ({} : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier);
    public var issuer : stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence = (new stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence(0, 0) : stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence);
    public var thisUpdate : stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
    @:tag("`asn1:\"optional\"`")
    public var nextUpdate : stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
    @:tag("`asn1:\"optional\"`")
    public var revokedCertificates : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate.RevokedCertificate> = (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate.RevokedCertificate>);
    @:tag("`asn1:\"tag:0,optional,explicit\"`")
    public var extensions : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension> = (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>);
    public function new(?raw:stdgo._internal.encoding.asn1.Asn1_rawcontent.RawContent, ?version:stdgo.GoInt, ?signature:stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier, ?issuer:stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence, ?thisUpdate:stdgo._internal.time.Time_time.Time, ?nextUpdate:stdgo._internal.time.Time_time.Time, ?revokedCertificates:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate.RevokedCertificate>, ?extensions:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>) {
        if (raw != null) this.raw = raw;
        if (version != null) this.version = version;
        if (signature != null) this.signature = signature;
        if (issuer != null) this.issuer = issuer;
        if (thisUpdate != null) this.thisUpdate = thisUpdate;
        if (nextUpdate != null) this.nextUpdate = nextUpdate;
        if (revokedCertificates != null) this.revokedCertificates = revokedCertificates;
        if (extensions != null) this.extensions = extensions;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "raw", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_rawcontentdotrawcontent.__type__stdgodot_internaldotencodingdotasn1dotAsn1_rawcontentdotRawContent }, optional : false }, { name : "version", embedded : false, tag : "`asn1:\"optional,default:0\"`", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "signature", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotpkixdotpkix_algorithmidentifierdotalgorithmidentifier.__type__stdgodot_internaldotcryptodotx509dotpkixdotPkix_algorithmidentifierdotAlgorithmIdentifier }, optional : false }, { name : "issuer", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotpkixdotpkix_rdnsequencedotrdnsequence.__type__stdgodot_internaldotcryptodotx509dotpkixdotPkix_rdnsequencedotRDNSequence }, optional : false }, { name : "thisUpdate", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_timedottime.__type__stdgodot_internaldottimedotTime_timedotTime }, optional : false }, { name : "nextUpdate", embedded : false, tag : "`asn1:\"optional\"`", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_timedottime.__type__stdgodot_internaldottimedotTime_timedotTime }, optional : false }, { name : "revokedCertificates", embedded : false, tag : "`asn1:\"optional\"`", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotpkixdotpkix_revokedcertificatedotrevokedcertificate.__type__stdgodot_internaldotcryptodotx509dotpkixdotPkix_revokedcertificatedotRevokedCertificate }) }, optional : false }, { name : "extensions", embedded : false, tag : "`asn1:\"tag:0,optional,explicit\"`", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotpkixdotpkix_extensiondotextension.__type__stdgodot_internaldotcryptodotx509dotpkixdotPkix_extensiondotExtension }) }, optional : false }])));
    public function __copy__() {
        return new TBSCertificateList(raw, version, signature, issuer, thisUpdate, nextUpdate, revokedCertificates, extensions);
    }
}

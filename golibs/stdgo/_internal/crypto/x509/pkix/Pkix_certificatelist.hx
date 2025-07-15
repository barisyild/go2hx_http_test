package stdgo._internal.crypto.x509.pkix;
import stdgo._internal.encoding.asn1.Asn1;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(stdgo._internal.crypto.x509.pkix.Pkix_certificatelist_static_extension.CertificateList_static_extension) @:using(stdgo._internal.crypto.x509.pkix.Pkix_certificatelist_static_extension.CertificateList_static_extension) class CertificateList {
    public var tBSCertList : stdgo._internal.crypto.x509.pkix.Pkix_tbscertificatelist.TBSCertificateList = ({} : stdgo._internal.crypto.x509.pkix.Pkix_tbscertificatelist.TBSCertificateList);
    public var signatureAlgorithm : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier = ({} : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier);
    public var signatureValue : stdgo._internal.encoding.asn1.Asn1_bitstring.BitString = ({} : stdgo._internal.encoding.asn1.Asn1_bitstring.BitString);
    public function new(?tBSCertList:stdgo._internal.crypto.x509.pkix.Pkix_tbscertificatelist.TBSCertificateList, ?signatureAlgorithm:stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier, ?signatureValue:stdgo._internal.encoding.asn1.Asn1_bitstring.BitString) {
        if (tBSCertList != null) this.tBSCertList = tBSCertList;
        if (signatureAlgorithm != null) this.signatureAlgorithm = signatureAlgorithm;
        if (signatureValue != null) this.signatureValue = signatureValue;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "tBSCertList", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotpkixdotpkix_tbscertificatelistdottbscertificatelist.__type__stdgodot_internaldotcryptodotx509dotpkixdotPkix_tbscertificatelistdotTBSCertificateList }, optional : false }, { name : "signatureAlgorithm", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotpkixdotpkix_algorithmidentifierdotalgorithmidentifier.__type__stdgodot_internaldotcryptodotx509dotpkixdotPkix_algorithmidentifierdotAlgorithmIdentifier }, optional : false }, { name : "signatureValue", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_bitstringdotbitstring.__type__stdgodot_internaldotencodingdotasn1dotAsn1_bitstringdotBitString }, optional : false }])));
    public function __copy__() {
        return new CertificateList(tBSCertList, signatureAlgorithm, signatureValue);
    }
}

package stdgo._internal.crypto.x509.pkix;
import stdgo._internal.encoding.asn1.Asn1;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier_static_extension.AlgorithmIdentifier_static_extension) @:using(stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier_static_extension.AlgorithmIdentifier_static_extension) class AlgorithmIdentifier {
    public var algorithm : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier = (new stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier(0, 0) : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier);
    @:tag("`asn1:\"optional\"`")
    public var parameters : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue = ({} : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue);
    public function new(?algorithm:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier, ?parameters:stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue) {
        if (algorithm != null) this.algorithm = algorithm;
        if (parameters != null) this.parameters = parameters;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "algorithm", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_objectidentifierdotobjectidentifier.__type__stdgodot_internaldotencodingdotasn1dotAsn1_objectidentifierdotObjectIdentifier }, optional : false }, { name : "parameters", embedded : false, tag : "`asn1:\"optional\"`", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_rawvaluedotrawvalue.__type__stdgodot_internaldotencodingdotasn1dotAsn1_rawvaluedotRawValue }, optional : false }])));
    public function __copy__() {
        return new AlgorithmIdentifier(algorithm, parameters);
    }
}

package stdgo._internal.crypto.x509.pkix;
import stdgo._internal.encoding.asn1.Asn1;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalueset_static_extension.AttributeTypeAndValueSET_static_extension) @:using(stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalueset_static_extension.AttributeTypeAndValueSET_static_extension) class AttributeTypeAndValueSET {
    public var type : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier = (new stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier(0, 0) : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier);
    @:tag("`asn1:\"set\"`")
    public var value : stdgo.Slice<stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalue.AttributeTypeAndValue>> = (null : stdgo.Slice<stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalue.AttributeTypeAndValue>>);
    public function new(?type:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier, ?value:stdgo.Slice<stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalue.AttributeTypeAndValue>>) {
        if (type != null) this.type = type;
        if (value != null) this.value = value;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "type", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_objectidentifierdotobjectidentifier.__type__stdgodot_internaldotencodingdotasn1dotAsn1_objectidentifierdotObjectIdentifier }, optional : false }, { name : "value", embedded : false, tag : "`asn1:\"set\"`", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotpkixdotpkix_attributetypeandvaluedotattributetypeandvalue.__type__stdgodot_internaldotcryptodotx509dotpkixdotPkix_attributetypeandvaluedotAttributeTypeAndValue }) }) }, optional : false }])));
    public function __copy__() {
        return new AttributeTypeAndValueSET(type, value);
    }
}

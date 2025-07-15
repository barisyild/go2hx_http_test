package stdgo._internal.encoding.asn1;
import stdgo._internal.math.big.Big;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.time.Time;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf16.Utf16;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.sort.Sort;
import stdgo._internal.bytes.Bytes;
@:structInit @:using(stdgo._internal.encoding.asn1.Asn1_t_taggedencoder_static_extension.T_taggedEncoder_static_extension) @:using(stdgo._internal.encoding.asn1.Asn1_t_taggedencoder_static_extension.T_taggedEncoder_static_extension) class T_taggedEncoder {
    public var _scratch : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(8, 8).__setNumber32__();
    public var _tag : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder = (null : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder);
    public var _body : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder = (null : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder);
    public function new(?_scratch:stdgo.GoArray<stdgo.GoUInt8>, ?_tag:stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder, ?_body:stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder) {
        if (_scratch != null) this._scratch = _scratch;
        if (_tag != null) this._tag = _tag;
        if (_body != null) this._body = _body;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_scratch", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 8) }, optional : false }, { name : "_tag", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_t_encoderdott_encoder.__type__stdgodot_internaldotencodingdotasn1dotAsn1_t_encoderdotT_encoder }, optional : false }, { name : "_body", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_t_encoderdott_encoder.__type__stdgodot_internaldotencodingdotasn1dotAsn1_t_encoderdotT_encoder }, optional : false }])));
    public function __copy__() {
        return new T_taggedEncoder(_scratch, _tag, _body);
    }
}

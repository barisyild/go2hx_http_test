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
@:keep @:allow(stdgo._internal.encoding.asn1.Asn1.T_taggedEncoder_asInterface) class T_taggedEncoder_static_extension {
    @:keep
    @:tdfield
    static public function encode( _t:stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_t_taggedencoder.T_taggedEncoder>, _dst:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_t_taggedencoder.T_taggedEncoder> = _t;
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L138"
        (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tag.encode(_dst);
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L139"
        (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._body.encode((_dst.__slice__((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tag.len()) : stdgo.Slice<stdgo.GoUInt8>));
    }
    @:keep
    @:tdfield
    static public function len( _t:stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_t_taggedencoder.T_taggedEncoder>):stdgo.GoInt {
        @:recv var _t:stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_t_taggedencoder.T_taggedEncoder> = _t;
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L134"
        return ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tag.len() + (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._body.len() : stdgo.GoInt);
    }
}

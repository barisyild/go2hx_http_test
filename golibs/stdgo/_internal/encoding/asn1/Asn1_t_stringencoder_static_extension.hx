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
@:keep @:allow(stdgo._internal.encoding.asn1.Asn1.T_stringEncoder_asInterface) class T_stringEncoder_static_extension {
    @:keep
    @:tdfield
    static public function encode( _s:stdgo._internal.encoding.asn1.Asn1_t_stringencoder.T_stringEncoder, _dst:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _s:stdgo._internal.encoding.asn1.Asn1_t_stringencoder.T_stringEncoder = _s;
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L60"
        if (_dst.__copyTo__(_s) != ((_s.length))) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L61"
            throw new stdgo.AnyInterface(("internal error" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
    }
    @:keep
    @:tdfield
    static public function len( _s:stdgo._internal.encoding.asn1.Asn1_t_stringencoder.T_stringEncoder):stdgo.GoInt {
        @:recv var _s:stdgo._internal.encoding.asn1.Asn1_t_stringencoder.T_stringEncoder = _s;
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L56"
        return (_s.length);
    }
}

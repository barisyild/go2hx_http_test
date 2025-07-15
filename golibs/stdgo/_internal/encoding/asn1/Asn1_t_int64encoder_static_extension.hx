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
@:keep @:allow(stdgo._internal.encoding.asn1.Asn1.T_int64Encoder_asInterface) class T_int64Encoder_static_extension {
    @:keep
    @:tdfield
    static public function encode( _i:stdgo._internal.encoding.asn1.Asn1_t_int64encoder.T_int64Encoder, _dst:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _i:stdgo._internal.encoding.asn1.Asn1_t_int64encoder.T_int64Encoder = _i;
        var _n = @:assignType (_i.len() : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L163"
        {
            var _j = @:assignType (0 : stdgo.GoInt);
            while ((_j < _n : Bool)) {
                _dst[(_j : stdgo.GoInt)] = ((_i >> (((((_n - (1 : stdgo.GoInt) : stdgo.GoInt) - _j : stdgo.GoInt)) * (8 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) : stdgo._internal.encoding.asn1.Asn1_t_int64encoder.T_int64Encoder) : stdgo.GoUInt8);
                _j++;
            };
        };
    }
    @:keep
    @:tdfield
    static public function len( _i:stdgo._internal.encoding.asn1.Asn1_t_int64encoder.T_int64Encoder):stdgo.GoInt {
        @:recv var _i:stdgo._internal.encoding.asn1.Asn1_t_int64encoder.T_int64Encoder = _i;
        var _n = @:assignType (1 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L147"
        while ((_i > (127i64 : stdgo._internal.encoding.asn1.Asn1_t_int64encoder.T_int64Encoder) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L148"
            _n++;
            _i = (_i >> ((8i64 : stdgo.GoUInt64)) : stdgo._internal.encoding.asn1.Asn1_t_int64encoder.T_int64Encoder);
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L152"
        while ((_i < (-128i64 : stdgo._internal.encoding.asn1.Asn1_t_int64encoder.T_int64Encoder) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L153"
            _n++;
            _i = (_i >> ((8i64 : stdgo.GoUInt64)) : stdgo._internal.encoding.asn1.Asn1_t_int64encoder.T_int64Encoder);
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L157"
        return _n;
    }
}

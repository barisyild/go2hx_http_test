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
@:keep @:allow(stdgo._internal.encoding.asn1.Asn1.BitString_asInterface) class BitString_static_extension {
    @:keep
    @:tdfield
    static public function rightAlign( _b:stdgo._internal.encoding.asn1.Asn1_bitstring.BitString):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _b:stdgo._internal.encoding.asn1.Asn1_bitstring.BitString = _b?.__copy__();
        var _shift = @:assignType (((8 : stdgo.GoInt) - ((_b.bitLength % (8 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt) : stdgo.GoUInt);
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L180"
        if (((_shift == (8u32 : stdgo.GoUInt)) || (_b.bytes.length == (0 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L181"
            return _b.bytes;
        };
        var _a = (new stdgo.Slice<stdgo.GoUInt8>((_b.bytes.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _a[(0 : stdgo.GoInt)] = (_b.bytes[(0 : stdgo.GoInt)] >> _shift : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L186"
        {
            var _i = @:assignType (1 : stdgo.GoInt);
            while ((_i < (_b.bytes.length) : Bool)) {
                _a[(_i : stdgo.GoInt)] = (_b.bytes[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] << (((8u32 : stdgo.GoUInt) - _shift : stdgo.GoUInt)) : stdgo.GoUInt8);
_a[(_i : stdgo.GoInt)] = (_a[(_i : stdgo.GoInt)] | ((_b.bytes[(_i : stdgo.GoInt)] >> _shift : stdgo.GoUInt8)) : stdgo.GoUInt8);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L191"
        return _a;
    }
    @:keep
    @:tdfield
    static public function at( _b:stdgo._internal.encoding.asn1.Asn1_bitstring.BitString, _i:stdgo.GoInt):stdgo.GoInt {
        @:recv var _b:stdgo._internal.encoding.asn1.Asn1_bitstring.BitString = _b?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L168"
        if (((_i < (0 : stdgo.GoInt) : Bool) || (_i >= _b.bitLength : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L169"
            return (0 : stdgo.GoInt);
        };
        var _x = @:assignType (_i / (8 : stdgo.GoInt) : stdgo.GoInt);
        var _y = @:assignType ((7u32 : stdgo.GoUInt) - ((_i % (8 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) : stdgo.GoUInt);
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L173"
        return (((_b.bytes[(_x : stdgo.GoInt)] >> _y : stdgo.GoUInt8) : stdgo.GoInt) & (1 : stdgo.GoInt) : stdgo.GoInt);
    }
}

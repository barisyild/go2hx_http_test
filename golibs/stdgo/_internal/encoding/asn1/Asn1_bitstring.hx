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
@:structInit @:using(stdgo._internal.encoding.asn1.Asn1_bitstring_static_extension.BitString_static_extension) @:using(stdgo._internal.encoding.asn1.Asn1_bitstring_static_extension.BitString_static_extension) class BitString {
    public var bytes : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var bitLength : stdgo.GoInt = 0;
    public function new(?bytes:stdgo.Slice<stdgo.GoUInt8>, ?bitLength:stdgo.GoInt) {
        if (bytes != null) this.bytes = bytes;
        if (bitLength != null) this.bitLength = bitLength;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "bytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }, { name : "bitLength", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new BitString(bytes, bitLength);
    }
}

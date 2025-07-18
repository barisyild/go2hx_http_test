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
@:keep @:allow(stdgo._internal.encoding.asn1.Asn1.T_setEncoder_asInterface) class T_setEncoder_static_extension {
    @:keep
    @:tdfield
    static public function encode( _s:stdgo._internal.encoding.asn1.Asn1_t_setencoder.T_setEncoder, _dst:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _s:stdgo._internal.encoding.asn1.Asn1_t_setencoder.T_setEncoder = _s;
        var _l = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>((_s.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L103"
        if (_s != null) for (_i => _e in _s) {
            _l[(_i : stdgo.GoInt)] = (new stdgo.Slice<stdgo.GoUInt8>((_e.len() : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L105"
            _e.encode(_l[(_i : stdgo.GoInt)]);
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L108"
        stdgo._internal.sort.Sort_slice.slice(new stdgo.AnyInterface(_l, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }))), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L115"
            return (stdgo._internal.bytes.Bytes_compare.compare(_l[(_i : stdgo.GoInt)], _l[(_j : stdgo.GoInt)]) < (0 : stdgo.GoInt) : Bool);
        });
        var _off:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L119"
        if (_l != null) for (__0 => _b in _l) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L120"
            (_dst.__slice__(_off) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_b);
            _off = (_off + ((_b.length)) : stdgo.GoInt);
        };
    }
    @:keep
    @:tdfield
    static public function len( _s:stdgo._internal.encoding.asn1.Asn1_t_setencoder.T_setEncoder):stdgo.GoInt {
        @:recv var _s:stdgo._internal.encoding.asn1.Asn1_t_setencoder.T_setEncoder = _s;
        var _size:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L87"
        if (_s != null) for (__0 => _e in _s) {
            _size = (_size + (_e.len()) : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L90"
        return _size;
    }
}

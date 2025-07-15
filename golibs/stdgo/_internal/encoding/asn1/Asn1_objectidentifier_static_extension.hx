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
@:keep @:allow(stdgo._internal.encoding.asn1.Asn1.ObjectIdentifier_asInterface) class ObjectIdentifier_static_extension {
    @:keep
    @:tdfield
    static public function string( _oi:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier):stdgo.GoString {
        @:recv var _oi:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier = _oi;
        var _s:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L241"
        _s.grow((32 : stdgo.GoInt));
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (19 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L244"
        if (_oi != null) for (_i => _v in _oi) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L245"
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L246"
                _s.writeByte((46 : stdgo.GoUInt8));
            };
            //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L248"
            _s.write(stdgo._internal.strconv.Strconv_appendint.appendInt(_buf, (_v : stdgo.GoInt64), (10 : stdgo.GoInt)));
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L251"
        return (_s.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function equal( _oi:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier, _other:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier):Bool {
        @:recv var _oi:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier = _oi;
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L227"
        if ((_oi.length) != ((_other.length))) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L228"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L230"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_oi.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L231"
                if (_oi[(_i : stdgo.GoInt)] != (_other[(_i : stdgo.GoInt)])) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L232"
                    return false;
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L236"
        return true;
    }
}

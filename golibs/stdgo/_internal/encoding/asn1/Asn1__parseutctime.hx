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
function _parseUTCTime(_bytes:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : stdgo.Error; } {
        var _ret = ({} : stdgo._internal.time.Time_time.Time), _err = (null : stdgo.Error);
        var _s = @:assignType ((_bytes : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _formatStr = @:assignType (("0601021504Z0700" : stdgo.GoString) : stdgo.GoString);
        {
            var __tmp__ = stdgo._internal.time.Time_parse.parse(_formatStr?.__copy__(), _s?.__copy__());
            _ret = @:tmpset0 __tmp__._0?.__copy__();
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L347"
        if (_err != null) {
            _formatStr = ("060102150405Z0700" : stdgo.GoString);
            {
                var __tmp__ = stdgo._internal.time.Time_parse.parse(_formatStr?.__copy__(), _s?.__copy__());
                _ret = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._1;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L351"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L352"
            return { _0 : _ret, _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L355"
        {
            var _serialized = @:assignType (_ret.format(_formatStr?.__copy__())?.__copy__() : stdgo.GoString);
            if (_serialized != (_s)) {
                _err = stdgo._internal.fmt.Fmt_errorf.errorf(("asn1: time did not serialize back to the original value and may be invalid: given %q, but serialized as %q" : stdgo.GoString), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_serialized, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L357"
                return { _0 : _ret, _1 : _err };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L360"
        if ((_ret.year() >= (2050 : stdgo.GoInt) : Bool)) {
            _ret = _ret.addDate((-100 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt))?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L365"
        return { _0 : _ret, _1 : _err };
    }

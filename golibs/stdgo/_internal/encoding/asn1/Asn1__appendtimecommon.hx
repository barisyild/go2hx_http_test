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
function _appendTimeCommon(_dst:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo._internal.time.Time_time.Time):stdgo.Slice<stdgo.GoUInt8> {
        var __tmp__ = _t.date(), __0:stdgo.GoInt = __tmp__._0, _month:stdgo._internal.time.Time_month.Month = __tmp__._1, _day:stdgo.GoInt = __tmp__._2;
        _dst = stdgo._internal.encoding.asn1.Asn1__appendtwodigits._appendTwoDigits(_dst, (_month : stdgo.GoInt));
        _dst = stdgo._internal.encoding.asn1.Asn1__appendtwodigits._appendTwoDigits(_dst, _day);
        var __tmp__ = _t.clock(), _hour:stdgo.GoInt = __tmp__._0, _min:stdgo.GoInt = __tmp__._1, _sec:stdgo.GoInt = __tmp__._2;
        _dst = stdgo._internal.encoding.asn1.Asn1__appendtwodigits._appendTwoDigits(_dst, _hour);
        _dst = stdgo._internal.encoding.asn1.Asn1__appendtwodigits._appendTwoDigits(_dst, _min);
        _dst = stdgo._internal.encoding.asn1.Asn1__appendtwodigits._appendTwoDigits(_dst, _sec);
        var __tmp__ = _t.zone(), __1:stdgo.GoString = __tmp__._0, _offset:stdgo.GoInt = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L433"
        if ((_offset / (60 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L435"
            return (_dst.__append__((90 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        } else if ((_offset > (0 : stdgo.GoInt) : Bool)) {
            _dst = (_dst.__append__((43 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        } else if ((_offset < (0 : stdgo.GoInt) : Bool)) {
            _dst = (_dst.__append__((45 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _offsetMinutes = @:assignType (_offset / (60 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L443"
        if ((_offsetMinutes < (0 : stdgo.GoInt) : Bool)) {
            _offsetMinutes = -_offsetMinutes;
        };
        _dst = stdgo._internal.encoding.asn1.Asn1__appendtwodigits._appendTwoDigits(_dst, (_offsetMinutes / (60 : stdgo.GoInt) : stdgo.GoInt));
        _dst = stdgo._internal.encoding.asn1.Asn1__appendtwodigits._appendTwoDigits(_dst, (_offsetMinutes % (60 : stdgo.GoInt) : stdgo.GoInt));
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L450"
        return _dst;
    }

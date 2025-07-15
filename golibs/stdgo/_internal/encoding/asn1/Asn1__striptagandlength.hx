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
function _stripTagAndLength(_in:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parsetagandlength._parseTagAndLength(_in, (0 : stdgo.GoInt)), __0:stdgo._internal.encoding.asn1.Asn1_t_tagandlength.T_tagAndLength = __tmp__._0, _offset:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L455"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L456"
            return _in;
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L458"
        return (_in.__slice__(_offset) : stdgo.Slice<stdgo.GoUInt8>);
    }

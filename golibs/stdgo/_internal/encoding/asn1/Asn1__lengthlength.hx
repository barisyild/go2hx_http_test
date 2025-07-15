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
function _lengthLength(_i:stdgo.GoInt):stdgo.GoInt {
        var _numBytes = (0 : stdgo.GoInt);
        _numBytes = (1 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L243"
        while ((_i > (255 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L244"
            _numBytes++;
            _i = (_i >> ((8i64 : stdgo.GoUInt64)) : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L247"
        return _numBytes;
    }

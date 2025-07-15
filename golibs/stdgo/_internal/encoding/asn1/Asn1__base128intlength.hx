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
function _base128IntLength(_n:stdgo.GoInt64):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L169"
        if (_n == ((0i64 : stdgo.GoInt64))) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L170"
            return (1 : stdgo.GoInt);
        };
        var _l = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L174"
        {
            var _i = @:assignType (_n : stdgo.GoInt64);
            while ((_i > (0i64 : stdgo.GoInt64) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L175"
                _l++;
                _i = (_i >> ((7i64 : stdgo.GoUInt64)) : stdgo.GoInt64);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L178"
        return _l;
    }

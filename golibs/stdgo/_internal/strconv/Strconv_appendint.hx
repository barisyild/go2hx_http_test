package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function appendInt(_dst:stdgo.Slice<stdgo.GoUInt8>, _i:stdgo.GoInt64, _base:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///Users/o/.go/go1.21.3/src/strconv/itoa.go#L41"
        if ((((true && ((0i64 : stdgo.GoInt64) <= _i : Bool) : Bool) && (_i < (100i64 : stdgo.GoInt64) : Bool) : Bool) && (_base == (10 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/strconv/itoa.go#L42"
            return (_dst.__append__(...(stdgo._internal.strconv.Strconv__small._small((_i : stdgo.GoInt)) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        {
            var __tmp__ = stdgo._internal.strconv.Strconv__formatbits._formatBits(_dst, (_i : stdgo.GoUInt64), _base, (_i < (0i64 : stdgo.GoInt64) : Bool), true);
            _dst = @:tmpset0 __tmp__._0;
        };
        //"file:///Users/o/.go/go1.21.3/src/strconv/itoa.go#L45"
        return _dst;
    }

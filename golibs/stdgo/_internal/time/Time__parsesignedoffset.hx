package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
function _parseSignedOffset(_value:stdgo.GoString):stdgo.GoInt {
        var _sign = @:assignType (_value[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L1475"
        if (((_sign != (45 : stdgo.GoUInt8)) && (_sign != (43 : stdgo.GoUInt8)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/time/format.go#L1476"
            return (0 : stdgo.GoInt);
        };
        var __tmp__ = (stdgo._internal.time.Time__leadingint._leadingInt((_value.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : { var _0 : stdgo.GoUInt64; var _1 : stdgo.GoString; var _2 : stdgo.Error; }), _x:stdgo.GoUInt64 = __tmp__._0, _rem:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L1481"
        if (((_err != null) || ((_value.__slice__((1 : stdgo.GoInt)) : stdgo.GoString) == _rem) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/time/format.go#L1482"
            return (0 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L1484"
        if ((_x > (23i64 : stdgo.GoUInt64) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/time/format.go#L1485"
            return (0 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L1487"
        return ((_value.length) - (_rem.length) : stdgo.GoInt);
    }

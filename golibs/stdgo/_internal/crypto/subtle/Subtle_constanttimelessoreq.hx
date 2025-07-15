package stdgo._internal.crypto.subtle;
import stdgo._internal.unsafe.Unsafe;
function constantTimeLessOrEq(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        var _x32 = @:assignType (_x : stdgo.GoInt32);
        var _y32 = @:assignType (_y : stdgo.GoInt32);
        //"file:///Users/o/.go/go1.21.3/src/crypto/subtle/constant_time.go#L61"
        return (((((((_x32 - _y32 : stdgo.GoInt32) - (1 : stdgo.GoInt32) : stdgo.GoInt32)) >> (31i64 : stdgo.GoUInt64) : stdgo.GoInt32)) & (1 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt);
    }

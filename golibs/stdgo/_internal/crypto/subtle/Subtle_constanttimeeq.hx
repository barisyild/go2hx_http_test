package stdgo._internal.crypto.subtle;
import stdgo._internal.unsafe.Unsafe;
function constantTimeEq(_x:stdgo.GoInt32, _y:stdgo.GoInt32):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/crypto/subtle/constant_time.go#L38"
        return (((((((_x ^ _y : stdgo.GoInt32) : stdgo.GoUInt32) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) >> (63i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt);
    }

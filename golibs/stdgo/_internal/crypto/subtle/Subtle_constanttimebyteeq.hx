package stdgo._internal.crypto.subtle;
import stdgo._internal.unsafe.Unsafe;
function constantTimeByteEq(_x:stdgo.GoUInt8, _y:stdgo.GoUInt8):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/crypto/subtle/constant_time.go#L33"
        return ((((((_x ^ _y : stdgo.GoUInt8) : stdgo.GoUInt32) - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) >> (31i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoInt);
    }

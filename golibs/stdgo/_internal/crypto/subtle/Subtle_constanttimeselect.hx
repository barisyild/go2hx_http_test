package stdgo._internal.crypto.subtle;
import stdgo._internal.unsafe.Unsafe;
function constantTimeSelect(_v:stdgo.GoInt, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/crypto/subtle/constant_time.go#L29"
        return (((-1 ^ (_v - (1 : stdgo.GoInt) : stdgo.GoInt)) & _x : stdgo.GoInt) | (((_v - (1 : stdgo.GoInt) : stdgo.GoInt)) & _y : stdgo.GoInt) : stdgo.GoInt);
    }

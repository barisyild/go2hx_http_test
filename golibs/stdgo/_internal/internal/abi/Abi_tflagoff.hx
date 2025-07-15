package stdgo._internal.internal.abi;
import stdgo._internal.unsafe.Unsafe;
function tFlagOff(_ptrSize:stdgo.GoInt):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/compiletype.go#L37"
        return (((2 : stdgo.GoInt) * _ptrSize : stdgo.GoInt) + (4 : stdgo.GoInt) : stdgo.GoInt);
    }

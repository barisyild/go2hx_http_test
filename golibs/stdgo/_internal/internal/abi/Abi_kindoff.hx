package stdgo._internal.internal.abi;
import stdgo._internal.unsafe.Unsafe;
function kindOff(_ptrSize:stdgo.GoInt):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/compiletype.go#L28"
        return (((2 : stdgo.GoInt) * _ptrSize : stdgo.GoInt) + (7 : stdgo.GoInt) : stdgo.GoInt);
    }

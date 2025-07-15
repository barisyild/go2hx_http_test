package stdgo._internal.internal.abi;
import stdgo._internal.unsafe.Unsafe;
function structFieldSize(_ptrSize:stdgo.GoInt):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/compiletype.go#L18"
        return ((3 : stdgo.GoInt) * _ptrSize : stdgo.GoInt);
    }

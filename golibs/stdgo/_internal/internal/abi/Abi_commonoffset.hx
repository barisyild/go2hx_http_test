package stdgo._internal.internal.abi;
import stdgo._internal.unsafe.Unsafe;
function commonOffset(_ptrSize:stdgo.GoInt, _twoWordAlignSlices:Bool):stdgo._internal.internal.abi.Abi_offset.Offset {
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/compiletype.go#L166"
        return stdgo._internal.internal.abi.Abi_initializedoffset.initializedOffset(stdgo._internal.internal.abi.Abi_commonsize.commonSize(_ptrSize), (_ptrSize : stdgo.GoUInt8), (_ptrSize : stdgo.GoUInt8), _twoWordAlignSlices)?.__copy__();
    }

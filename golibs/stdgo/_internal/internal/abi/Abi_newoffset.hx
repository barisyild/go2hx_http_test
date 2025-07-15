package stdgo._internal.internal.abi;
import stdgo._internal.unsafe.Unsafe;
function newOffset(_ptrSize:stdgo.GoUInt8, _twoWordAlignSlices:Bool):stdgo._internal.internal.abi.Abi_offset.Offset {
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/compiletype.go#L53"
        if (_twoWordAlignSlices) {
            //"file:///Users/o/.go/go1.21.3/src/internal/abi/compiletype.go#L54"
            return ({ _off : (0i64 : stdgo.GoUInt64), _align : (1 : stdgo.GoUInt8), _ptrSize : _ptrSize, _sliceAlign : ((2 : stdgo.GoUInt8) * _ptrSize : stdgo.GoUInt8) } : stdgo._internal.internal.abi.Abi_offset.Offset);
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/compiletype.go#L56"
        return ({ _off : (0i64 : stdgo.GoUInt64), _align : (1 : stdgo.GoUInt8), _ptrSize : _ptrSize, _sliceAlign : _ptrSize } : stdgo._internal.internal.abi.Abi_offset.Offset);
    }

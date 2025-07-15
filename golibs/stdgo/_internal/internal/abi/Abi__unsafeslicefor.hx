package stdgo._internal.internal.abi;
import stdgo._internal.unsafe.Unsafe;
function _unsafeSliceFor(_b:stdgo.Pointer<stdgo.GoUInt8>, _l:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/unsafestring_go120.go#L17"
        return stdgo._internal.unsafe.Unsafe_slice.slice(_b, _l);
    }

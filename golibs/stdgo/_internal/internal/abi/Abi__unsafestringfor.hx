package stdgo._internal.internal.abi;
import stdgo._internal.unsafe.Unsafe;
function _unsafeStringFor(_b:stdgo.Pointer<stdgo.GoUInt8>, _l:stdgo.GoInt):stdgo.GoString {
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/unsafestring_go120.go#L13"
        return (stdgo._internal.unsafe.Unsafe_string.string(_b, _l) : stdgo.GoString)?.__copy__();
    }

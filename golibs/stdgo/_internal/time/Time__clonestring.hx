package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
function _cloneString(_s:stdgo.GoString):stdgo.GoString {
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L838"
        return ((_s : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
    }

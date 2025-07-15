package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
function _separator(_std:stdgo.GoInt):stdgo.GoUInt8 {
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L485"
        if (((_std >> (28i64 : stdgo.GoUInt64) : stdgo.GoInt)) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/time/format.go#L486"
            return (46 : stdgo.GoUInt8);
        };
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L488"
        return (44 : stdgo.GoUInt8);
    }

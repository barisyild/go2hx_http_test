package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
function _get2(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L393"
        if (((_b.length) < (2 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L394"
            return (0 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L396"
        return ((_b[(0 : stdgo.GoInt)] : stdgo.GoInt) | ((_b[(1 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt);
    }

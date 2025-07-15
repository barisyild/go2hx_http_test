package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
function _get4(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L385"
        if (((_b.length) < (4 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L386"
            return (0 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L388"
        return ((((_b[(0 : stdgo.GoInt)] : stdgo.GoInt) | ((_b[(1 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt) | ((_b[(2 : stdgo.GoInt)] : stdgo.GoInt) << (16i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt) | ((_b[(3 : stdgo.GoInt)] : stdgo.GoInt) << (24i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt);
    }

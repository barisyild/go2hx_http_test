package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
function _stdFracSecond(_code:stdgo.GoInt, _n:stdgo.GoInt, _c:stdgo.GoInt):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L474"
        if (_c == ((46 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/time/format.go#L475"
            return (_code | ((((_n & (4095 : stdgo.GoInt) : stdgo.GoInt)) << (16i64 : stdgo.GoUInt64) : stdgo.GoInt)) : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L477"
        return ((_code | ((((_n & (4095 : stdgo.GoInt) : stdgo.GoInt)) << (16i64 : stdgo.GoUInt64) : stdgo.GoInt)) : stdgo.GoInt) | (268435456 : stdgo.GoInt) : stdgo.GoInt);
    }

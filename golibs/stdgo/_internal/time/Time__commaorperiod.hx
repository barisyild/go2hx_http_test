package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
function _commaOrPeriod(_b:stdgo.GoUInt8):Bool {
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L1491"
        return ((_b == (46 : stdgo.GoUInt8)) || (_b == (44 : stdgo.GoUInt8)) : Bool);
    }

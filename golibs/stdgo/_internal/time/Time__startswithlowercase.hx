package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
function _startsWithLowerCase(_str:stdgo.GoString):Bool {
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L175"
        if ((_str.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/time/format.go#L176"
            return false;
        };
        var _c = @:assignType (_str[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L179"
        return (((97 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (122 : stdgo.GoUInt8) : Bool) : Bool);
    }

package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
function _containsDotDot(_s:stdgo.GoString):Bool {
        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L699"
        if (((_s.length) < (2 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L700"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L702"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L703"
                if (((_s[(_i : stdgo.GoInt)] == (46 : stdgo.GoUInt8)) && (_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == (46 : stdgo.GoUInt8)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L704"
                    return true;
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L707"
        return false;
    }

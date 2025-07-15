package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
function _byteString(_p:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoString {
        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L102"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_p.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L103"
                if (_p[(_i : stdgo.GoInt)] == ((0 : stdgo.GoUInt8))) {
                    //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L104"
                    return ((_p.__slice__((0 : stdgo.GoInt), _i) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString).__copy__();
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L107"
        return (_p : stdgo.GoString)?.__copy__();
    }

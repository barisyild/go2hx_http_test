package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
function _match(_s1:stdgo.GoString, _s2:stdgo.GoString):Bool {
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L372"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_s1.length) : Bool)) {
                var _c1 = @:assignType (_s1[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
var _c2 = @:assignType (_s2[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///Users/o/.go/go1.21.3/src/time/format.go#L375"
                if (_c1 != (_c2)) {
                    _c1 = (_c1 | ((32 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                    _c2 = (_c2 | ((32 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                    //"file:///Users/o/.go/go1.21.3/src/time/format.go#L379"
                    if (((_c1 != (_c2) || (_c1 < (97 : stdgo.GoUInt8) : Bool) : Bool) || (_c1 > (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L380"
                        return false;
                    };
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L384"
        return true;
    }

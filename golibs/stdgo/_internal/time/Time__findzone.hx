package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
function _findZone(_zones:stdgo.Slice<stdgo._internal.time.Time_t_zone.T_zone>, _name:stdgo.GoString, _offset:stdgo.GoInt, _isDST:Bool):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L355"
        if (_zones != null) for (_i => _z in _zones) {
            //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L356"
            if (((_z._name == (_name) && _z._offset == (_offset) : Bool) && (_z._isDST == _isDST) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L357"
                return _i;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L360"
        return (-1 : stdgo.GoInt);
    }

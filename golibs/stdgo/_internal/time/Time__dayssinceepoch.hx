package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
function _daysSinceEpoch(_year:stdgo.GoInt):stdgo.GoUInt64 {
        var _y = @:assignType (((_year : stdgo.GoInt64) - (-292277022399i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoUInt64);
        var _n = @:assignType (_y / (400i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _y = (_y - (((400i64 : stdgo.GoUInt64) * _n : stdgo.GoUInt64)) : stdgo.GoUInt64);
        var _d = @:assignType ((146097i64 : stdgo.GoUInt64) * _n : stdgo.GoUInt64);
        _n = (_y / (100i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _y = (_y - (((100i64 : stdgo.GoUInt64) * _n : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _d = (_d + (((36524i64 : stdgo.GoUInt64) * _n : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _n = (_y / (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _y = (_y - (((4i64 : stdgo.GoUInt64) * _n : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _d = (_d + (((1461i64 : stdgo.GoUInt64) * _n : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _n = _y;
        _d = (_d + (((365i64 : stdgo.GoUInt64) * _n : stdgo.GoUInt64)) : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1090"
        return _d;
    }

package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
function _absClock(_abs:stdgo.GoUInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; } {
        var _hour = (0 : stdgo.GoInt), _min = (0 : stdgo.GoInt), _sec = (0 : stdgo.GoInt);
        _sec = ((_abs % (86400i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt);
        _hour = (_sec / (3600 : stdgo.GoInt) : stdgo.GoInt);
        _sec = (_sec - ((_hour * (3600 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        _min = (_sec / (60 : stdgo.GoInt) : stdgo.GoInt);
        _sec = (_sec - ((_min * (60 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L578"
        return { _0 : _hour, _1 : _min, _2 : _sec };
    }

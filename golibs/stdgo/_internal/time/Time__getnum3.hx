package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
function _getnum3(_s:stdgo.GoString, _fixed:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        var _n:stdgo.GoInt = (0 : stdgo.GoInt), _i:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L928"
        {
            _i = (0 : stdgo.GoInt);
            while (((_i < (3 : stdgo.GoInt) : Bool) && (stdgo._internal.time.Time__isdigit._isDigit(_s?.__copy__(), _i) : Bool) : Bool)) {
                _n = ((_n * (10 : stdgo.GoInt) : stdgo.GoInt) + ((_s[(_i : stdgo.GoInt)] - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt) : stdgo.GoInt);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L931"
        if (((_i == (0 : stdgo.GoInt)) || (_fixed && _i != ((3 : stdgo.GoInt)) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/time/format.go#L932"
            return { _0 : (0 : stdgo.GoInt), _1 : _s?.__copy__(), _2 : stdgo._internal.time.Time__errbad._errBad };
        };
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L934"
        return { _0 : _n, _1 : (_s.__slice__(_i) : stdgo.GoString)?.__copy__(), _2 : (null : stdgo.Error) };
    }

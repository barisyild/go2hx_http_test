package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
function _getnum(_s:stdgo.GoString, _fixed:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L911"
        if (!(stdgo._internal.time.Time__isdigit._isDigit(_s?.__copy__(), (0 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/time/format.go#L912"
            return { _0 : (0 : stdgo.GoInt), _1 : _s?.__copy__(), _2 : stdgo._internal.time.Time__errbad._errBad };
        };
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L914"
        if (!(stdgo._internal.time.Time__isdigit._isDigit(_s?.__copy__(), (1 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/time/format.go#L915"
            if (_fixed) {
                //"file:///Users/o/.go/go1.21.3/src/time/format.go#L916"
                return { _0 : (0 : stdgo.GoInt), _1 : _s?.__copy__(), _2 : stdgo._internal.time.Time__errbad._errBad };
            };
            //"file:///Users/o/.go/go1.21.3/src/time/format.go#L918"
            return { _0 : ((_s[(0 : stdgo.GoInt)] - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt), _1 : (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _2 : (null : stdgo.Error) };
        };
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L920"
        return { _0 : ((((_s[(0 : stdgo.GoInt)] - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt) * (10 : stdgo.GoInt) : stdgo.GoInt) + ((_s[(1 : stdgo.GoInt)] - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt) : stdgo.GoInt), _1 : (_s.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _2 : (null : stdgo.Error) };
    }

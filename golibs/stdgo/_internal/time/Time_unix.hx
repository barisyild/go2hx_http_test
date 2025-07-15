package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
function unix(_sec:stdgo.GoInt64, _nsec:stdgo.GoInt64):stdgo._internal.time.Time_time.Time {
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1397"
        if (((_nsec < (0i64 : stdgo.GoInt64) : Bool) || (_nsec >= (1000000000i64 : stdgo.GoInt64) : Bool) : Bool)) {
            var _n = @:assignType (_nsec / (1000000000i64 : stdgo.GoInt64) : stdgo.GoInt64);
            _sec = (_sec + (_n) : stdgo.GoInt64);
            _nsec = (_nsec - ((_n * (1000000000i64 : stdgo.GoInt64) : stdgo.GoInt64)) : stdgo.GoInt64);
            //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1401"
            if ((_nsec < (0i64 : stdgo.GoInt64) : Bool)) {
                _nsec = (_nsec + ((1000000000i64 : stdgo.GoInt64)) : stdgo.GoInt64);
                //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1403"
                _sec--;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1406"
        return stdgo._internal.time.Time__unixtime._unixTime(_sec, (_nsec : stdgo.GoInt32))?.__copy__();
    }

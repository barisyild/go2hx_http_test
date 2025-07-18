package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
function _div(_t:stdgo._internal.time.Time_time.Time, _d:stdgo._internal.time.Time_duration.Duration):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.time.Time_duration.Duration; } {
        var _qmod2 = (0 : stdgo.GoInt), _r = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
        var _neg = @:assignType (false : Bool);
        var _nsec = @:assignType (_t._nsec() : stdgo.GoInt32);
        var _sec = @:assignType (_t._sec() : stdgo.GoInt64);
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1564"
        if ((_sec < (0i64 : stdgo.GoInt64) : Bool)) {
            _neg = true;
            _sec = -_sec;
            _nsec = -_nsec;
            //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1569"
            if ((_nsec < (0 : stdgo.GoInt32) : Bool)) {
                _nsec = (_nsec + ((1000000000 : stdgo.GoInt32)) : stdgo.GoInt32);
                //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1571"
                _sec--;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1575"
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                if (((_d < (1000000000i64 : stdgo._internal.time.Time_duration.Duration) : Bool) && (((1000000000i64 : stdgo._internal.time.Time_duration.Duration) % ((_d + _d : stdgo._internal.time.Time_duration.Duration)) : stdgo._internal.time.Time_duration.Duration) == (0i64 : stdgo._internal.time.Time_duration.Duration)) : Bool)) {
                    _qmod2 = (((_nsec / (_d : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt) & (1 : stdgo.GoInt) : stdgo.GoInt);
                    _r = ((_nsec % (_d : stdgo.GoInt32) : stdgo.GoInt32) : stdgo._internal.time.Time_duration.Duration);
                    break;
                } else if ((_d % (1000000000i64 : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration) == ((0i64 : stdgo._internal.time.Time_duration.Duration))) {
                    var _d1 = @:assignType ((_d / (1000000000i64 : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration) : stdgo.GoInt64);
                    _qmod2 = (((_sec / _d1 : stdgo.GoInt64) : stdgo.GoInt) & (1 : stdgo.GoInt) : stdgo.GoInt);
                    _r = ((((_sec % _d1 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration) * (1000000000i64 : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration) + (_nsec : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration);
                    break;
                } else {
                    var _sec = @:assignType (_sec : stdgo.GoUInt64);
                    var _tmp = @:assignType (((_sec >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) * (1000000000i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    var _u1 = @:assignType (_tmp >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    var _u0 = @:assignType (_tmp << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _tmp = (((_sec & (4294967295i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) * (1000000000i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    var __0 = @:assignType (_u0 : stdgo.GoUInt64), __1 = @:assignType (_u0 + _tmp : stdgo.GoUInt64);
var _u0 = __1, _u0x = __0;
                    //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1599"
                    if ((_u0 < _u0x : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1600"
                        _u1++;
                    };
                    {
                        final __tmp__0 = _u0;
                        final __tmp__1 = (_u0 + (_nsec : stdgo.GoUInt64) : stdgo.GoUInt64);
                        _u0x = @:binopAssign __tmp__0;
                        _u0 = @:binopAssign __tmp__1;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1603"
                    if ((_u0 < _u0x : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1604"
                        _u1++;
                    };
                    var _d1 = @:assignType (_d : stdgo.GoUInt64);
                    //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1610"
                    while ((_d1 >> (63i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((1i64 : stdgo.GoUInt64))) {
                        _d1 = (_d1 << ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    };
                    var _d0 = @:assignType ((0i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1614"
                    while (true) {
                        _qmod2 = (0 : stdgo.GoInt);
                        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1616"
                        if (((_u1 > _d1 : Bool) || (_u1 == (_d1) && (_u0 >= _d0 : Bool) : Bool) : Bool)) {
                            _qmod2 = (1 : stdgo.GoInt);
                            {
                                final __tmp__0 = _u0;
                                final __tmp__1 = (_u0 - _d0 : stdgo.GoUInt64);
                                _u0x = @:binopAssign __tmp__0;
                                _u0 = @:binopAssign __tmp__1;
                            };
                            //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1620"
                            if ((_u0 > _u0x : Bool)) {
                                //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1621"
                                _u1--;
                            };
                            _u1 = (_u1 - (_d1) : stdgo.GoUInt64);
                        };
                        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1625"
                        if (((_d1 == (0i64 : stdgo.GoUInt64)) && (_d0 == (_d : stdgo.GoUInt64)) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1626"
                            break;
                        };
                        _d0 = (_d0 >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                        _d0 = (_d0 | ((((_d1 & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) << (63i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                        _d1 = (_d1 >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    };
                    _r = (_u0 : stdgo._internal.time.Time_duration.Duration);
                };
                break;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1635"
        if ((_neg && (_r != (0i64 : stdgo._internal.time.Time_duration.Duration)) : Bool)) {
            _qmod2 = (_qmod2 ^ ((1 : stdgo.GoInt)) : stdgo.GoInt);
            _r = (_d - _r : stdgo._internal.time.Time_duration.Duration);
        };
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L1645"
        return { _0 : _qmod2, _1 : _r };
    }

package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
function _tzset(_s:stdgo.GoString, _lastTxSec:stdgo.GoInt64, _sec:stdgo.GoInt64):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt64; var _3 : stdgo.GoInt64; var _4 : Bool; var _5 : Bool; } {
        var _name = ("" : stdgo.GoString), _offset = (0 : stdgo.GoInt), _start = (0 : stdgo.GoInt64), _end = (0 : stdgo.GoInt64), _isDST = false, _ok = false;
        var _stdName:stdgo.GoString = ("" : stdgo.GoString), _dstName:stdgo.GoString = ("" : stdgo.GoString), _stdOffset:stdgo.GoInt = (0 : stdgo.GoInt), _dstOffset:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var __tmp__ = stdgo._internal.time.Time__tzsetname._tzsetName(_s?.__copy__());
            _stdName = @:tmpset0 __tmp__._0?.__copy__();
            _s = @:tmpset0 __tmp__._1?.__copy__();
            _ok = @:tmpset0 __tmp__._2;
        };
        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L279"
        if (_ok) {
            {
                var __tmp__ = stdgo._internal.time.Time__tzsetoffset._tzsetOffset(_s?.__copy__());
                _stdOffset = @:tmpset0 __tmp__._0;
                _s = @:tmpset0 __tmp__._1?.__copy__();
                _ok = @:tmpset0 __tmp__._2;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L282"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L283"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt64; var _3 : stdgo.GoInt64; var _4 : Bool; var _5 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (0 : stdgo.GoInt), _2 : (0i64 : stdgo.GoInt64), _3 : (0i64 : stdgo.GoInt64), _4 : false, _5 : false };
                _name = __tmp__._0;
                _offset = __tmp__._1;
                _start = __tmp__._2;
                _end = __tmp__._3;
                _isDST = __tmp__._4;
                _ok = __tmp__._5;
                __tmp__;
            };
        };
        _stdOffset = -_stdOffset;
        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L291"
        if (((_s.length == (0 : stdgo.GoInt)) || (_s[(0 : stdgo.GoInt)] == (44 : stdgo.GoUInt8)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L293"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt64; var _3 : stdgo.GoInt64; var _4 : Bool; var _5 : Bool; } = { _0 : _stdName?.__copy__(), _1 : _stdOffset, _2 : _lastTxSec, _3 : (9223372036854775807i64 : stdgo.GoInt64), _4 : false, _5 : true };
                _name = __tmp__._0;
                _offset = __tmp__._1;
                _start = __tmp__._2;
                _end = __tmp__._3;
                _isDST = __tmp__._4;
                _ok = __tmp__._5;
                __tmp__;
            };
        };
        {
            var __tmp__ = stdgo._internal.time.Time__tzsetname._tzsetName(_s?.__copy__());
            _dstName = @:tmpset0 __tmp__._0?.__copy__();
            _s = @:tmpset0 __tmp__._1?.__copy__();
            _ok = @:tmpset0 __tmp__._2;
        };
        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L297"
        if (_ok) {
            //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L298"
            if (((_s.length == (0 : stdgo.GoInt)) || (_s[(0 : stdgo.GoInt)] == (44 : stdgo.GoUInt8)) : Bool)) {
                _dstOffset = (_stdOffset + (3600 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                {
                    var __tmp__ = stdgo._internal.time.Time__tzsetoffset._tzsetOffset(_s?.__copy__());
                    _dstOffset = @:tmpset0 __tmp__._0;
                    _s = @:tmpset0 __tmp__._1?.__copy__();
                    _ok = @:tmpset0 __tmp__._2;
                };
                _dstOffset = -_dstOffset;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L305"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L306"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt64; var _3 : stdgo.GoInt64; var _4 : Bool; var _5 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (0 : stdgo.GoInt), _2 : (0i64 : stdgo.GoInt64), _3 : (0i64 : stdgo.GoInt64), _4 : false, _5 : false };
                _name = __tmp__._0;
                _offset = __tmp__._1;
                _start = __tmp__._2;
                _end = __tmp__._3;
                _isDST = __tmp__._4;
                _ok = __tmp__._5;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L309"
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            _s = (",M3.2.0,M11.1.0" : stdgo.GoString);
        };
        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L314"
        if (((_s[(0 : stdgo.GoInt)] != (44 : stdgo.GoUInt8)) && (_s[(0 : stdgo.GoInt)] != (59 : stdgo.GoUInt8)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L315"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt64; var _3 : stdgo.GoInt64; var _4 : Bool; var _5 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (0 : stdgo.GoInt), _2 : (0i64 : stdgo.GoInt64), _3 : (0i64 : stdgo.GoInt64), _4 : false, _5 : false };
                _name = __tmp__._0;
                _offset = __tmp__._1;
                _start = __tmp__._2;
                _end = __tmp__._3;
                _isDST = __tmp__._4;
                _ok = __tmp__._5;
                __tmp__;
            };
        };
        _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        var _startRule:stdgo._internal.time.Time_t_rule.T_rule = ({} : stdgo._internal.time.Time_t_rule.T_rule), _endRule:stdgo._internal.time.Time_t_rule.T_rule = ({} : stdgo._internal.time.Time_t_rule.T_rule);
        {
            var __tmp__ = stdgo._internal.time.Time__tzsetrule._tzsetRule(_s?.__copy__());
            _startRule = @:tmpset0 __tmp__._0?.__copy__();
            _s = @:tmpset0 __tmp__._1?.__copy__();
            _ok = @:tmpset0 __tmp__._2;
        };
        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L321"
        if (((!_ok || (_s.length) == ((0 : stdgo.GoInt)) : Bool) || (_s[(0 : stdgo.GoInt)] != (44 : stdgo.GoUInt8)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L322"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt64; var _3 : stdgo.GoInt64; var _4 : Bool; var _5 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (0 : stdgo.GoInt), _2 : (0i64 : stdgo.GoInt64), _3 : (0i64 : stdgo.GoInt64), _4 : false, _5 : false };
                _name = __tmp__._0;
                _offset = __tmp__._1;
                _start = __tmp__._2;
                _end = __tmp__._3;
                _isDST = __tmp__._4;
                _ok = __tmp__._5;
                __tmp__;
            };
        };
        _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        {
            var __tmp__ = stdgo._internal.time.Time__tzsetrule._tzsetRule(_s?.__copy__());
            _endRule = @:tmpset0 __tmp__._0?.__copy__();
            _s = @:tmpset0 __tmp__._1?.__copy__();
            _ok = @:tmpset0 __tmp__._2;
        };
        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L326"
        if ((!_ok || ((_s.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L327"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt64; var _3 : stdgo.GoInt64; var _4 : Bool; var _5 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (0 : stdgo.GoInt), _2 : (0i64 : stdgo.GoInt64), _3 : (0i64 : stdgo.GoInt64), _4 : false, _5 : false };
                _name = __tmp__._0;
                _offset = __tmp__._1;
                _start = __tmp__._2;
                _end = __tmp__._3;
                _isDST = __tmp__._4;
                _ok = __tmp__._5;
                __tmp__;
            };
        };
        var __tmp__ = stdgo._internal.time.Time__absdate._absDate((((_sec + (62135596800i64 : stdgo.GoInt64) : stdgo.GoInt64) + (9223371966579724800i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoUInt64), false), _year:stdgo.GoInt = __tmp__._0, __1:stdgo._internal.time.Time_month.Month = __tmp__._1, __2:stdgo.GoInt = __tmp__._2, _yday:stdgo.GoInt = __tmp__._3;
        var _ysec = @:assignType (((_yday * (86400 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64) + (_sec % (86400i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt64);
        var _d = @:assignType (stdgo._internal.time.Time__dayssinceepoch._daysSinceEpoch(_year) : stdgo.GoUInt64);
        var _abs = @:assignType ((_d * (86400i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt64);
        _abs = (_abs + ((-9223372028715321600i64 : stdgo.GoInt64)) : stdgo.GoInt64);
        var _startSec = @:assignType (stdgo._internal.time.Time__tzruletime._tzruleTime(_year, _startRule?.__copy__(), _stdOffset) : stdgo.GoInt64);
        var _endSec = @:assignType (stdgo._internal.time.Time__tzruletime._tzruleTime(_year, _endRule?.__copy__(), _dstOffset) : stdgo.GoInt64);
        var __0 = @:assignType (true : Bool), __1 = @:assignType (false : Bool);
var _stdIsDST = __1, _dstIsDST = __0;
        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L345"
        if ((_endSec < _startSec : Bool)) {
            {
                final __tmp__0 = _endSec;
                final __tmp__1 = _startSec;
                _startSec = @:binopAssign __tmp__0;
                _endSec = @:binopAssign __tmp__1;
            };
            {
                final __tmp__0 = _dstName?.__copy__();
                final __tmp__1 = _stdName?.__copy__();
                _stdName = @:binopAssign __tmp__0;
                _dstName = @:binopAssign __tmp__1;
            };
            {
                final __tmp__0 = _dstOffset;
                final __tmp__1 = _stdOffset;
                _stdOffset = @:binopAssign __tmp__0;
                _dstOffset = @:binopAssign __tmp__1;
            };
            {
                final __tmp__0 = _dstIsDST;
                final __tmp__1 = _stdIsDST;
                _stdIsDST = @:binopAssign __tmp__0;
                _dstIsDST = @:binopAssign __tmp__1;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L356"
        if ((_ysec < _startSec : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L357"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt64; var _3 : stdgo.GoInt64; var _4 : Bool; var _5 : Bool; } = { _0 : _stdName?.__copy__(), _1 : _stdOffset, _2 : _abs, _3 : (_startSec + _abs : stdgo.GoInt64), _4 : _stdIsDST, _5 : true };
                _name = __tmp__._0;
                _offset = __tmp__._1;
                _start = __tmp__._2;
                _end = __tmp__._3;
                _isDST = __tmp__._4;
                _ok = __tmp__._5;
                __tmp__;
            };
        } else if ((_ysec >= _endSec : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L359"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt64; var _3 : stdgo.GoInt64; var _4 : Bool; var _5 : Bool; } = { _0 : _stdName?.__copy__(), _1 : _stdOffset, _2 : (_endSec + _abs : stdgo.GoInt64), _3 : (_abs + (31536000i64 : stdgo.GoInt64) : stdgo.GoInt64), _4 : _stdIsDST, _5 : true };
                _name = __tmp__._0;
                _offset = __tmp__._1;
                _start = __tmp__._2;
                _end = __tmp__._3;
                _isDST = __tmp__._4;
                _ok = __tmp__._5;
                __tmp__;
            };
        } else {
            //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L361"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt64; var _3 : stdgo.GoInt64; var _4 : Bool; var _5 : Bool; } = { _0 : _dstName?.__copy__(), _1 : _dstOffset, _2 : (_startSec + _abs : stdgo.GoInt64), _3 : (_endSec + _abs : stdgo.GoInt64), _4 : _dstIsDST, _5 : true };
                _name = __tmp__._0;
                _offset = __tmp__._1;
                _start = __tmp__._2;
                _end = __tmp__._3;
                _isDST = __tmp__._4;
                _ok = __tmp__._5;
                __tmp__;
            };
        };
    }

package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
function _tzsetRule(_s:stdgo.GoString):{ var _0 : stdgo._internal.time.Time_t_rule.T_rule; var _1 : stdgo.GoString; var _2 : Bool; } {
        var _r:stdgo._internal.time.Time_t_rule.T_rule = ({} : stdgo._internal.time.Time_t_rule.T_rule);
        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L473"
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L474"
            return { _0 : (new stdgo._internal.time.Time_t_rule.T_rule() : stdgo._internal.time.Time_t_rule.T_rule), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : false };
        };
        var _ok = @:assignType (false : Bool);
        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L477"
        if (_s[(0 : stdgo.GoInt)] == ((74 : stdgo.GoUInt8))) {
            var _jday:stdgo.GoInt = (0 : stdgo.GoInt);
            {
                var __tmp__ = stdgo._internal.time.Time__tzsetnum._tzsetNum((_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (1 : stdgo.GoInt), (365 : stdgo.GoInt));
                _jday = @:tmpset0 __tmp__._0;
                _s = @:tmpset0 __tmp__._1?.__copy__();
                _ok = @:tmpset0 __tmp__._2;
            };
            //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L480"
            if (!_ok) {
                //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L481"
                return { _0 : (new stdgo._internal.time.Time_t_rule.T_rule() : stdgo._internal.time.Time_t_rule.T_rule), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : false };
            };
            _r._kind = (0 : stdgo._internal.time.Time_t_rulekind.T_ruleKind);
            _r._day = _jday;
        } else if (_s[(0 : stdgo.GoInt)] == ((77 : stdgo.GoUInt8))) {
            var _mon:stdgo.GoInt = (0 : stdgo.GoInt);
            {
                var __tmp__ = stdgo._internal.time.Time__tzsetnum._tzsetNum((_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (1 : stdgo.GoInt), (12 : stdgo.GoInt));
                _mon = @:tmpset0 __tmp__._0;
                _s = @:tmpset0 __tmp__._1?.__copy__();
                _ok = @:tmpset0 __tmp__._2;
            };
            //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L488"
            if (((!_ok || (_s.length) == ((0 : stdgo.GoInt)) : Bool) || (_s[(0 : stdgo.GoInt)] != (46 : stdgo.GoUInt8)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L489"
                return { _0 : (new stdgo._internal.time.Time_t_rule.T_rule() : stdgo._internal.time.Time_t_rule.T_rule), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : false };
            };
            var _week:stdgo.GoInt = (0 : stdgo.GoInt);
            {
                var __tmp__ = stdgo._internal.time.Time__tzsetnum._tzsetNum((_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (1 : stdgo.GoInt), (5 : stdgo.GoInt));
                _week = @:tmpset0 __tmp__._0;
                _s = @:tmpset0 __tmp__._1?.__copy__();
                _ok = @:tmpset0 __tmp__._2;
            };
            //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L494"
            if (((!_ok || (_s.length) == ((0 : stdgo.GoInt)) : Bool) || (_s[(0 : stdgo.GoInt)] != (46 : stdgo.GoUInt8)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L495"
                return { _0 : (new stdgo._internal.time.Time_t_rule.T_rule() : stdgo._internal.time.Time_t_rule.T_rule), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : false };
            };
            var _day:stdgo.GoInt = (0 : stdgo.GoInt);
            {
                var __tmp__ = stdgo._internal.time.Time__tzsetnum._tzsetNum((_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (0 : stdgo.GoInt), (6 : stdgo.GoInt));
                _day = @:tmpset0 __tmp__._0;
                _s = @:tmpset0 __tmp__._1?.__copy__();
                _ok = @:tmpset0 __tmp__._2;
            };
            //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L499"
            if (!_ok) {
                //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L500"
                return { _0 : (new stdgo._internal.time.Time_t_rule.T_rule() : stdgo._internal.time.Time_t_rule.T_rule), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : false };
            };
            _r._kind = (2 : stdgo._internal.time.Time_t_rulekind.T_ruleKind);
            _r._day = _day;
            _r._week = _week;
            _r._mon = _mon;
        } else {
            var _day:stdgo.GoInt = (0 : stdgo.GoInt);
            {
                var __tmp__ = stdgo._internal.time.Time__tzsetnum._tzsetNum(_s?.__copy__(), (0 : stdgo.GoInt), (365 : stdgo.GoInt));
                _day = @:tmpset0 __tmp__._0;
                _s = @:tmpset0 __tmp__._1?.__copy__();
                _ok = @:tmpset0 __tmp__._2;
            };
            //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L509"
            if (!_ok) {
                //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L510"
                return { _0 : (new stdgo._internal.time.Time_t_rule.T_rule() : stdgo._internal.time.Time_t_rule.T_rule), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : false };
            };
            _r._kind = (1 : stdgo._internal.time.Time_t_rulekind.T_ruleKind);
            _r._day = _day;
        };
        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L516"
        if (((_s.length == (0 : stdgo.GoInt)) || (_s[(0 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
            _r._time = (7200 : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L518"
            return { _0 : _r?.__copy__(), _1 : _s?.__copy__(), _2 : true };
        };
        var __tmp__ = stdgo._internal.time.Time__tzsetoffset._tzsetOffset((_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()), _offset:stdgo.GoInt = __tmp__._0, _s:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L522"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L523"
            return { _0 : (new stdgo._internal.time.Time_t_rule.T_rule() : stdgo._internal.time.Time_t_rule.T_rule), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : false };
        };
        _r._time = _offset;
        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo.go#L527"
        return { _0 : _r?.__copy__(), _1 : _s?.__copy__(), _2 : true };
    }

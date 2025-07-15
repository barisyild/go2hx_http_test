package _internal.context_test;
function _quiescent(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):stdgo._internal.time.Time_duration.Duration {
        var __tmp__ = _t.deadline(), _deadline:stdgo._internal.time.Time_time.Time = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L51"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L52"
            return (5000000000i64 : stdgo._internal.time.Time_duration.Duration);
        };
        {};
        //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L56"
        return (stdgo._internal.time.Time_until.until(_deadline?.__copy__()) - (1000000000i64 : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration);
    }

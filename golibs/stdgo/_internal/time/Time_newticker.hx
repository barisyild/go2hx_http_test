package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
function newTicker(_d:stdgo._internal.time.Time_duration.Duration):stdgo.Ref<stdgo._internal.time.Time_ticker.Ticker> {
        //"file:///Users/o/.go/go1.21.3/src/time/tick.go#L21"
        if ((_d <= (0i64 : stdgo._internal.time.Time_duration.Duration) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/time/tick.go#L22"
            throw new stdgo.AnyInterface(("non-positive interval for NewTicker" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        var _c = (new stdgo.Chan<stdgo._internal.time.Time_time.Time>((1 : stdgo.GoInt).toBasic(), () -> ({} : stdgo._internal.time.Time_time.Time)) : stdgo.Chan<stdgo._internal.time.Time_time.Time>);
        var _t = (stdgo.Go.setRef(({ c : _c, _r : ({ _when : stdgo._internal.time.Time__when._when(_d), _period : (_d : stdgo.GoInt64), _f : stdgo._internal.time.Time__sendtime._sendTime, _arg : new stdgo.AnyInterface(_c, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_timedottime.__type__stdgodot_internaldottimedotTime_timedotTime }))) } : stdgo._internal.time.Time_t_runtimetimer.T_runtimeTimer) } : stdgo._internal.time.Time_ticker.Ticker), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_tickerdotticker.__type__stdgodot_internaldottimedotTime_tickerdotTicker })) : stdgo.Ref<stdgo._internal.time.Time_ticker.Ticker>);
        //"file:///Users/o/.go/go1.21.3/src/time/tick.go#L37"
        stdgo._internal.time.Time__starttimer._startTimer((stdgo.Go.setRef((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_t_runtimetimerdott_runtimetimer.__type__stdgodot_internaldottimedotTime_t_runtimetimerdotT_runtimeTimer })) : stdgo.Ref<stdgo._internal.time.Time_t_runtimetimer.T_runtimeTimer>));
        //"file:///Users/o/.go/go1.21.3/src/time/tick.go#L38"
        return _t;
    }

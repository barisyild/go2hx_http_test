package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
function afterFunc(_d:stdgo._internal.time.Time_duration.Duration, _f:() -> Void):stdgo.Ref<stdgo._internal.time.Time_timer.Timer> {
        var _t = (stdgo.Go.setRef(({ _r : ({ _when : stdgo._internal.time.Time__when._when(_d), _f : stdgo._internal.time.Time__gofunc._goFunc, _arg : new stdgo.AnyInterface(_f, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }))) } : stdgo._internal.time.Time_t_runtimetimer.T_runtimeTimer) } : stdgo._internal.time.Time_timer.Timer), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_timerdottimer.__type__stdgodot_internaldottimedotTime_timerdotTimer })) : stdgo.Ref<stdgo._internal.time.Time_timer.Timer>);
        //"file:///Users/o/.go/go1.21.3/src/time/sleep.go#L171"
        stdgo._internal.time.Time__starttimer._startTimer((stdgo.Go.setRef((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_t_runtimetimerdott_runtimetimer.__type__stdgodot_internaldottimedotTime_t_runtimetimerdotT_runtimeTimer })) : stdgo.Ref<stdgo._internal.time.Time_t_runtimetimer.T_runtimeTimer>));
        //"file:///Users/o/.go/go1.21.3/src/time/sleep.go#L172"
        return _t;
    }

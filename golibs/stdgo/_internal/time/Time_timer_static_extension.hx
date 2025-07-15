package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
@:keep @:allow(stdgo._internal.time.Time.Timer_asInterface) class Timer_static_extension {
    @:keep
    @:tdfield
    static public function reset( _t:stdgo.Ref<stdgo._internal.time.Time_timer.Timer>, _d:stdgo._internal.time.Time_duration.Duration):Bool {
        @:recv var _t:stdgo.Ref<stdgo._internal.time.Time_timer.Timer> = _t;
        //"file:///Users/o/.go/go1.21.3/src/time/sleep.go#L135"
        if ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r._f == null) {
            //"file:///Users/o/.go/go1.21.3/src/time/sleep.go#L136"
            throw new stdgo.AnyInterface(("time: Reset called on uninitialized Timer" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        var _w = @:assignType (stdgo._internal.time.Time__when._when(_d) : stdgo.GoInt64);
        //"file:///Users/o/.go/go1.21.3/src/time/sleep.go#L139"
        return stdgo._internal.time.Time__resettimer._resetTimer((stdgo.Go.setRef((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_t_runtimetimerdott_runtimetimer.__type__stdgodot_internaldottimedotTime_t_runtimetimerdotT_runtimeTimer })) : stdgo.Ref<stdgo._internal.time.Time_t_runtimetimer.T_runtimeTimer>), _w);
    }
    @:keep
    @:tdfield
    static public function stop( _t:stdgo.Ref<stdgo._internal.time.Time_timer.Timer>):Bool {
        @:recv var _t:stdgo.Ref<stdgo._internal.time.Time_timer.Timer> = _t;
        //"file:///Users/o/.go/go1.21.3/src/time/sleep.go#L78"
        if ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r._f == null) {
            //"file:///Users/o/.go/go1.21.3/src/time/sleep.go#L79"
            throw new stdgo.AnyInterface(("time: Stop called on uninitialized Timer" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/time/sleep.go#L81"
        return stdgo._internal.time.Time__stoptimer._stopTimer((stdgo.Go.setRef((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_t_runtimetimerdott_runtimetimer.__type__stdgodot_internaldottimedotTime_t_runtimetimerdotT_runtimeTimer })) : stdgo.Ref<stdgo._internal.time.Time_t_runtimetimer.T_runtimeTimer>));
    }
}

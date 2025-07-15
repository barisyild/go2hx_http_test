package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
@:keep @:allow(stdgo._internal.time.Time.Ticker_asInterface) class Ticker_static_extension {
    @:keep
    @:tdfield
    static public function reset( _t:stdgo.Ref<stdgo._internal.time.Time_ticker.Ticker>, _d:stdgo._internal.time.Time_duration.Duration):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.time.Time_ticker.Ticker> = _t;
        //"file:///Users/o/.go/go1.21.3/src/time/tick.go#L52"
        if ((_d <= (0i64 : stdgo._internal.time.Time_duration.Duration) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/time/tick.go#L53"
            throw new stdgo.AnyInterface(("non-positive interval for Ticker.Reset" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/time/tick.go#L55"
        if ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r._f == null) {
            //"file:///Users/o/.go/go1.21.3/src/time/tick.go#L56"
            throw new stdgo.AnyInterface(("time: Reset called on uninitialized Ticker" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/time/tick.go#L58"
        stdgo._internal.time.Time__modtimer._modTimer((stdgo.Go.setRef((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_t_runtimetimerdott_runtimetimer.__type__stdgodot_internaldottimedotTime_t_runtimetimerdotT_runtimeTimer })) : stdgo.Ref<stdgo._internal.time.Time_t_runtimetimer.T_runtimeTimer>), stdgo._internal.time.Time__when._when(_d), (_d : stdgo.GoInt64), (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r._f, (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r._arg, (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r._seq);
    }
    @:keep
    @:tdfield
    static public function stop( _t:stdgo.Ref<stdgo._internal.time.Time_ticker.Ticker>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.time.Time_ticker.Ticker> = _t;
        //"file:///Users/o/.go/go1.21.3/src/time/tick.go#L45"
        stdgo._internal.time.Time__stoptimer._stopTimer((stdgo.Go.setRef((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_t_runtimetimerdott_runtimetimer.__type__stdgodot_internaldottimedotTime_t_runtimetimerdotT_runtimeTimer })) : stdgo.Ref<stdgo._internal.time.Time_t_runtimetimer.T_runtimeTimer>));
    }
}

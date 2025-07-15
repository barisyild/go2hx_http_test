package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
@:structInit @:using(stdgo._internal.time.Time_timer_static_extension.Timer_static_extension) @:using(stdgo._internal.time.Time_timer_static_extension.Timer_static_extension) class Timer {
    public var c : stdgo.Chan<stdgo._internal.time.Time_time.Time> = (null : stdgo.Chan<stdgo._internal.time.Time_time.Time>);
    public var _r : stdgo._internal.time.Time_t_runtimetimer.T_runtimeTimer = ({} : stdgo._internal.time.Time_t_runtimetimer.T_runtimeTimer);
    public function new(?c:stdgo.Chan<stdgo._internal.time.Time_time.Time>, ?_r:stdgo._internal.time.Time_t_runtimetimer.T_runtimeTimer) {
        if (c != null) this.c = c;
        if (_r != null) this._r = _r;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "c", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_timedottime.__type__stdgodot_internaldottimedotTime_timedotTime }) }, optional : false }, { name : "_r", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_t_runtimetimerdott_runtimetimer.__type__stdgodot_internaldottimedotTime_t_runtimetimerdotT_runtimeTimer }, optional : false }])));
    public function __copy__() {
        return new Timer(c, _r);
    }
}

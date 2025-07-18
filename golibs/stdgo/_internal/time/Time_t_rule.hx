package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
@:structInit @:using(stdgo._internal.time.Time_t_rule_static_extension.T_rule_static_extension) @:using(stdgo._internal.time.Time_t_rule_static_extension.T_rule_static_extension) class T_rule {
    public var _kind : stdgo._internal.time.Time_t_rulekind.T_ruleKind = ((0 : stdgo.GoInt) : stdgo._internal.time.Time_t_rulekind.T_ruleKind);
    public var _day : stdgo.GoInt = 0;
    public var _week : stdgo.GoInt = 0;
    public var _mon : stdgo.GoInt = 0;
    public var _time : stdgo.GoInt = 0;
    public function new(?_kind:stdgo._internal.time.Time_t_rulekind.T_ruleKind, ?_day:stdgo.GoInt, ?_week:stdgo.GoInt, ?_mon:stdgo.GoInt, ?_time:stdgo.GoInt) {
        if (_kind != null) this._kind = _kind;
        if (_day != null) this._day = _day;
        if (_week != null) this._week = _week;
        if (_mon != null) this._mon = _mon;
        if (_time != null) this._time = _time;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_kind", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_t_rulekinddott_rulekind.__type__stdgodot_internaldottimedotTime_t_rulekinddotT_ruleKind }, optional : false }, { name : "_day", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_week", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_mon", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_time", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new T_rule(_kind, _day, _week, _mon, _time);
    }
}

package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_t_cpustatsaggregate_static_extension.T_cpuStatsAggregate_static_extension) @:using(stdgo._internal.runtime.Runtime_t_cpustatsaggregate_static_extension.T_cpuStatsAggregate_static_extension) class T_cpuStatsAggregate {
    @:embedded
    public var _cpuStats : stdgo._internal.runtime.Runtime_t_cpustats.T_cpuStats = ({} : stdgo._internal.runtime.Runtime_t_cpustats.T_cpuStats);
    public function new(?_cpuStats:stdgo._internal.runtime.Runtime_t_cpustats.T_cpuStats) {
        if (_cpuStats != null) this._cpuStats = _cpuStats;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_cpuStats", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotruntimedotruntime_t_cpustatsdott_cpustats.__type__stdgodot_internaldotruntimedotRuntime_t_cpustatsdotT_cpuStats }, optional : false }])));
    public var _accumulate(get, never) : (stdgo.GoInt64, Bool) -> Void;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__accumulate():(stdgo.GoInt64, Bool) -> Void return @:check32 this._cpuStats._accumulate;
    public function __copy__() {
        return new T_cpuStatsAggregate(_cpuStats);
    }
}

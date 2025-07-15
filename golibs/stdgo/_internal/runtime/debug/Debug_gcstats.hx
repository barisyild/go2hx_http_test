package stdgo._internal.runtime.debug;
@:structInit @:using(stdgo._internal.runtime.debug.Debug_gcstats_static_extension.GCStats_static_extension) @:using(stdgo._internal.runtime.debug.Debug_gcstats_static_extension.GCStats_static_extension) class GCStats {
    public var lastGC : stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
    public var numGC : stdgo.GoInt64 = 0;
    public var pauseTotal : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var pause : stdgo.Slice<stdgo._internal.time.Time_duration.Duration> = (null : stdgo.Slice<stdgo._internal.time.Time_duration.Duration>);
    public var pauseEnd : stdgo.Slice<stdgo._internal.time.Time_time.Time> = (null : stdgo.Slice<stdgo._internal.time.Time_time.Time>);
    public var pauseQuantiles : stdgo.Slice<stdgo._internal.time.Time_duration.Duration> = (null : stdgo.Slice<stdgo._internal.time.Time_duration.Duration>);
    public function new(?lastGC:stdgo._internal.time.Time_time.Time, ?numGC:stdgo.GoInt64, ?pauseTotal:stdgo._internal.time.Time_duration.Duration, ?pause:stdgo.Slice<stdgo._internal.time.Time_duration.Duration>, ?pauseEnd:stdgo.Slice<stdgo._internal.time.Time_time.Time>, ?pauseQuantiles:stdgo.Slice<stdgo._internal.time.Time_duration.Duration>) {
        if (lastGC != null) this.lastGC = lastGC;
        if (numGC != null) this.numGC = numGC;
        if (pauseTotal != null) this.pauseTotal = pauseTotal;
        if (pause != null) this.pause = pause;
        if (pauseEnd != null) this.pauseEnd = pauseEnd;
        if (pauseQuantiles != null) this.pauseQuantiles = pauseQuantiles;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "lastGC", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_timedottime.__type__stdgodot_internaldottimedotTime_timedotTime }, optional : false }, { name : "numGC", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false }, { name : "pauseTotal", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration }, optional : false }, { name : "pause", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration }) }, optional : false }, { name : "pauseEnd", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_timedottime.__type__stdgodot_internaldottimedotTime_timedotTime }) }, optional : false }, { name : "pauseQuantiles", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration }) }, optional : false }])));
    public function __copy__() {
        return new GCStats(lastGC, numGC, pauseTotal, pause, pauseEnd, pauseQuantiles);
    }
}

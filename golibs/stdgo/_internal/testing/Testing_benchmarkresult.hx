package stdgo._internal.testing;
@:structInit @:using(stdgo._internal.testing.Testing_benchmarkresult_static_extension.BenchmarkResult_static_extension) @:using(stdgo._internal.testing.Testing_benchmarkresult_static_extension.BenchmarkResult_static_extension) class BenchmarkResult {
    public var n : stdgo.GoInt = 0;
    public var t : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var bytes : stdgo.GoInt64 = 0;
    public var memAllocs : stdgo.GoUInt64 = 0;
    public var memBytes : stdgo.GoUInt64 = 0;
    public var extra : stdgo.GoMap<stdgo.GoString, stdgo.GoFloat64> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoFloat64>);
    public function new(?n:stdgo.GoInt, ?t:stdgo._internal.time.Time_duration.Duration, ?bytes:stdgo.GoInt64, ?memAllocs:stdgo.GoUInt64, ?memBytes:stdgo.GoUInt64, ?extra:stdgo.GoMap<stdgo.GoString, stdgo.GoFloat64>) {
        if (n != null) this.n = n;
        if (t != null) this.t = t;
        if (bytes != null) this.bytes = bytes;
        if (memAllocs != null) this.memAllocs = memAllocs;
        if (memBytes != null) this.memBytes = memBytes;
        if (extra != null) this.extra = extra;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "n", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "t", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration }, optional : false }, { name : "bytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false }, { name : "memAllocs", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint64_kind) }, optional : false }, { name : "memBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint64_kind) }, optional : false }, { name : "extra", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(float64_kind) }) }, optional : false }])));
    public function __copy__() {
        return new BenchmarkResult(n, t, bytes, memAllocs, memBytes, extra);
    }
}

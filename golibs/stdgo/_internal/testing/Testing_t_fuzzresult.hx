package stdgo._internal.testing;
@:structInit @:using(stdgo._internal.testing.Testing_t_fuzzresult_static_extension.T_fuzzResult_static_extension) @:using(stdgo._internal.testing.Testing_t_fuzzresult_static_extension.T_fuzzResult_static_extension) class T_fuzzResult {
    public var n : stdgo.GoInt = 0;
    public var t : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var error : stdgo.Error = (null : stdgo.Error);
    public function new(?n:stdgo.GoInt, ?t:stdgo._internal.time.Time_duration.Duration, ?error:stdgo.Error) {
        if (n != null) this.n = n;
        if (t != null) this.t = t;
        if (error != null) this.error = error;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "n", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "t", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration }, optional : false }, { name : "error", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }, optional : false }])));
    public function __copy__() {
        return new T_fuzzResult(n, t, error);
    }
}

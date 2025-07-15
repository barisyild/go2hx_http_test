package stdgo._internal.testing;
@:structInit @:using(stdgo._internal.testing.Testing_t_durationorcountflag_static_extension.T_durationOrCountFlag_static_extension) @:using(stdgo._internal.testing.Testing_t_durationorcountflag_static_extension.T_durationOrCountFlag_static_extension) class T_durationOrCountFlag {
    public var _d : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var _n : stdgo.GoInt = 0;
    public var _allowZero : Bool = false;
    public function new(?_d:stdgo._internal.time.Time_duration.Duration, ?_n:stdgo.GoInt, ?_allowZero:Bool) {
        if (_d != null) this._d = _d;
        if (_n != null) this._n = _n;
        if (_allowZero != null) this._allowZero = _allowZero;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_d", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration }, optional : false }, { name : "_n", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_allowZero", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public function __copy__() {
        return new T_durationOrCountFlag(_d, _n, _allowZero);
    }
}

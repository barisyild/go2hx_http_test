package stdgo._internal.math.rand;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.math.Math;
@:structInit @:using(stdgo._internal.math.rand.Rand_t_rngsource_static_extension.T_rngSource_static_extension) @:using(stdgo._internal.math.rand.Rand_t_rngsource_static_extension.T_rngSource_static_extension) class T_rngSource {
    public var _tap : stdgo.GoInt = 0;
    public var _feed : stdgo.GoInt = 0;
    public var _vec : stdgo.GoArray<stdgo.GoInt64> = new stdgo.GoArray<stdgo.GoInt64>(607, 607).__setNumber64__();
    public function new(?_tap:stdgo.GoInt, ?_feed:stdgo.GoInt, ?_vec:stdgo.GoArray<stdgo.GoInt64>) {
        if (_tap != null) this._tap = _tap;
        if (_feed != null) this._feed = _feed;
        if (_vec != null) this._vec = _vec;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_tap", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_feed", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_vec", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, 607) }, optional : false }])));
    public function __copy__() {
        return new T_rngSource(_tap, _feed, _vec);
    }
}

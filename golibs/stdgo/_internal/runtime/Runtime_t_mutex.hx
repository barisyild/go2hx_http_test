package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_t_mutex_static_extension.T_mutex_static_extension) @:using(stdgo._internal.runtime.Runtime_t_mutex_static_extension.T_mutex_static_extension) class T_mutex {
    @:embedded
    public var _lockRankStruct : stdgo._internal.runtime.Runtime_t_lockrankstruct.T_lockRankStruct = ({} : stdgo._internal.runtime.Runtime_t_lockrankstruct.T_lockRankStruct);
    public function new(?_lockRankStruct:stdgo._internal.runtime.Runtime_t_lockrankstruct.T_lockRankStruct) {
        if (_lockRankStruct != null) this._lockRankStruct = _lockRankStruct;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_lockRankStruct", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotruntimedotruntime_t_lockrankstructdott_lockrankstruct.__type__stdgodot_internaldotruntimedotRuntime_t_lockrankstructdotT_lockRankStruct }, optional : false }])));
    public function __copy__() {
        return new T_mutex(_lockRankStruct);
    }
}

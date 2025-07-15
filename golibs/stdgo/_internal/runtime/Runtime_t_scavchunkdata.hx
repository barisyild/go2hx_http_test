package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_t_scavchunkdata_static_extension.T_scavChunkData_static_extension) @:using(stdgo._internal.runtime.Runtime_t_scavchunkdata_static_extension.T_scavChunkData_static_extension) class T_scavChunkData {
    @:embedded
    public var _scavChunkFlags : stdgo._internal.runtime.Runtime_t_scavchunkflags.T_scavChunkFlags = ((0 : stdgo.GoUInt8) : stdgo._internal.runtime.Runtime_t_scavchunkflags.T_scavChunkFlags);
    public function new(?_scavChunkFlags:stdgo._internal.runtime.Runtime_t_scavchunkflags.T_scavChunkFlags) {
        if (_scavChunkFlags != null) this._scavChunkFlags = _scavChunkFlags;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_scavChunkFlags", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotruntimedotruntime_t_scavchunkflagsdott_scavchunkflags.__type__stdgodot_internaldotruntimedotRuntime_t_scavchunkflagsdotT_scavChunkFlags }, optional : false }])));
    public function __copy__() {
        return new T_scavChunkData(_scavChunkFlags);
    }
}

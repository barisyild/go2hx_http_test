package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_t_funcinfo_static_extension.T_funcInfo_static_extension) @:using(stdgo._internal.runtime.Runtime_t_funcinfo_static_extension.T_funcInfo_static_extension) class T_funcInfo {
    @:embedded
    public var __func : stdgo.Ref<stdgo._internal.runtime.Runtime_t__func.T__func> = (null : stdgo.Ref<stdgo._internal.runtime.Runtime_t__func.T__func>);
    public function new(?__func:stdgo.Ref<stdgo._internal.runtime.Runtime_t__func.T__func>) {
        if (__func != null) this.__func = __func;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "__func", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotruntimedotruntime_t__funcdott__func.__type__stdgodot_internaldotruntimedotRuntime_t__funcdotT__func }) }, optional : false }])));
    public var _funcInfo(get, never) : () -> stdgo._internal.runtime.Runtime_t_funcinfo.T_funcInfo;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__funcInfo():() -> stdgo._internal.runtime.Runtime_t_funcinfo.T_funcInfo return @:check32 this.__func._funcInfo;
    public var _isInlined(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__isInlined():() -> Bool return @:check32 this.__func._isInlined;
    public function __copy__() {
        return new T_funcInfo(__func);
    }
}

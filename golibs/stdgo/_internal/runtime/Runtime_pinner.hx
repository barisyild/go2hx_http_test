package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_pinner_static_extension.Pinner_static_extension) @:using(stdgo._internal.runtime.Runtime_pinner_static_extension.Pinner_static_extension) class Pinner {
    @:embedded
    public var _pinner : stdgo.Ref<stdgo._internal.runtime.Runtime_t_pinner.T_pinner> = (null : stdgo.Ref<stdgo._internal.runtime.Runtime_t_pinner.T_pinner>);
    public function new(?_pinner:stdgo.Ref<stdgo._internal.runtime.Runtime_t_pinner.T_pinner>) {
        if (_pinner != null) this._pinner = _pinner;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_pinner", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotruntimedotruntime_t_pinnerdott_pinner.__type__stdgodot_internaldotruntimedotRuntime_t_pinnerdotT_pinner }) }, optional : false }])));
    public var _unpin(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__unpin():() -> Void return @:check32 this._pinner._unpin;
    public function __copy__() {
        return new Pinner(_pinner);
    }
}

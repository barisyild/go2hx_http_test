package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_t_m_static_extension.T_m_static_extension) @:using(stdgo._internal.runtime.Runtime_t_m_static_extension.T_m_static_extension) class T_m {
    @:embedded
    public var _dlogPerM : stdgo._internal.runtime.Runtime_t_dlogperm.T_dlogPerM = ({} : stdgo._internal.runtime.Runtime_t_dlogperm.T_dlogPerM);
    @:embedded
    public var _mOS : stdgo._internal.runtime.Runtime_t_mos.T_mOS = ({} : stdgo._internal.runtime.Runtime_t_mos.T_mOS);
    public function new(?_dlogPerM:stdgo._internal.runtime.Runtime_t_dlogperm.T_dlogPerM, ?_mOS:stdgo._internal.runtime.Runtime_t_mos.T_mOS) {
        if (_dlogPerM != null) this._dlogPerM = _dlogPerM;
        if (_mOS != null) this._mOS = _mOS;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_dlogPerM", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotruntimedotruntime_t_dlogpermdott_dlogperm.__type__stdgodot_internaldotruntimedotRuntime_t_dlogpermdotT_dlogPerM }, optional : false }, { name : "_mOS", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotruntimedotruntime_t_mosdott_mos.__type__stdgodot_internaldotruntimedotRuntime_t_mosdotT_mOS }, optional : false }])));
    public function __copy__() {
        return new T_m(_dlogPerM, _mOS);
    }
}

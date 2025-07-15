package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_t_tracebuf_static_extension.T_traceBuf_static_extension) @:using(stdgo._internal.runtime.Runtime_t_tracebuf_static_extension.T_traceBuf_static_extension) class T_traceBuf {
    @:embedded
    public var _traceBufHeader : stdgo._internal.runtime.Runtime_t_tracebufheader.T_traceBufHeader = ({} : stdgo._internal.runtime.Runtime_t_tracebufheader.T_traceBufHeader);
    public function new(?_traceBufHeader:stdgo._internal.runtime.Runtime_t_tracebufheader.T_traceBufHeader) {
        if (_traceBufHeader != null) this._traceBufHeader = _traceBufHeader;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_traceBufHeader", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotruntimedotruntime_t_tracebufheaderdott_tracebufheader.__type__stdgodot_internaldotruntimedotRuntime_t_tracebufheaderdotT_traceBufHeader }, optional : false }])));
    public function __copy__() {
        return new T_traceBuf(_traceBufHeader);
    }
}

package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_t_stackobjectbufhdr_static_extension.T_stackObjectBufHdr_static_extension) @:using(stdgo._internal.runtime.Runtime_t_stackobjectbufhdr_static_extension.T_stackObjectBufHdr_static_extension) class T_stackObjectBufHdr {
    @:embedded
    public var _workbufhdr : stdgo._internal.runtime.Runtime_t_workbufhdr.T_workbufhdr = ({} : stdgo._internal.runtime.Runtime_t_workbufhdr.T_workbufhdr);
    public function new(?_workbufhdr:stdgo._internal.runtime.Runtime_t_workbufhdr.T_workbufhdr) {
        if (_workbufhdr != null) this._workbufhdr = _workbufhdr;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_workbufhdr", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotruntimedotruntime_t_workbufhdrdott_workbufhdr.__type__stdgodot_internaldotruntimedotRuntime_t_workbufhdrdotT_workbufhdr }, optional : false }])));
    public function __copy__() {
        return new T_stackObjectBufHdr(_workbufhdr);
    }
}

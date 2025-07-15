package stdgo._internal.runtime.internal.sys;
@:structInit @:using(stdgo._internal.runtime.internal.sys.Sys__notinheap_static_extension.NotInHeap_static_extension) @:using(stdgo._internal.runtime.internal.sys.Sys__notinheap_static_extension.NotInHeap_static_extension) class NotInHeap {
    @:optional
    public var __0 : stdgo._internal.runtime.internal.sys.Sys_t_nih.T_nih = ({} : stdgo._internal.runtime.internal.sys.Sys_t_nih.T_nih);
    public function new(?__0:stdgo._internal.runtime.internal.sys.Sys_t_nih.T_nih) {
        if (__0 != null) this.__0 = __0;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "__0", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotruntimedotinternaldotsysdotsys_t_nihdott_nih.__type__stdgodot_internaldotruntimedotinternaldotsysdotSys_t_nihdotT_nih }, optional : false }])));
    public function __copy__() {
        return new NotInHeap(__0);
    }
}

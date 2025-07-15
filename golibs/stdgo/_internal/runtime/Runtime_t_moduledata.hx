package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_t_moduledata_static_extension.T_moduledata_static_extension) @:using(stdgo._internal.runtime.Runtime_t_moduledata_static_extension.T_moduledata_static_extension) class T_moduledata {
    @:embedded
    public var notInHeap : stdgo._internal.runtime.internal.sys.Sys_notinheap.NotInHeap = ({} : stdgo._internal.runtime.internal.sys.Sys_notinheap.NotInHeap);
    public function new(?notInHeap:stdgo._internal.runtime.internal.sys.Sys_notinheap.NotInHeap) {
        if (notInHeap != null) this.notInHeap = notInHeap;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "notInHeap", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotruntimedotinternaldotsysdotsys_notinheapdotnotinheap.__type__stdgodot_internaldotruntimedotinternaldotsysdotSys_notinheapdotNotInHeap }, optional : false }])));
    public function __copy__() {
        return new T_moduledata(notInHeap);
    }
}

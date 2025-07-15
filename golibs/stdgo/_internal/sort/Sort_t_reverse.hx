package stdgo._internal.sort;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.math.bits.Bits;
@:structInit @:using(stdgo._internal.sort.Sort_t_reverse_static_extension.T_reverse_static_extension) @:using(stdgo._internal.sort.Sort_t_reverse_static_extension.T_reverse_static_extension) class T_reverse {
    @:embedded
    public var interface_ : stdgo._internal.sort.Sort_interface.Interface = (null : stdgo._internal.sort.Sort_interface.Interface);
    public function new(?interface_:stdgo._internal.sort.Sort_interface.Interface) {
        if (interface_ != null) this.interface_ = interface_;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "interface_", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsortdotsort_interfacedotinterface.__type__stdgodot_internaldotsortdotSort_interfacedotInterface }, optional : false }])));
    public var len(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_len():() -> stdgo.GoInt return @:check31 (this.interface_ ?? throw stdgo.Error._nullPointerDereference.__underlying__()).len;
    public var swap(get, never) : (stdgo.GoInt, stdgo.GoInt) -> Void;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_swap():(stdgo.GoInt, stdgo.GoInt) -> Void return @:check31 (this.interface_ ?? throw stdgo.Error._nullPointerDereference.__underlying__()).swap;
    public function __copy__() {
        return new T_reverse(interface_);
    }
}

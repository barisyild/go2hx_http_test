package stdgo._internal.sort;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.math.bits.Bits;
@:structInit @:using(stdgo._internal.sort.Sort_t_lessswap_static_extension.T_lessSwap_static_extension) @:using(stdgo._internal.sort.Sort_t_lessswap_static_extension.T_lessSwap_static_extension) class T_lessSwap {
    public var less : (stdgo.GoInt, stdgo.GoInt) -> Bool = null;
    public var swap : (stdgo.GoInt, stdgo.GoInt) -> Void = null;
    public function new(?less:(stdgo.GoInt, stdgo.GoInt) -> Bool, ?swap:(stdgo.GoInt, stdgo.GoInt) -> Void) {
        if (less != null) this.less = less;
        if (swap != null) this.swap = swap;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "less", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(int_kind), stdgo._internal.internal.reflect.GoType.basic(int_kind)] }, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false }, { name : "swap", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(int_kind), stdgo._internal.internal.reflect.GoType.basic(int_kind)] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false }])));
    public function __copy__() {
        return new T_lessSwap(less, swap);
    }
}

package stdgo._internal.internal.fmtsort;
import stdgo._internal.sort.Sort;
import stdgo._internal.reflect.Reflect;
class SortedMap_asInterface {
    @:keep
    public dynamic function swap(_i:stdgo.GoInt, _j:stdgo.GoInt):Void @:_0 __self__.value.swap(_i, _j);
    @:keep
    public dynamic function less(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool return @:_0 __self__.value.less(_i, _j);
    @:keep
    public dynamic function len():stdgo.GoInt return @:_0 __self__.value.len();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.fmtsort.Fmtsort_sortedmappointer.SortedMapPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

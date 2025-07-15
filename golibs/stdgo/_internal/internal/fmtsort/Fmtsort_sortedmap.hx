package stdgo._internal.internal.fmtsort;
import stdgo._internal.sort.Sort;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(stdgo._internal.internal.fmtsort.Fmtsort_sortedmap_static_extension.SortedMap_static_extension) @:using(stdgo._internal.internal.fmtsort.Fmtsort_sortedmap_static_extension.SortedMap_static_extension) class SortedMap {
    public var key : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value> = (null : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>);
    public var value : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value> = (null : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>);
    public function new(?key:stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>, ?value:stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>) {
        if (key != null) this.key = key;
        if (value != null) this.value = value;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "key", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue }) }, optional : false }, { name : "value", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue }) }, optional : false }])));
    public function __copy__() {
        return new SortedMap(key, value);
    }
}

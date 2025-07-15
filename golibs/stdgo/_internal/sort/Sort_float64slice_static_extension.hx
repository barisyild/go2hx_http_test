package stdgo._internal.sort;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.math.bits.Bits;
@:keep @:allow(stdgo._internal.sort.Sort.Float64Slice_asInterface) class Float64Slice_static_extension {
    @:keep
    @:tdfield
    static public function sort( _x:stdgo._internal.sort.Sort_float64slice.Float64Slice):Void {
        @:recv var _x:stdgo._internal.sort.Sort_float64slice.Float64Slice = _x;
        //"file:///Users/o/.go/go1.21.3/src/sort/sort.go#L148"
        stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface(_x, _internal.gotype.Gotype___type__stdgodot_internaldotsortdotsort_float64slicedotfloat64slice.__type__stdgodot_internaldotsortdotSort_float64slicedotFloat64Slice));
    }
    @:keep
    @:tdfield
    static public function swap( _x:stdgo._internal.sort.Sort_float64slice.Float64Slice, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _x:stdgo._internal.sort.Sort_float64slice.Float64Slice = _x;
        {
            final __tmp__0 = _x[(_j : stdgo.GoInt)];
            final __tmp__1 = _x[(_i : stdgo.GoInt)];
            final __tmp__2 = _x;
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = _x;
            final __tmp__5 = (_j : stdgo.GoInt);
            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
        };
    }
    @:keep
    @:tdfield
    static public function less( _x:stdgo._internal.sort.Sort_float64slice.Float64Slice, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _x:stdgo._internal.sort.Sort_float64slice.Float64Slice = _x;
        //"file:///Users/o/.go/go1.21.3/src/sort/sort.go#L139"
        return ((_x[(_i : stdgo.GoInt)] < _x[(_j : stdgo.GoInt)] : Bool) || ((stdgo._internal.sort.Sort__isnan._isNaN(_x[(_i : stdgo.GoInt)]) && !stdgo._internal.sort.Sort__isnan._isNaN(_x[(_j : stdgo.GoInt)]) : Bool)) : Bool);
    }
    @:keep
    @:tdfield
    static public function len( _x:stdgo._internal.sort.Sort_float64slice.Float64Slice):stdgo.GoInt {
        @:recv var _x:stdgo._internal.sort.Sort_float64slice.Float64Slice = _x;
        //"file:///Users/o/.go/go1.21.3/src/sort/sort.go#L131"
        return (_x.length);
    }
    @:keep
    @:tdfield
    static public function search( _p:stdgo._internal.sort.Sort_float64slice.Float64Slice, _x:stdgo.GoFloat64):stdgo.GoInt {
        @:recv var _p:stdgo._internal.sort.Sort_float64slice.Float64Slice = _p;
        //"file:///Users/o/.go/go1.21.3/src/sort/search.go#L147"
        return stdgo._internal.sort.Sort_searchfloat64s.searchFloat64s(_p, _x);
    }
}

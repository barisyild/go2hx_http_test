package stdgo._internal.internal.fmtsort;
import stdgo._internal.sort.Sort;
import stdgo._internal.reflect.Reflect;
function sort(_mapValue:stdgo._internal.reflect.Reflect_value.Value):stdgo.Ref<stdgo._internal.internal.fmtsort.Fmtsort_sortedmap.SortedMap> {
        //"file:///Users/o/.go/go1.21.3/src/internal/fmtsort/sort.go#L52"
        if (_mapValue.type().kind() != ((21u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
            //"file:///Users/o/.go/go1.21.3/src/internal/fmtsort/sort.go#L53"
            return null;
        };
        var _n = @:assignType (_mapValue.len() : stdgo.GoInt);
        var _key = (new stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>((0 : stdgo.GoInt).toBasic(), _n, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _n ? (0 : stdgo.GoInt).toBasic() : _n : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_value.Value)]) : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>);
        var _value = (new stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>((0 : stdgo.GoInt).toBasic(), _n, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _n ? (0 : stdgo.GoInt).toBasic() : _n : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_value.Value)]) : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>);
        var _iter = _mapValue.mapRange();
        //"file:///Users/o/.go/go1.21.3/src/internal/fmtsort/sort.go#L62"
        while (_iter.next()) {
            _key = (_key.__append__(_iter.key()?.__copy__()) : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>);
            _value = (_value.__append__(_iter.value()?.__copy__()) : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>);
        };
        var _sorted = (stdgo.Go.setRef(({ key : _key, value : _value } : stdgo._internal.internal.fmtsort.Fmtsort_sortedmap.SortedMap), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotfmtsortdotfmtsort_sortedmapdotsortedmap.__type__stdgodot_internaldotinternaldotfmtsortdotFmtsort_sortedmapdotSortedMap })) : stdgo.Ref<stdgo._internal.internal.fmtsort.Fmtsort_sortedmap.SortedMap>);
        //"file:///Users/o/.go/go1.21.3/src/internal/fmtsort/sort.go#L70"
        stdgo._internal.sort.Sort_stable.stable(stdgo.Go.asInterface(_sorted, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotfmtsortdotfmtsort_sortedmapdotsortedmap.__type__stdgodot_internaldotinternaldotfmtsortdotFmtsort_sortedmapdotSortedMap })));
        //"file:///Users/o/.go/go1.21.3/src/internal/fmtsort/sort.go#L71"
        return _sorted;
    }

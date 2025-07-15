package stdgo._internal.sort;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.math.bits.Bits;
function float64sAreSorted(_x:stdgo.Slice<stdgo.GoFloat64>):Bool {
        //"file:///Users/o/.go/go1.21.3/src/sort/sort.go#L187"
        return stdgo._internal.sort.Sort_issorted.isSorted(stdgo.Go.asInterface((_x : stdgo._internal.sort.Sort_float64slice.Float64Slice), _internal.gotype.Gotype___type__stdgodot_internaldotsortdotsort_float64slicedotfloat64slice.__type__stdgodot_internaldotsortdotSort_float64slicedotFloat64Slice));
    }

package stdgo._internal.sort;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.math.bits.Bits;
function intsAreSorted(_x:stdgo.Slice<stdgo.GoInt>):Bool {
        //"file:///Users/o/.go/go1.21.3/src/sort/sort.go#L181"
        return stdgo._internal.sort.Sort_issorted.isSorted(stdgo.Go.asInterface((_x : stdgo._internal.sort.Sort_intslice.IntSlice), _internal.gotype.Gotype___type__stdgodot_internaldotsortdotsort_intslicedotintslice.__type__stdgodot_internaldotsortdotSort_intslicedotIntSlice));
    }

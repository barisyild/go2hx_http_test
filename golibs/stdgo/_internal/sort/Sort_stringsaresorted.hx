package stdgo._internal.sort;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.math.bits.Bits;
function stringsAreSorted(_x:stdgo.Slice<stdgo.GoString>):Bool {
        //"file:///Users/o/.go/go1.21.3/src/sort/sort.go#L192"
        return stdgo._internal.sort.Sort_issorted.isSorted(stdgo.Go.asInterface((_x : stdgo._internal.sort.Sort_stringslice.StringSlice), _internal.gotype.Gotype___type__stdgodot_internaldotsortdotsort_stringslicedotstringslice.__type__stdgodot_internaldotsortdotSort_stringslicedotStringSlice));
    }

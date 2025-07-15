package stdgo._internal.sort;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.math.bits.Bits;
function searchStrings(_a:stdgo.Slice<stdgo.GoString>, _x:stdgo.GoString):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/sort/search.go#L140"
        return stdgo._internal.sort.Sort_search.search((_a.length), function(_i:stdgo.GoInt):Bool {
            //"file:///Users/o/.go/go1.21.3/src/sort/search.go#L140"
            return (_a[(_i : stdgo.GoInt)] >= _x : Bool);
        });
    }

package stdgo._internal.sort;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.math.bits.Bits;
function sort(_data:stdgo._internal.sort.Sort_interface.Interface):Void {
        var _n = @:assignType (_data.len() : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/sort/sort.go#L47"
        if ((_n <= (1 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/sort/sort.go#L48"
            return;
        };
        var _limit = @:assignType (stdgo._internal.math.bits.Bits_len.len((_n : stdgo.GoUInt)) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/sort/sort.go#L51"
        stdgo._internal.sort.Sort__pdqsort._pdqsort(_data, (0 : stdgo.GoInt), _n, _limit);
    }

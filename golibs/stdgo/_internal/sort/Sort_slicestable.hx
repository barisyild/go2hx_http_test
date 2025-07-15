package stdgo._internal.sort;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.math.bits.Bits;
function sliceStable(_x:stdgo.AnyInterface, _less:(stdgo.GoInt, stdgo.GoInt) -> Bool):Void {
        var _rv = @:assignType (stdgo._internal.internal.reflectlite.Reflectlite_valueof.valueOf(_x)?.__copy__() : stdgo._internal.internal.reflectlite.Reflectlite_value.Value);
        var _swap = @:assignType (stdgo._internal.internal.reflectlite.Reflectlite_swapper.swapper(_x) : (stdgo.GoInt, stdgo.GoInt) -> Void);
        //"file:///Users/o/.go/go1.21.3/src/sort/slice.go#L38"
        stdgo._internal.sort.Sort__stable_func._stable_func((new stdgo._internal.sort.Sort_t_lessswap.T_lessSwap(_less, _swap) : stdgo._internal.sort.Sort_t_lessswap.T_lessSwap), _rv.len());
    }

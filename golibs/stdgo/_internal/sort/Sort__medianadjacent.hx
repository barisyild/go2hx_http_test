package stdgo._internal.sort;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.math.bits.Bits;
function _medianAdjacent(_data:stdgo._internal.sort.Sort_interface.Interface, _a:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L316"
        return stdgo._internal.sort.Sort__median._median(_data, (_a - (1 : stdgo.GoInt) : stdgo.GoInt), _a, (_a + (1 : stdgo.GoInt) : stdgo.GoInt), _swaps);
    }

package stdgo._internal.sort;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.math.bits.Bits;
function _order2(_data:stdgo._internal.sort.Sort_interface.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } {
        //"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L299"
        if (_data.less(_b, _a)) {
            //"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L300"
            _swaps.value++;
            //"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L301"
            return { _0 : _b, _1 : _a };
        };
        //"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L303"
        return { _0 : _a, _1 : _b };
    }

package stdgo._internal.sort;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.math.bits.Bits;
function _median(_data:stdgo._internal.sort.Sort_interface.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _c:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt {
        {
            var __tmp__ = stdgo._internal.sort.Sort__order2._order2(_data, _a, _b, _swaps);
            _a = @:tmpset0 __tmp__._0;
            _b = @:tmpset0 __tmp__._1;
        };
        {
            var __tmp__ = stdgo._internal.sort.Sort__order2._order2(_data, _b, _c, _swaps);
            _b = @:tmpset0 __tmp__._0;
            _c = @:tmpset0 __tmp__._1;
        };
        {
            var __tmp__ = stdgo._internal.sort.Sort__order2._order2(_data, _a, _b, _swaps);
            _a = @:tmpset0 __tmp__._0;
            _b = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L311"
        return _b;
    }

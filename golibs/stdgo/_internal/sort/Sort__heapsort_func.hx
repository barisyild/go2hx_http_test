package stdgo._internal.sort;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.math.bits.Bits;
function _heapSort_func(_data:stdgo._internal.sort.Sort_t_lessswap.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _first = @:assignType (_a : stdgo.GoInt);
        var _lo = @:assignType (0 : stdgo.GoInt);
        var _hi = @:assignType (_b - _a : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/sort/zsortfunc.go#L44"
        {
            var _i = @:assignType (((_hi - (1 : stdgo.GoInt) : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/sort/zsortfunc.go#L45"
                stdgo._internal.sort.Sort__siftdown_func._siftDown_func(_data.__copy__(), _i, _hi, _first);
                _i--;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/sort/zsortfunc.go#L49"
        {
            var _i = @:assignType (_hi - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/sort/zsortfunc.go#L50"
                _data.swap(_first, (_first + _i : stdgo.GoInt));
//"file:///Users/o/.go/go1.21.3/src/sort/zsortfunc.go#L51"
                stdgo._internal.sort.Sort__siftdown_func._siftDown_func(_data.__copy__(), _lo, _i, _first);
                _i--;
            };
        };
    }

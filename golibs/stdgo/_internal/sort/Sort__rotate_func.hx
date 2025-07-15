package stdgo._internal.sort;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.math.bits.Bits;
function _rotate_func(_data:stdgo._internal.sort.Sort_t_lessswap.T_lessSwap, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _i = @:assignType (_m - _a : stdgo.GoInt);
        var _j = @:assignType (_b - _m : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/sort/zsortfunc.go#L468"
        while (_i != (_j)) {
            //"file:///Users/o/.go/go1.21.3/src/sort/zsortfunc.go#L469"
            if ((_i > _j : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/sort/zsortfunc.go#L470"
                stdgo._internal.sort.Sort__swaprange_func._swapRange_func(_data?.__copy__(), (_m - _i : stdgo.GoInt), _m, _j);
                _i = (_i - (_j) : stdgo.GoInt);
            } else {
                //"file:///Users/o/.go/go1.21.3/src/sort/zsortfunc.go#L473"
                stdgo._internal.sort.Sort__swaprange_func._swapRange_func(_data?.__copy__(), (_m - _i : stdgo.GoInt), ((_m + _j : stdgo.GoInt) - _i : stdgo.GoInt), _i);
                _j = (_j - (_i) : stdgo.GoInt);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/sort/zsortfunc.go#L478"
        stdgo._internal.sort.Sort__swaprange_func._swapRange_func(_data?.__copy__(), (_m - _i : stdgo.GoInt), _m, _i);
    }

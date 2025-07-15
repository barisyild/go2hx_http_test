package stdgo._internal.sort;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.math.bits.Bits;
function _reverseRange_func(_data:stdgo._internal.sort.Sort_t_lessswap.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _i = @:assignType (_a : stdgo.GoInt);
        var _j = @:assignType (_b - (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/sort/zsortfunc.go#L322"
        while ((_i < _j : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/sort/zsortfunc.go#L323"
            _data.swap(_i, _j);
            //"file:///Users/o/.go/go1.21.3/src/sort/zsortfunc.go#L324"
            _i++;
            //"file:///Users/o/.go/go1.21.3/src/sort/zsortfunc.go#L325"
            _j--;
        };
    }

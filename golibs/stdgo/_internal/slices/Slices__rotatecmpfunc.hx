package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function _rotateCmpFunc__tp__0<E>(_data:stdgo.Slice<E>, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt, _cmp:(E, E) -> stdgo.GoInt):Void {
        var _i = (_m - _a : stdgo.GoInt);
        var _j = (_b - _m : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L468"
        while (_i != (_j)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L469"
            if ((_i > _j : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L470"
                stdgo._internal.slices.Slices__swaprangecmpfunc._swapRangeCmpFunc(_data, (_m - _i : stdgo.GoInt), _m, _j, _cmp);
                _i = (_i - (_j) : stdgo.GoInt);
            } else {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L473"
                stdgo._internal.slices.Slices__swaprangecmpfunc._swapRangeCmpFunc(_data, (_m - _i : stdgo.GoInt), ((_m + _j : stdgo.GoInt) - _i : stdgo.GoInt), _i, _cmp);
                _j = (_j - (_i) : stdgo.GoInt);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L478"
        stdgo._internal.slices.Slices__swaprangecmpfunc._swapRangeCmpFunc(_data, (_m - _i : stdgo.GoInt), _m, _i, _cmp);
    }
overload inline extern function _rotateCmpFunc<E>(_data:stdgo.Slice<E>, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt, _cmp:(E, E) -> stdgo.GoInt):Void _rotateCmpFunc__tp__0(_data, _a, _m, _b, _cmp);

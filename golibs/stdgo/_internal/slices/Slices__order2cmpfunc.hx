package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function _order2CmpFunc__tp__0<E>(_data:stdgo.Slice<E>, _a:stdgo.GoInt, _b:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>, _cmp:(E, E) -> stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L299"
        if ((_cmp(_data[(_b : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) < (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L300"
            _swaps.value++;
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L301"
            return { _0 : _b, _1 : _a };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L303"
        return { _0 : _a, _1 : _b };
    }
overload inline extern function _order2CmpFunc<E>(_data:stdgo.Slice<E>, _a:stdgo.GoInt, _b:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>, _cmp:(E, E) -> stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } return _order2CmpFunc__tp__0(_data, _a, _b, _swaps, _cmp);

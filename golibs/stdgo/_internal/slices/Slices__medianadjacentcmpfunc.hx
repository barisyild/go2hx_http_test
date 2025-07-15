package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function _medianAdjacentCmpFunc__tp__0<E>(_data:stdgo.Slice<E>, _a:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>, _cmp:(E, E) -> stdgo.GoInt):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L316"
        return (stdgo._internal.slices.Slices__mediancmpfunc._medianCmpFunc(_data, (_a - (1 : stdgo.GoInt) : stdgo.GoInt), _a, (_a + (1 : stdgo.GoInt) : stdgo.GoInt), _swaps, _cmp) : stdgo.GoInt);
    }
overload inline extern function _medianAdjacentCmpFunc<E>(_data:stdgo.Slice<E>, _a:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>, _cmp:(E, E) -> stdgo.GoInt):stdgo.GoInt return _medianAdjacentCmpFunc__tp__0(_data, _a, _swaps, _cmp);

package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function sortStableFunc__tp__0<E>(_x:stdgo.Slice<E>, _cmp:(E, E) -> stdgo.GoInt):Void {
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L34"
        stdgo._internal.slices.Slices__stablecmpfunc._stableCmpFunc(_x, (_x.length), _cmp);
    }
overload inline extern function sortStableFunc<E>(_x:stdgo.Slice<E>, _cmp:(E, E) -> stdgo.GoInt):Void sortStableFunc__tp__0(_x, _cmp);

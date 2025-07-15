package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function containsFunc__tp__0<E>(_s:stdgo.Slice<E>, _f:E -> Bool):Bool {
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L122"
        return ((stdgo._internal.slices.Slices_indexfunc.indexFunc(_s, _f) : stdgo.GoInt) >= (0 : stdgo.GoInt) : Bool);
    }
overload inline extern function containsFunc<E>(_s:stdgo.Slice<E>, _f:E -> Bool):Bool return containsFunc__tp__0(_s, _f);

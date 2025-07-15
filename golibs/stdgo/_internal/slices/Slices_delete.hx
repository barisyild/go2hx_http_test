package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function delete__tp__0<E>(_s:stdgo.Slice<E>, _i:stdgo.GoInt, _j:stdgo.GoInt):stdgo.Slice<E> {
        (_s.__slice__(_i, _j) : stdgo.Slice<E>);
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L221"
        return ((_s.__slice__(0, _i) : stdgo.Slice<E>).__append__(...((_s.__slice__(_j) : stdgo.Slice<E>) : Array<E>)) : stdgo.Slice<E>);
    }
overload inline extern function delete<E>(_s:stdgo.Slice<E>, _i:stdgo.GoInt, _j:stdgo.GoInt):stdgo.Slice<E> return delete__tp__0(_s, _i, _j);

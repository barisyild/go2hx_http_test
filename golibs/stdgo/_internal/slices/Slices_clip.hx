package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function clip__tp__0<E>(_s:stdgo.Slice<E>):stdgo.Slice<E> {
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L403"
        return (_s.__slice__(0, (_s.length), (_s.length)) : stdgo.Slice<E>);
    }
overload inline extern function clip<E>(_s:stdgo.Slice<E>):stdgo.Slice<E> return clip__tp__0(_s);

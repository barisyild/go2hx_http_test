package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function clone__tp__0<E>(_s:stdgo.Slice<E>):stdgo.Slice<E> {
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L340"
        if (_s == null) {
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L341"
            return (null : stdgo.Slice<E>);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L343"
        return ((new stdgo.Slice<E>(0, 0, ...[]) : stdgo.Slice<E>).__append__(...(_s : Array<E>)) : stdgo.Slice<E>);
    }
overload inline extern function clone<E>(_s:stdgo.Slice<E>):stdgo.Slice<E> return clone__tp__0(_s);

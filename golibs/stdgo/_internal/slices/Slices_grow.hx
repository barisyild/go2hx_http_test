package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function grow__tp__0<E>(_s:stdgo.Slice<E>, _n:stdgo.GoInt):stdgo.Slice<E> {
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L392"
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L393"
            throw stdgo.Go.toInterface(("cannot be negative" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L395"
        {
            _n = (_n - ((_s.capacity - (_s.length) : stdgo.GoInt)) : stdgo.GoInt);
            if ((_n > (0 : stdgo.GoInt) : Bool)) {
                _s = (((_s.__slice__(0, _s.capacity) : stdgo.Slice<E>).__append__(...((new stdgo.Slice<E>((_n : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<E>) : Array<E>)) : stdgo.Slice<E>).__slice__(0, (_s.length)) : stdgo.Slice<E>);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L398"
        return _s;
    }
overload inline extern function grow<E>(_s:stdgo.Slice<E>, _n:stdgo.GoInt):stdgo.Slice<E> return grow__tp__0(_s, _n);

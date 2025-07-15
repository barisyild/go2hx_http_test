package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function compactFunc__tp__0<E>(_s:stdgo.Slice<E>, _eq:(E, E) -> Bool):stdgo.Slice<E> {
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L372"
        if (((_s.length) < (2 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L373"
            return _s;
        };
        var _i = (1 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L376"
        {
            var _k = (1 : stdgo.GoInt);
            while ((_k < (_s.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L377"
                if (!_eq(_s[(_k : stdgo.GoInt)], _s[(_k - (1 : stdgo.GoInt) : stdgo.GoInt)])) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L378"
                    if (_i != (_k)) {
                        _s[(_i : stdgo.GoInt)] = _s[(_k : stdgo.GoInt)];
                    };
                    //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L381"
                    _i++;
                };
                _k++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L384"
        return (_s.__slice__(0, _i) : stdgo.Slice<E>);
    }
overload inline extern function compactFunc<E>(_s:stdgo.Slice<E>, _eq:(E, E) -> Bool):stdgo.Slice<E> return compactFunc__tp__0(_s, _eq);

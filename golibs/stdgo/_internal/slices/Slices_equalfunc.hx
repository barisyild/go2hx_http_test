package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function equalFunc__tp__0<E1, E2>(_s1:stdgo.Slice<E1>, _s2:stdgo.Slice<E2>, _eq:(E1, E2) -> Bool):Bool {
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L36"
        if ((_s1.length) != ((_s2.length))) {
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L37"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L39"
        if (_s1 != null) for (_i => _v1 in _s1) {
            var _v2 = (_s2[(_i : stdgo.GoInt)] : E2);
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L41"
            if (!_eq(_v1, _v2)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L42"
                return false;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L45"
        return true;
    }
overload inline extern function equalFunc<E1, E2>(_s1:stdgo.Slice<E1>, _s2:stdgo.Slice<E2>, _eq:(E1, E2) -> Bool):Bool return equalFunc__tp__0(_s1, _s2, _eq);

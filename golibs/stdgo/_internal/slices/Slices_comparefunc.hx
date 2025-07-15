package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function compareFunc__tp__0<E1, E2>(_s1:stdgo.Slice<E1>, _s2:stdgo.Slice<E2>, _cmp:(E1, E2) -> stdgo.GoInt):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L77"
        if (_s1 != null) for (_i => _v1 in _s1) {
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L78"
            if ((_i >= (_s2.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L79"
                return (1 : stdgo.GoInt);
            };
            var _v2 = (_s2[(_i : stdgo.GoInt)] : E2);
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L82"
            {
                var _c = (_cmp(_v1, _v2) : stdgo.GoInt);
                if (_c != ((0 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L83"
                    return _c;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L86"
        if (((_s1.length) < (_s2.length) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L87"
            return (-1 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L89"
        return (0 : stdgo.GoInt);
    }
overload inline extern function compareFunc<E1, E2>(_s1:stdgo.Slice<E1>, _s2:stdgo.Slice<E2>, _cmp:(E1, E2) -> stdgo.GoInt):stdgo.GoInt return compareFunc__tp__0(_s1, _s2, _cmp);

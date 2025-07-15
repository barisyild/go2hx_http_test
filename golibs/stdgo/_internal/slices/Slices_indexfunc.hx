package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function indexFunc__tp__0<E>(_s:stdgo.Slice<E>, _f:E -> Bool):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L106"
        if (_s != null) for (_i => _ in _s) {
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L107"
            if (_f(_s[(_i : stdgo.GoInt)])) {
                //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L108"
                return _i;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L111"
        return (-1 : stdgo.GoInt);
    }
overload inline extern function indexFunc<E>(_s:stdgo.Slice<E>, _f:E -> Bool):stdgo.GoInt return indexFunc__tp__0(_s, _f);

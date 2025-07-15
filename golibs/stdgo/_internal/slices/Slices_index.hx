package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function index__tp__0(_s:stdgo.Slice<stdgo.Comparable>, _v:stdgo.Comparable):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L95"
        if (_s != null) for (_i => _ in _s) {
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L96"
            if (_v == (_s[(_i : stdgo.GoInt)])) {
                //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L97"
                return _i;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L100"
        return (-1 : stdgo.GoInt);
    }
overload inline extern function index(_s:stdgo.Slice<stdgo.Comparable>, _v:stdgo.Comparable):stdgo.GoInt return index__tp__0(_s, _v);

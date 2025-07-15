package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function equal__tp__0(_s1:stdgo.Slice<stdgo.Comparable>, _s2:stdgo.Slice<stdgo.Comparable>):Bool {
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L19"
        if ((_s1.length) != ((_s2.length))) {
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L20"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L22"
        if (_s1 != null) for (_i => _ in _s1) {
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L23"
            if (_s1[(_i : stdgo.GoInt)] != (_s2[(_i : stdgo.GoInt)])) {
                //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L24"
                return false;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L27"
        return true;
    }
overload inline extern function equal(_s1:stdgo.Slice<stdgo.Comparable>, _s2:stdgo.Slice<stdgo.Comparable>):Bool return equal__tp__0(_s1, _s2);

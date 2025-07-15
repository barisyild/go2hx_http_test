package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function contains__tp__0(_s:stdgo.Slice<stdgo.Comparable>, _v:stdgo.Comparable):Bool {
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L116"
        return ((stdgo._internal.slices.Slices_index.index(_s, _v) : stdgo.GoInt) >= (0 : stdgo.GoInt) : Bool);
    }
overload inline extern function contains(_s:stdgo.Slice<stdgo.Comparable>, _v:stdgo.Comparable):Bool return contains__tp__0(_s, _v);

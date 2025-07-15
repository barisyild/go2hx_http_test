package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function sortFunc__tp__0<E>(_x:stdgo.Slice<E>, _cmp:(E, E) -> stdgo.GoInt):Void {
        var _n = (_x.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L28"
        stdgo._internal.slices.Slices__pdqsortcmpfunc._pdqsortCmpFunc(_x, (0 : stdgo.GoInt), _n, stdgo._internal.math.bits.Bits_len.len((_n : stdgo.GoUInt)), _cmp);
    }
overload inline extern function sortFunc<E>(_x:stdgo.Slice<E>, _cmp:(E, E) -> stdgo.GoInt):Void sortFunc__tp__0(_x, _cmp);

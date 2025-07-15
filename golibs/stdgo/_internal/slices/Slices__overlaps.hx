package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function _overlaps__tp__0<E>(_a:stdgo.Slice<E>, _b:stdgo.Slice<E>):Bool {
        return false;
    }
overload inline extern function _overlaps<E>(_a:stdgo.Slice<E>, _b:stdgo.Slice<E>):Bool return _overlaps__tp__0(_a, _b);

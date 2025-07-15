package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function isSortedFunc__tp__0<E>(_x:stdgo.Slice<E>, _cmp:(E, E) -> stdgo.GoInt):Bool {
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L50"
        {
            var _i = ((_x.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i > (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L51"
                if ((_cmp(_x[(_i : stdgo.GoInt)], _x[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)]) < (0 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L52"
                    return false;
                };
                _i--;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L55"
        return true;
    }
overload inline extern function isSortedFunc<E>(_x:stdgo.Slice<E>, _cmp:(E, E) -> stdgo.GoInt):Bool return isSortedFunc__tp__0(_x, _cmp);

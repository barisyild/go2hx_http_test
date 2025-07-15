package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function minFunc__tp__0<E>(_x:stdgo.Slice<E>, _cmp:(E, E) -> stdgo.GoInt):E {
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L76"
        if (((_x.length) < (1 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L77"
            throw stdgo.Go.toInterface(("slices.MinFunc: empty list" : stdgo.GoString));
        };
        var _m = (_x[(0 : stdgo.GoInt)] : E);
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L80"
        {
            var _i = (1 : stdgo.GoInt);
            while ((_i < (_x.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L81"
                if ((_cmp(_x[(_i : stdgo.GoInt)], _m) < (0 : stdgo.GoInt) : Bool)) {
                    _m = _x[(_i : stdgo.GoInt)];
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L85"
        return _m;
    }
overload inline extern function minFunc<E>(_x:stdgo.Slice<E>, _cmp:(E, E) -> stdgo.GoInt):E return minFunc__tp__0(_x, _cmp);

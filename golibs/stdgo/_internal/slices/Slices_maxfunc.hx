package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function maxFunc__tp__0<E>(_x:stdgo.Slice<E>, _cmp:(E, E) -> stdgo.GoInt):E {
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L106"
        if (((_x.length) < (1 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L107"
            throw stdgo.Go.toInterface(("slices.MaxFunc: empty list" : stdgo.GoString));
        };
        var _m = (_x[(0 : stdgo.GoInt)] : E);
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L110"
        {
            var _i = (1 : stdgo.GoInt);
            while ((_i < (_x.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L111"
                if ((_cmp(_x[(_i : stdgo.GoInt)], _m) > (0 : stdgo.GoInt) : Bool)) {
                    _m = _x[(_i : stdgo.GoInt)];
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L115"
        return _m;
    }
overload inline extern function maxFunc<E>(_x:stdgo.Slice<E>, _cmp:(E, E) -> stdgo.GoInt):E return maxFunc__tp__0(_x, _cmp);

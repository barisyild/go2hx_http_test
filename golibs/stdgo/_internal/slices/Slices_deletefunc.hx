package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function deleteFunc__tp__0<E>(_s:stdgo.Slice<E>, _del:E -> Bool):stdgo.Slice<E> {
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L232"
        if (_s != null) for (_i => _v in _s) {
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L233"
            if (_del(_v)) {
                var _j = (_i : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L235"
                {
                    _i++;
                    while ((_i < (_s.length) : Bool)) {
                        _v = _s[(_i : stdgo.GoInt)];
//"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L237"
                        if (!_del(_v)) {
                            _s[(_j : stdgo.GoInt)] = _v;
                            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L239"
                            _j++;
                        };
                        _i++;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L242"
                return (_s.__slice__(0, _j) : stdgo.Slice<E>);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L245"
        return _s;
    }
overload inline extern function deleteFunc<E>(_s:stdgo.Slice<E>, _del:E -> Bool):stdgo.Slice<E> return deleteFunc__tp__0(_s, _del);

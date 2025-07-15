package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function compact__tp__0(_s:stdgo.Slice<stdgo.Comparable>):stdgo.Slice<stdgo.Comparable> {
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L354"
        if (((_s.length) < (2 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L355"
            return _s;
        };
        var _i = (1 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L358"
        {
            var _k = (1 : stdgo.GoInt);
            while ((_k < (_s.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L359"
                if (_s[(_k : stdgo.GoInt)] != (_s[((_k - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)])) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L360"
                    if (_i != (_k)) {
                        _s[(_i : stdgo.GoInt)] = _s[(_k : stdgo.GoInt)];
                    };
                    //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L363"
                    _i++;
                };
                _k++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L366"
        return (_s.__slice__(0, _i) : stdgo.Slice<stdgo.Comparable>);
    }
overload inline extern function compact(_s:stdgo.Slice<stdgo.Comparable>):stdgo.Slice<stdgo.Comparable> return compact__tp__0(_s);

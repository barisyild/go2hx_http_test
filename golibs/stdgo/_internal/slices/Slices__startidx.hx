package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function _startIdx__tp__0<E>(_haystack:stdgo.Slice<E>, _needle:stdgo.Slice<E>):stdgo.GoInt {
        var _p = stdgo.Go.pointer(_needle[(0 : stdgo.GoInt)]);
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L484"
        if (_haystack != null) for (_i => _ in _haystack) {
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L485"
            if (_p == (stdgo.Go.pointer(_haystack[(_i : stdgo.GoInt)]))) {
                //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L486"
                return _i;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L490"
        throw stdgo.Go.toInterface(("needle not found" : stdgo.GoString));
    }
overload inline extern function _startIdx<E>(_haystack:stdgo.Slice<E>, _needle:stdgo.Slice<E>):stdgo.GoInt return _startIdx__tp__0(_haystack, _needle);

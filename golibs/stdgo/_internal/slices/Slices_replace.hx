package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function replace__tp__0<E>(_s:stdgo.Slice<E>, _i:stdgo.GoInt, _j:stdgo.GoInt, _v:haxe.Rest<E>):stdgo.Slice<E> {
        var _v = new stdgo.Slice<E>(_v.length, 0, ..._v);
        (_s.__slice__(_i, _j) : stdgo.Slice<E>);
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L253"
        if (_i == (_j)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L254"
            return (stdgo._internal.slices.Slices_insert.insert(_s, _i, ...(_v : Array<E>)) : stdgo.Slice<E>);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L256"
        if (_j == ((_s.length))) {
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L257"
            return ((_s.__slice__(0, _i) : stdgo.Slice<E>).__append__(...(_v : Array<E>)) : stdgo.Slice<E>);
        };
        var _tot = ((((_s.__slice__(0, _i) : stdgo.Slice<E>).length) + (_v.length) : stdgo.GoInt) + ((_s.__slice__(_j) : stdgo.Slice<E>).length) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L261"
        if ((_tot > _s.capacity : Bool)) {
            var _s2 = ((_s.__slice__(0, _i) : stdgo.Slice<E>).__append__(...((new stdgo.Slice<E>((_tot - _i : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<E>) : Array<E>)) : stdgo.Slice<E>);
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L264"
            (_s2.__slice__(_i) : stdgo.Slice<E>).__copyTo__(_v);
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L265"
            (_s2.__slice__((_i + (_v.length) : stdgo.GoInt)) : stdgo.Slice<E>).__copyTo__((_s.__slice__(_j) : stdgo.Slice<E>));
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L266"
            return _s2;
        };
        var _r = (_s.__slice__(0, _tot) : stdgo.Slice<E>);
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L271"
        if (((_i + (_v.length) : stdgo.GoInt) <= _j : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L273"
            (_r.__slice__(_i) : stdgo.Slice<E>).__copyTo__(_v);
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L274"
            if ((_i + (_v.length) : stdgo.GoInt) != (_j)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L275"
                (_r.__slice__((_i + (_v.length) : stdgo.GoInt)) : stdgo.Slice<E>).__copyTo__((_s.__slice__(_j) : stdgo.Slice<E>));
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L277"
            return _r;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L291"
        if (!(stdgo._internal.slices.Slices__overlaps._overlaps((_r.__slice__((_i + (_v.length) : stdgo.GoInt)) : stdgo.Slice<E>), _v) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L293"
            (_r.__slice__((_i + (_v.length) : stdgo.GoInt)) : stdgo.Slice<E>).__copyTo__((_s.__slice__(_j) : stdgo.Slice<E>));
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L294"
            (_r.__slice__(_i) : stdgo.Slice<E>).__copyTo__(_v);
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L295"
            return _r;
        };
        var _y = ((_v.length) - ((_j - _i : stdgo.GoInt)) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L312"
        if (!(stdgo._internal.slices.Slices__overlaps._overlaps((_r.__slice__(_i, _j) : stdgo.Slice<E>), _v) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L313"
            (_r.__slice__(_i, _j) : stdgo.Slice<E>).__copyTo__((_v.__slice__(_y) : stdgo.Slice<E>));
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L314"
            (_r.__slice__((_s.length)) : stdgo.Slice<E>).__copyTo__((_v.__slice__(0, _y) : stdgo.Slice<E>));
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L315"
            stdgo._internal.slices.Slices__rotateright._rotateRight((_r.__slice__(_i) : stdgo.Slice<E>), _y);
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L316"
            return _r;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L318"
        if (!(stdgo._internal.slices.Slices__overlaps._overlaps((_r.__slice__((_s.length)) : stdgo.Slice<E>), _v) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L319"
            (_r.__slice__((_s.length)) : stdgo.Slice<E>).__copyTo__((_v.__slice__(0, _y) : stdgo.Slice<E>));
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L320"
            (_r.__slice__(_i, _j) : stdgo.Slice<E>).__copyTo__((_v.__slice__(_y) : stdgo.Slice<E>));
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L321"
            stdgo._internal.slices.Slices__rotateright._rotateRight((_r.__slice__(_i) : stdgo.Slice<E>), _y);
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L322"
            return _r;
        };
        var _k = (stdgo._internal.slices.Slices__startidx._startIdx(_v, (_s.__slice__(_j) : stdgo.Slice<E>)) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L331"
        (_r.__slice__(_i) : stdgo.Slice<E>).__copyTo__(_v);
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L332"
        (_r.__slice__((_i + (_v.length) : stdgo.GoInt)) : stdgo.Slice<E>).__copyTo__((_r.__slice__((_i + _k : stdgo.GoInt)) : stdgo.Slice<E>));
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L333"
        return _r;
    }
overload inline extern function replace<E>(_s:stdgo.Slice<E>, _i:stdgo.GoInt, _j:stdgo.GoInt, _v:haxe.Rest<E>):stdgo.Slice<E> return replace__tp__0(_s, _i, _j, ..._v);

package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function insert__tp__0<E>(_s:stdgo.Slice<E>, _i:stdgo.GoInt, _v:haxe.Rest<E>):stdgo.Slice<E> {
        var _v = new stdgo.Slice<E>(_v.length, 0, ..._v);
        var _m = (_v.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L134"
        if (_m == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L135"
            return _s;
        };
        var _n = (_s.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L138"
        if (_i == (_n)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L139"
            return (_s.__append__(...(_v : Array<E>)) : stdgo.Slice<E>);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L141"
        if (((_n + _m : stdgo.GoInt) > _s.capacity : Bool)) {
            var _s2 = ((_s.__slice__(0, _i) : stdgo.Slice<E>).__append__(...((new stdgo.Slice<E>(((_n + _m : stdgo.GoInt) - _i : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<E>) : Array<E>)) : stdgo.Slice<E>);
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L147"
            (_s2.__slice__(_i) : stdgo.Slice<E>).__copyTo__(_v);
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L148"
            (_s2.__slice__((_i + _m : stdgo.GoInt)) : stdgo.Slice<E>).__copyTo__((_s.__slice__(_i) : stdgo.Slice<E>));
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L149"
            return _s2;
        };
        _s = (_s.__slice__(0, (_n + _m : stdgo.GoInt)) : stdgo.Slice<E>);
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L167"
        if (!(stdgo._internal.slices.Slices__overlaps._overlaps(_v, (_s.__slice__((_i + _m : stdgo.GoInt)) : stdgo.Slice<E>)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L172"
            (_s.__slice__((_i + _m : stdgo.GoInt)) : stdgo.Slice<E>).__copyTo__((_s.__slice__(_i) : stdgo.Slice<E>));
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L180"
            (_s.__slice__(_i) : stdgo.Slice<E>).__copyTo__(_v);
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L187"
            return _s;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L194"
        (_s.__slice__(_n) : stdgo.Slice<E>).__copyTo__(_v);
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L201"
        stdgo._internal.slices.Slices__rotateright._rotateRight((_s.__slice__(_i) : stdgo.Slice<E>), _m);
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L208"
        return _s;
    }
overload inline extern function insert<E>(_s:stdgo.Slice<E>, _i:stdgo.GoInt, _v:haxe.Rest<E>):stdgo.Slice<E> return insert__tp__0(_s, _i, ..._v);

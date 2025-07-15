package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function binarySearchFunc__tp__0<E, T_>(_x:stdgo.Slice<E>, _target:T_, _cmp:(E, T_) -> stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        var _n = (_x.length : stdgo.GoInt);
        var __0 = (0 : stdgo.GoInt), __1 = (_n : stdgo.GoInt);
var _j = __1, _i = __0;
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L153"
        while ((_i < _j : Bool)) {
            var _h = ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L156"
            if ((_cmp(_x[(_h : stdgo.GoInt)], _target) < (0 : stdgo.GoInt) : Bool)) {
                _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _j = _h;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L163"
        return { _0 : _i, _1 : ((_i < _n : Bool) && (_cmp(_x[(_i : stdgo.GoInt)], _target) == (0 : stdgo.GoInt)) : Bool) };
    }
overload inline extern function binarySearchFunc<E, T_>(_x:stdgo.Slice<E>, _target:T_, _cmp:(E, T_) -> stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } return binarySearchFunc__tp__0(_x, _target, _cmp);

package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function binarySearch__tp__0(_x:stdgo.Slice<stdgo.GoInt8>, _target:stdgo.GoInt8):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        var _n = (_x.length : stdgo.GoInt);
        var __0 = (0 : stdgo.GoInt), __1 = (_n : stdgo.GoInt);
var _j = __1, _i = __0;
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L128"
        while ((_i < _j : Bool)) {
            var _h = ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L131"
            if ((stdgo._internal.cmp.Cmp_less.less(_x[(_h : stdgo.GoInt)], _target) : Bool)) {
                _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _j = _h;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L138"
        return { _0 : _i, _1 : ((_i < _n : Bool) && (((_x[(_i : stdgo.GoInt)] == _target) || (((stdgo._internal.slices.Slices__isnan._isNaN(_x[(_i : stdgo.GoInt)]) : Bool) && (stdgo._internal.slices.Slices__isnan._isNaN(_target) : Bool) : Bool)) : Bool)) : Bool) };
    }
overload inline extern function binarySearch(_x:stdgo.Slice<stdgo.GoInt8>, _target:stdgo.GoInt8):{ var _0 : stdgo.GoInt; var _1 : Bool; } return binarySearch__tp__0(_x, _target);
private function binarySearch__tp__1(_x:stdgo.Slice<stdgo.GoInt16>, _target:stdgo.GoInt16):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        var _n = (_x.length : stdgo.GoInt);
        var __0 = (0 : stdgo.GoInt), __1 = (_n : stdgo.GoInt);
var _j = __1, _i = __0;
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L128"
        while ((_i < _j : Bool)) {
            var _h = ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L131"
            if ((stdgo._internal.cmp.Cmp_less.less(_x[(_h : stdgo.GoInt)], _target) : Bool)) {
                _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _j = _h;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L138"
        return { _0 : _i, _1 : ((_i < _n : Bool) && (((_x[(_i : stdgo.GoInt)] == _target) || (((stdgo._internal.slices.Slices__isnan._isNaN(_x[(_i : stdgo.GoInt)]) : Bool) && (stdgo._internal.slices.Slices__isnan._isNaN(_target) : Bool) : Bool)) : Bool)) : Bool) };
    }
overload inline extern function binarySearch(_x:stdgo.Slice<stdgo.GoInt16>, _target:stdgo.GoInt16):{ var _0 : stdgo.GoInt; var _1 : Bool; } return binarySearch__tp__1(_x, _target);
private function binarySearch__tp__2(_x:stdgo.Slice<stdgo.GoInt32>, _target:stdgo.GoInt32):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        var _n = (_x.length : stdgo.GoInt);
        var __0 = (0 : stdgo.GoInt), __1 = (_n : stdgo.GoInt);
var _j = __1, _i = __0;
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L128"
        while ((_i < _j : Bool)) {
            var _h = ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L131"
            if ((stdgo._internal.cmp.Cmp_less.less(_x[(_h : stdgo.GoInt)], _target) : Bool)) {
                _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _j = _h;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L138"
        return { _0 : _i, _1 : ((_i < _n : Bool) && (((_x[(_i : stdgo.GoInt)] == _target) || (((stdgo._internal.slices.Slices__isnan._isNaN(_x[(_i : stdgo.GoInt)]) : Bool) && (stdgo._internal.slices.Slices__isnan._isNaN(_target) : Bool) : Bool)) : Bool)) : Bool) };
    }
overload inline extern function binarySearch(_x:stdgo.Slice<stdgo.GoInt32>, _target:stdgo.GoInt32):{ var _0 : stdgo.GoInt; var _1 : Bool; } return binarySearch__tp__2(_x, _target);
private function binarySearch__tp__3(_x:stdgo.Slice<stdgo.GoInt64>, _target:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        var _n = (_x.length : stdgo.GoInt);
        var __0 = (0 : stdgo.GoInt), __1 = (_n : stdgo.GoInt);
var _j = __1, _i = __0;
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L128"
        while ((_i < _j : Bool)) {
            var _h = ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L131"
            if ((stdgo._internal.cmp.Cmp_less.less(_x[(_h : stdgo.GoInt)], _target) : Bool)) {
                _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _j = _h;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L138"
        return { _0 : _i, _1 : ((_i < _n : Bool) && (((_x[(_i : stdgo.GoInt)] == _target) || (((stdgo._internal.slices.Slices__isnan._isNaN(_x[(_i : stdgo.GoInt)]) : Bool) && (stdgo._internal.slices.Slices__isnan._isNaN(_target) : Bool) : Bool)) : Bool)) : Bool) };
    }
overload inline extern function binarySearch(_x:stdgo.Slice<stdgo.GoInt64>, _target:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : Bool; } return binarySearch__tp__3(_x, _target);
private function binarySearch__tp__4(_x:stdgo.Slice<stdgo.GoUInt8>, _target:stdgo.GoUInt8):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        var _n = (_x.length : stdgo.GoInt);
        var __0 = (0 : stdgo.GoInt), __1 = (_n : stdgo.GoInt);
var _j = __1, _i = __0;
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L128"
        while ((_i < _j : Bool)) {
            var _h = ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L131"
            if ((stdgo._internal.cmp.Cmp_less.less(_x[(_h : stdgo.GoInt)], _target) : Bool)) {
                _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _j = _h;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L138"
        return { _0 : _i, _1 : ((_i < _n : Bool) && (((_x[(_i : stdgo.GoInt)] == _target) || (((stdgo._internal.slices.Slices__isnan._isNaN(_x[(_i : stdgo.GoInt)]) : Bool) && (stdgo._internal.slices.Slices__isnan._isNaN(_target) : Bool) : Bool)) : Bool)) : Bool) };
    }
overload inline extern function binarySearch(_x:stdgo.Slice<stdgo.GoUInt8>, _target:stdgo.GoUInt8):{ var _0 : stdgo.GoInt; var _1 : Bool; } return binarySearch__tp__4(_x, _target);
private function binarySearch__tp__5(_x:stdgo.Slice<stdgo.GoUInt16>, _target:stdgo.GoUInt16):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        var _n = (_x.length : stdgo.GoInt);
        var __0 = (0 : stdgo.GoInt), __1 = (_n : stdgo.GoInt);
var _j = __1, _i = __0;
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L128"
        while ((_i < _j : Bool)) {
            var _h = ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L131"
            if ((stdgo._internal.cmp.Cmp_less.less(_x[(_h : stdgo.GoInt)], _target) : Bool)) {
                _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _j = _h;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L138"
        return { _0 : _i, _1 : ((_i < _n : Bool) && (((_x[(_i : stdgo.GoInt)] == _target) || (((stdgo._internal.slices.Slices__isnan._isNaN(_x[(_i : stdgo.GoInt)]) : Bool) && (stdgo._internal.slices.Slices__isnan._isNaN(_target) : Bool) : Bool)) : Bool)) : Bool) };
    }
overload inline extern function binarySearch(_x:stdgo.Slice<stdgo.GoUInt16>, _target:stdgo.GoUInt16):{ var _0 : stdgo.GoInt; var _1 : Bool; } return binarySearch__tp__5(_x, _target);
private function binarySearch__tp__6(_x:stdgo.Slice<stdgo.GoUInt32>, _target:stdgo.GoUInt32):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        var _n = (_x.length : stdgo.GoInt);
        var __0 = (0 : stdgo.GoInt), __1 = (_n : stdgo.GoInt);
var _j = __1, _i = __0;
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L128"
        while ((_i < _j : Bool)) {
            var _h = ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L131"
            if ((stdgo._internal.cmp.Cmp_less.less(_x[(_h : stdgo.GoInt)], _target) : Bool)) {
                _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _j = _h;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L138"
        return { _0 : _i, _1 : ((_i < _n : Bool) && (((_x[(_i : stdgo.GoInt)] == _target) || (((stdgo._internal.slices.Slices__isnan._isNaN(_x[(_i : stdgo.GoInt)]) : Bool) && (stdgo._internal.slices.Slices__isnan._isNaN(_target) : Bool) : Bool)) : Bool)) : Bool) };
    }
overload inline extern function binarySearch(_x:stdgo.Slice<stdgo.GoUInt32>, _target:stdgo.GoUInt32):{ var _0 : stdgo.GoInt; var _1 : Bool; } return binarySearch__tp__6(_x, _target);
private function binarySearch__tp__7(_x:stdgo.Slice<stdgo.GoUInt64>, _target:stdgo.GoUInt64):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        var _n = (_x.length : stdgo.GoInt);
        var __0 = (0 : stdgo.GoInt), __1 = (_n : stdgo.GoInt);
var _j = __1, _i = __0;
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L128"
        while ((_i < _j : Bool)) {
            var _h = ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L131"
            if ((stdgo._internal.cmp.Cmp_less.less(_x[(_h : stdgo.GoInt)], _target) : Bool)) {
                _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _j = _h;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L138"
        return { _0 : _i, _1 : ((_i < _n : Bool) && (((_x[(_i : stdgo.GoInt)] == _target) || (((stdgo._internal.slices.Slices__isnan._isNaN(_x[(_i : stdgo.GoInt)]) : Bool) && (stdgo._internal.slices.Slices__isnan._isNaN(_target) : Bool) : Bool)) : Bool)) : Bool) };
    }
overload inline extern function binarySearch(_x:stdgo.Slice<stdgo.GoUInt64>, _target:stdgo.GoUInt64):{ var _0 : stdgo.GoInt; var _1 : Bool; } return binarySearch__tp__7(_x, _target);
private function binarySearch__tp__8(_x:stdgo.Slice<stdgo.GoUIntptr>, _target:stdgo.GoUIntptr):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        var _n = (_x.length : stdgo.GoInt);
        var __0 = (0 : stdgo.GoInt), __1 = (_n : stdgo.GoInt);
var _j = __1, _i = __0;
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L128"
        while ((_i < _j : Bool)) {
            var _h = ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L131"
            if ((stdgo._internal.cmp.Cmp_less.less(_x[(_h : stdgo.GoInt)], _target) : Bool)) {
                _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _j = _h;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L138"
        return { _0 : _i, _1 : ((_i < _n : Bool) && (((_x[(_i : stdgo.GoInt)] == _target) || (((stdgo._internal.slices.Slices__isnan._isNaN(_x[(_i : stdgo.GoInt)]) : Bool) && (stdgo._internal.slices.Slices__isnan._isNaN(_target) : Bool) : Bool)) : Bool)) : Bool) };
    }
overload inline extern function binarySearch(_x:stdgo.Slice<stdgo.GoUIntptr>, _target:stdgo.GoUIntptr):{ var _0 : stdgo.GoInt; var _1 : Bool; } return binarySearch__tp__8(_x, _target);
private function binarySearch__tp__9(_x:stdgo.Slice<stdgo.GoFloat32>, _target:stdgo.GoFloat32):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        var _n = (_x.length : stdgo.GoInt);
        var __0 = (0 : stdgo.GoInt), __1 = (_n : stdgo.GoInt);
var _j = __1, _i = __0;
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L128"
        while ((_i < _j : Bool)) {
            var _h = ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L131"
            if ((stdgo._internal.cmp.Cmp_less.less(_x[(_h : stdgo.GoInt)], _target) : Bool)) {
                _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _j = _h;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L138"
        return { _0 : _i, _1 : ((_i < _n : Bool) && (((_x[(_i : stdgo.GoInt)] == _target) || (((stdgo._internal.slices.Slices__isnan._isNaN(_x[(_i : stdgo.GoInt)]) : Bool) && (stdgo._internal.slices.Slices__isnan._isNaN(_target) : Bool) : Bool)) : Bool)) : Bool) };
    }
overload inline extern function binarySearch(_x:stdgo.Slice<stdgo.GoFloat32>, _target:stdgo.GoFloat32):{ var _0 : stdgo.GoInt; var _1 : Bool; } return binarySearch__tp__9(_x, _target);
private function binarySearch__tp__10(_x:stdgo.Slice<stdgo.GoFloat64>, _target:stdgo.GoFloat64):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        var _n = (_x.length : stdgo.GoInt);
        var __0 = (0 : stdgo.GoInt), __1 = (_n : stdgo.GoInt);
var _j = __1, _i = __0;
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L128"
        while ((_i < _j : Bool)) {
            var _h = ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L131"
            if ((stdgo._internal.cmp.Cmp_less.less(_x[(_h : stdgo.GoInt)], _target) : Bool)) {
                _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _j = _h;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L138"
        return { _0 : _i, _1 : ((_i < _n : Bool) && (((_x[(_i : stdgo.GoInt)] == _target) || (((stdgo._internal.slices.Slices__isnan._isNaN(_x[(_i : stdgo.GoInt)]) : Bool) && (stdgo._internal.slices.Slices__isnan._isNaN(_target) : Bool) : Bool)) : Bool)) : Bool) };
    }
overload inline extern function binarySearch(_x:stdgo.Slice<stdgo.GoFloat64>, _target:stdgo.GoFloat64):{ var _0 : stdgo.GoInt; var _1 : Bool; } return binarySearch__tp__10(_x, _target);
private function binarySearch__tp__11(_x:stdgo.Slice<stdgo.GoString>, _target:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        var _n = (_x.length : stdgo.GoInt);
        var __0 = (0 : stdgo.GoInt), __1 = (_n : stdgo.GoInt);
var _j = __1, _i = __0;
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L128"
        while ((_i < _j : Bool)) {
            var _h = ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L131"
            if ((stdgo._internal.cmp.Cmp_less.less(_x[(_h : stdgo.GoInt)]?.__copy__(), _target?.__copy__()) : Bool)) {
                _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _j = _h;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L138"
        return { _0 : _i, _1 : ((_i < _n : Bool) && (((_x[(_i : stdgo.GoInt)] == _target) || (((stdgo._internal.slices.Slices__isnan._isNaN(_x[(_i : stdgo.GoInt)]?.__copy__()) : Bool) && (stdgo._internal.slices.Slices__isnan._isNaN(_target?.__copy__()) : Bool) : Bool)) : Bool)) : Bool) };
    }
overload inline extern function binarySearch(_x:stdgo.Slice<stdgo.GoString>, _target:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : Bool; } return binarySearch__tp__11(_x, _target);

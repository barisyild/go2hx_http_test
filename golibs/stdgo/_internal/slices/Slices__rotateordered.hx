package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function _rotateOrdered__tp__0(_data:stdgo.Slice<stdgo.GoInt8>, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _i = (_m - _a : stdgo.GoInt);
        var _j = (_b - _m : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L470"
        while (_i != (_j)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L471"
            if ((_i > _j : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L472"
                stdgo._internal.slices.Slices__swaprangeordered._swapRangeOrdered(_data, (_m - _i : stdgo.GoInt), _m, _j);
                _i = (_i - (_j) : stdgo.GoInt);
            } else {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L475"
                stdgo._internal.slices.Slices__swaprangeordered._swapRangeOrdered(_data, (_m - _i : stdgo.GoInt), ((_m + _j : stdgo.GoInt) - _i : stdgo.GoInt), _i);
                _j = (_j - (_i) : stdgo.GoInt);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L480"
        stdgo._internal.slices.Slices__swaprangeordered._swapRangeOrdered(_data, (_m - _i : stdgo.GoInt), _m, _i);
    }
overload inline extern function _rotateOrdered(_data:stdgo.Slice<stdgo.GoInt8>, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void _rotateOrdered__tp__0(_data, _a, _m, _b);
private function _rotateOrdered__tp__1(_data:stdgo.Slice<stdgo.GoInt16>, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _i = (_m - _a : stdgo.GoInt);
        var _j = (_b - _m : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L470"
        while (_i != (_j)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L471"
            if ((_i > _j : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L472"
                stdgo._internal.slices.Slices__swaprangeordered._swapRangeOrdered(_data, (_m - _i : stdgo.GoInt), _m, _j);
                _i = (_i - (_j) : stdgo.GoInt);
            } else {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L475"
                stdgo._internal.slices.Slices__swaprangeordered._swapRangeOrdered(_data, (_m - _i : stdgo.GoInt), ((_m + _j : stdgo.GoInt) - _i : stdgo.GoInt), _i);
                _j = (_j - (_i) : stdgo.GoInt);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L480"
        stdgo._internal.slices.Slices__swaprangeordered._swapRangeOrdered(_data, (_m - _i : stdgo.GoInt), _m, _i);
    }
overload inline extern function _rotateOrdered(_data:stdgo.Slice<stdgo.GoInt16>, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void _rotateOrdered__tp__1(_data, _a, _m, _b);
private function _rotateOrdered__tp__2(_data:stdgo.Slice<stdgo.GoInt32>, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _i = (_m - _a : stdgo.GoInt);
        var _j = (_b - _m : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L470"
        while (_i != (_j)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L471"
            if ((_i > _j : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L472"
                stdgo._internal.slices.Slices__swaprangeordered._swapRangeOrdered(_data, (_m - _i : stdgo.GoInt), _m, _j);
                _i = (_i - (_j) : stdgo.GoInt);
            } else {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L475"
                stdgo._internal.slices.Slices__swaprangeordered._swapRangeOrdered(_data, (_m - _i : stdgo.GoInt), ((_m + _j : stdgo.GoInt) - _i : stdgo.GoInt), _i);
                _j = (_j - (_i) : stdgo.GoInt);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L480"
        stdgo._internal.slices.Slices__swaprangeordered._swapRangeOrdered(_data, (_m - _i : stdgo.GoInt), _m, _i);
    }
overload inline extern function _rotateOrdered(_data:stdgo.Slice<stdgo.GoInt32>, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void _rotateOrdered__tp__2(_data, _a, _m, _b);
private function _rotateOrdered__tp__3(_data:stdgo.Slice<stdgo.GoInt64>, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _i = (_m - _a : stdgo.GoInt);
        var _j = (_b - _m : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L470"
        while (_i != (_j)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L471"
            if ((_i > _j : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L472"
                stdgo._internal.slices.Slices__swaprangeordered._swapRangeOrdered(_data, (_m - _i : stdgo.GoInt), _m, _j);
                _i = (_i - (_j) : stdgo.GoInt);
            } else {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L475"
                stdgo._internal.slices.Slices__swaprangeordered._swapRangeOrdered(_data, (_m - _i : stdgo.GoInt), ((_m + _j : stdgo.GoInt) - _i : stdgo.GoInt), _i);
                _j = (_j - (_i) : stdgo.GoInt);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L480"
        stdgo._internal.slices.Slices__swaprangeordered._swapRangeOrdered(_data, (_m - _i : stdgo.GoInt), _m, _i);
    }
overload inline extern function _rotateOrdered(_data:stdgo.Slice<stdgo.GoInt64>, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void _rotateOrdered__tp__3(_data, _a, _m, _b);
private function _rotateOrdered__tp__4(_data:stdgo.Slice<stdgo.GoUInt8>, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _i = (_m - _a : stdgo.GoInt);
        var _j = (_b - _m : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L470"
        while (_i != (_j)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L471"
            if ((_i > _j : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L472"
                stdgo._internal.slices.Slices__swaprangeordered._swapRangeOrdered(_data, (_m - _i : stdgo.GoInt), _m, _j);
                _i = (_i - (_j) : stdgo.GoInt);
            } else {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L475"
                stdgo._internal.slices.Slices__swaprangeordered._swapRangeOrdered(_data, (_m - _i : stdgo.GoInt), ((_m + _j : stdgo.GoInt) - _i : stdgo.GoInt), _i);
                _j = (_j - (_i) : stdgo.GoInt);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L480"
        stdgo._internal.slices.Slices__swaprangeordered._swapRangeOrdered(_data, (_m - _i : stdgo.GoInt), _m, _i);
    }
overload inline extern function _rotateOrdered(_data:stdgo.Slice<stdgo.GoUInt8>, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void _rotateOrdered__tp__4(_data, _a, _m, _b);
private function _rotateOrdered__tp__5(_data:stdgo.Slice<stdgo.GoUInt16>, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _i = (_m - _a : stdgo.GoInt);
        var _j = (_b - _m : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L470"
        while (_i != (_j)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L471"
            if ((_i > _j : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L472"
                stdgo._internal.slices.Slices__swaprangeordered._swapRangeOrdered(_data, (_m - _i : stdgo.GoInt), _m, _j);
                _i = (_i - (_j) : stdgo.GoInt);
            } else {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L475"
                stdgo._internal.slices.Slices__swaprangeordered._swapRangeOrdered(_data, (_m - _i : stdgo.GoInt), ((_m + _j : stdgo.GoInt) - _i : stdgo.GoInt), _i);
                _j = (_j - (_i) : stdgo.GoInt);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L480"
        stdgo._internal.slices.Slices__swaprangeordered._swapRangeOrdered(_data, (_m - _i : stdgo.GoInt), _m, _i);
    }
overload inline extern function _rotateOrdered(_data:stdgo.Slice<stdgo.GoUInt16>, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void _rotateOrdered__tp__5(_data, _a, _m, _b);
private function _rotateOrdered__tp__6(_data:stdgo.Slice<stdgo.GoUInt32>, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _i = (_m - _a : stdgo.GoInt);
        var _j = (_b - _m : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L470"
        while (_i != (_j)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L471"
            if ((_i > _j : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L472"
                stdgo._internal.slices.Slices__swaprangeordered._swapRangeOrdered(_data, (_m - _i : stdgo.GoInt), _m, _j);
                _i = (_i - (_j) : stdgo.GoInt);
            } else {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L475"
                stdgo._internal.slices.Slices__swaprangeordered._swapRangeOrdered(_data, (_m - _i : stdgo.GoInt), ((_m + _j : stdgo.GoInt) - _i : stdgo.GoInt), _i);
                _j = (_j - (_i) : stdgo.GoInt);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L480"
        stdgo._internal.slices.Slices__swaprangeordered._swapRangeOrdered(_data, (_m - _i : stdgo.GoInt), _m, _i);
    }
overload inline extern function _rotateOrdered(_data:stdgo.Slice<stdgo.GoUInt32>, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void _rotateOrdered__tp__6(_data, _a, _m, _b);
private function _rotateOrdered__tp__7(_data:stdgo.Slice<stdgo.GoUInt64>, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _i = (_m - _a : stdgo.GoInt);
        var _j = (_b - _m : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L470"
        while (_i != (_j)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L471"
            if ((_i > _j : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L472"
                stdgo._internal.slices.Slices__swaprangeordered._swapRangeOrdered(_data, (_m - _i : stdgo.GoInt), _m, _j);
                _i = (_i - (_j) : stdgo.GoInt);
            } else {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L475"
                stdgo._internal.slices.Slices__swaprangeordered._swapRangeOrdered(_data, (_m - _i : stdgo.GoInt), ((_m + _j : stdgo.GoInt) - _i : stdgo.GoInt), _i);
                _j = (_j - (_i) : stdgo.GoInt);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L480"
        stdgo._internal.slices.Slices__swaprangeordered._swapRangeOrdered(_data, (_m - _i : stdgo.GoInt), _m, _i);
    }
overload inline extern function _rotateOrdered(_data:stdgo.Slice<stdgo.GoUInt64>, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void _rotateOrdered__tp__7(_data, _a, _m, _b);
private function _rotateOrdered__tp__8(_data:stdgo.Slice<stdgo.GoUIntptr>, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _i = (_m - _a : stdgo.GoInt);
        var _j = (_b - _m : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L470"
        while (_i != (_j)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L471"
            if ((_i > _j : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L472"
                stdgo._internal.slices.Slices__swaprangeordered._swapRangeOrdered(_data, (_m - _i : stdgo.GoInt), _m, _j);
                _i = (_i - (_j) : stdgo.GoInt);
            } else {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L475"
                stdgo._internal.slices.Slices__swaprangeordered._swapRangeOrdered(_data, (_m - _i : stdgo.GoInt), ((_m + _j : stdgo.GoInt) - _i : stdgo.GoInt), _i);
                _j = (_j - (_i) : stdgo.GoInt);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L480"
        stdgo._internal.slices.Slices__swaprangeordered._swapRangeOrdered(_data, (_m - _i : stdgo.GoInt), _m, _i);
    }
overload inline extern function _rotateOrdered(_data:stdgo.Slice<stdgo.GoUIntptr>, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void _rotateOrdered__tp__8(_data, _a, _m, _b);
private function _rotateOrdered__tp__9(_data:stdgo.Slice<stdgo.GoFloat32>, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _i = (_m - _a : stdgo.GoInt);
        var _j = (_b - _m : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L470"
        while (_i != (_j)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L471"
            if ((_i > _j : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L472"
                stdgo._internal.slices.Slices__swaprangeordered._swapRangeOrdered(_data, (_m - _i : stdgo.GoInt), _m, _j);
                _i = (_i - (_j) : stdgo.GoInt);
            } else {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L475"
                stdgo._internal.slices.Slices__swaprangeordered._swapRangeOrdered(_data, (_m - _i : stdgo.GoInt), ((_m + _j : stdgo.GoInt) - _i : stdgo.GoInt), _i);
                _j = (_j - (_i) : stdgo.GoInt);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L480"
        stdgo._internal.slices.Slices__swaprangeordered._swapRangeOrdered(_data, (_m - _i : stdgo.GoInt), _m, _i);
    }
overload inline extern function _rotateOrdered(_data:stdgo.Slice<stdgo.GoFloat32>, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void _rotateOrdered__tp__9(_data, _a, _m, _b);
private function _rotateOrdered__tp__10(_data:stdgo.Slice<stdgo.GoFloat64>, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _i = (_m - _a : stdgo.GoInt);
        var _j = (_b - _m : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L470"
        while (_i != (_j)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L471"
            if ((_i > _j : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L472"
                stdgo._internal.slices.Slices__swaprangeordered._swapRangeOrdered(_data, (_m - _i : stdgo.GoInt), _m, _j);
                _i = (_i - (_j) : stdgo.GoInt);
            } else {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L475"
                stdgo._internal.slices.Slices__swaprangeordered._swapRangeOrdered(_data, (_m - _i : stdgo.GoInt), ((_m + _j : stdgo.GoInt) - _i : stdgo.GoInt), _i);
                _j = (_j - (_i) : stdgo.GoInt);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L480"
        stdgo._internal.slices.Slices__swaprangeordered._swapRangeOrdered(_data, (_m - _i : stdgo.GoInt), _m, _i);
    }
overload inline extern function _rotateOrdered(_data:stdgo.Slice<stdgo.GoFloat64>, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void _rotateOrdered__tp__10(_data, _a, _m, _b);
private function _rotateOrdered__tp__11(_data:stdgo.Slice<stdgo.GoString>, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _i = (_m - _a : stdgo.GoInt);
        var _j = (_b - _m : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L470"
        while (_i != (_j)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L471"
            if ((_i > _j : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L472"
                stdgo._internal.slices.Slices__swaprangeordered._swapRangeOrdered(_data, (_m - _i : stdgo.GoInt), _m, _j);
                _i = (_i - (_j) : stdgo.GoInt);
            } else {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L475"
                stdgo._internal.slices.Slices__swaprangeordered._swapRangeOrdered(_data, (_m - _i : stdgo.GoInt), ((_m + _j : stdgo.GoInt) - _i : stdgo.GoInt), _i);
                _j = (_j - (_i) : stdgo.GoInt);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L480"
        stdgo._internal.slices.Slices__swaprangeordered._swapRangeOrdered(_data, (_m - _i : stdgo.GoInt), _m, _i);
    }
overload inline extern function _rotateOrdered(_data:stdgo.Slice<stdgo.GoString>, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void _rotateOrdered__tp__11(_data, _a, _m, _b);

package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function _swapRangeOrdered__tp__0(_data:stdgo.Slice<stdgo.GoInt8>, _a:stdgo.GoInt, _b:stdgo.GoInt, _n:stdgo.GoInt):Void {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L332"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                {
                    final __tmp__0 = _data[(_b + _i : stdgo.GoInt)];
                    final __tmp__1 = _data[(_a + _i : stdgo.GoInt)];
                    final __tmp__2 = _data;
                    final __tmp__3 = (_a + _i : stdgo.GoInt);
                    final __tmp__4 = _data;
                    final __tmp__5 = (_b + _i : stdgo.GoInt);
                    __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                    __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                };
                _i++;
            };
        };
    }
overload inline extern function _swapRangeOrdered(_data:stdgo.Slice<stdgo.GoInt8>, _a:stdgo.GoInt, _b:stdgo.GoInt, _n:stdgo.GoInt):Void _swapRangeOrdered__tp__0(_data, _a, _b, _n);
private function _swapRangeOrdered__tp__1(_data:stdgo.Slice<stdgo.GoInt16>, _a:stdgo.GoInt, _b:stdgo.GoInt, _n:stdgo.GoInt):Void {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L332"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                {
                    final __tmp__0 = _data[(_b + _i : stdgo.GoInt)];
                    final __tmp__1 = _data[(_a + _i : stdgo.GoInt)];
                    final __tmp__2 = _data;
                    final __tmp__3 = (_a + _i : stdgo.GoInt);
                    final __tmp__4 = _data;
                    final __tmp__5 = (_b + _i : stdgo.GoInt);
                    __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                    __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                };
                _i++;
            };
        };
    }
overload inline extern function _swapRangeOrdered(_data:stdgo.Slice<stdgo.GoInt16>, _a:stdgo.GoInt, _b:stdgo.GoInt, _n:stdgo.GoInt):Void _swapRangeOrdered__tp__1(_data, _a, _b, _n);
private function _swapRangeOrdered__tp__2(_data:stdgo.Slice<stdgo.GoInt32>, _a:stdgo.GoInt, _b:stdgo.GoInt, _n:stdgo.GoInt):Void {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L332"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                {
                    final __tmp__0 = _data[(_b + _i : stdgo.GoInt)];
                    final __tmp__1 = _data[(_a + _i : stdgo.GoInt)];
                    final __tmp__2 = _data;
                    final __tmp__3 = (_a + _i : stdgo.GoInt);
                    final __tmp__4 = _data;
                    final __tmp__5 = (_b + _i : stdgo.GoInt);
                    __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                    __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                };
                _i++;
            };
        };
    }
overload inline extern function _swapRangeOrdered(_data:stdgo.Slice<stdgo.GoInt32>, _a:stdgo.GoInt, _b:stdgo.GoInt, _n:stdgo.GoInt):Void _swapRangeOrdered__tp__2(_data, _a, _b, _n);
private function _swapRangeOrdered__tp__3(_data:stdgo.Slice<stdgo.GoInt64>, _a:stdgo.GoInt, _b:stdgo.GoInt, _n:stdgo.GoInt):Void {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L332"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                {
                    final __tmp__0 = _data[(_b + _i : stdgo.GoInt)];
                    final __tmp__1 = _data[(_a + _i : stdgo.GoInt)];
                    final __tmp__2 = _data;
                    final __tmp__3 = (_a + _i : stdgo.GoInt);
                    final __tmp__4 = _data;
                    final __tmp__5 = (_b + _i : stdgo.GoInt);
                    __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                    __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                };
                _i++;
            };
        };
    }
overload inline extern function _swapRangeOrdered(_data:stdgo.Slice<stdgo.GoInt64>, _a:stdgo.GoInt, _b:stdgo.GoInt, _n:stdgo.GoInt):Void _swapRangeOrdered__tp__3(_data, _a, _b, _n);
private function _swapRangeOrdered__tp__4(_data:stdgo.Slice<stdgo.GoUInt8>, _a:stdgo.GoInt, _b:stdgo.GoInt, _n:stdgo.GoInt):Void {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L332"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                {
                    final __tmp__0 = _data[(_b + _i : stdgo.GoInt)];
                    final __tmp__1 = _data[(_a + _i : stdgo.GoInt)];
                    final __tmp__2 = _data;
                    final __tmp__3 = (_a + _i : stdgo.GoInt);
                    final __tmp__4 = _data;
                    final __tmp__5 = (_b + _i : stdgo.GoInt);
                    __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                    __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                };
                _i++;
            };
        };
    }
overload inline extern function _swapRangeOrdered(_data:stdgo.Slice<stdgo.GoUInt8>, _a:stdgo.GoInt, _b:stdgo.GoInt, _n:stdgo.GoInt):Void _swapRangeOrdered__tp__4(_data, _a, _b, _n);
private function _swapRangeOrdered__tp__5(_data:stdgo.Slice<stdgo.GoUInt16>, _a:stdgo.GoInt, _b:stdgo.GoInt, _n:stdgo.GoInt):Void {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L332"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                {
                    final __tmp__0 = _data[(_b + _i : stdgo.GoInt)];
                    final __tmp__1 = _data[(_a + _i : stdgo.GoInt)];
                    final __tmp__2 = _data;
                    final __tmp__3 = (_a + _i : stdgo.GoInt);
                    final __tmp__4 = _data;
                    final __tmp__5 = (_b + _i : stdgo.GoInt);
                    __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                    __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                };
                _i++;
            };
        };
    }
overload inline extern function _swapRangeOrdered(_data:stdgo.Slice<stdgo.GoUInt16>, _a:stdgo.GoInt, _b:stdgo.GoInt, _n:stdgo.GoInt):Void _swapRangeOrdered__tp__5(_data, _a, _b, _n);
private function _swapRangeOrdered__tp__6(_data:stdgo.Slice<stdgo.GoUInt32>, _a:stdgo.GoInt, _b:stdgo.GoInt, _n:stdgo.GoInt):Void {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L332"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                {
                    final __tmp__0 = _data[(_b + _i : stdgo.GoInt)];
                    final __tmp__1 = _data[(_a + _i : stdgo.GoInt)];
                    final __tmp__2 = _data;
                    final __tmp__3 = (_a + _i : stdgo.GoInt);
                    final __tmp__4 = _data;
                    final __tmp__5 = (_b + _i : stdgo.GoInt);
                    __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                    __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                };
                _i++;
            };
        };
    }
overload inline extern function _swapRangeOrdered(_data:stdgo.Slice<stdgo.GoUInt32>, _a:stdgo.GoInt, _b:stdgo.GoInt, _n:stdgo.GoInt):Void _swapRangeOrdered__tp__6(_data, _a, _b, _n);
private function _swapRangeOrdered__tp__7(_data:stdgo.Slice<stdgo.GoUInt64>, _a:stdgo.GoInt, _b:stdgo.GoInt, _n:stdgo.GoInt):Void {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L332"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                {
                    final __tmp__0 = _data[(_b + _i : stdgo.GoInt)];
                    final __tmp__1 = _data[(_a + _i : stdgo.GoInt)];
                    final __tmp__2 = _data;
                    final __tmp__3 = (_a + _i : stdgo.GoInt);
                    final __tmp__4 = _data;
                    final __tmp__5 = (_b + _i : stdgo.GoInt);
                    __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                    __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                };
                _i++;
            };
        };
    }
overload inline extern function _swapRangeOrdered(_data:stdgo.Slice<stdgo.GoUInt64>, _a:stdgo.GoInt, _b:stdgo.GoInt, _n:stdgo.GoInt):Void _swapRangeOrdered__tp__7(_data, _a, _b, _n);
private function _swapRangeOrdered__tp__8(_data:stdgo.Slice<stdgo.GoUIntptr>, _a:stdgo.GoInt, _b:stdgo.GoInt, _n:stdgo.GoInt):Void {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L332"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                {
                    final __tmp__0 = _data[(_b + _i : stdgo.GoInt)];
                    final __tmp__1 = _data[(_a + _i : stdgo.GoInt)];
                    final __tmp__2 = _data;
                    final __tmp__3 = (_a + _i : stdgo.GoInt);
                    final __tmp__4 = _data;
                    final __tmp__5 = (_b + _i : stdgo.GoInt);
                    __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                    __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                };
                _i++;
            };
        };
    }
overload inline extern function _swapRangeOrdered(_data:stdgo.Slice<stdgo.GoUIntptr>, _a:stdgo.GoInt, _b:stdgo.GoInt, _n:stdgo.GoInt):Void _swapRangeOrdered__tp__8(_data, _a, _b, _n);
private function _swapRangeOrdered__tp__9(_data:stdgo.Slice<stdgo.GoFloat32>, _a:stdgo.GoInt, _b:stdgo.GoInt, _n:stdgo.GoInt):Void {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L332"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                {
                    final __tmp__0 = _data[(_b + _i : stdgo.GoInt)];
                    final __tmp__1 = _data[(_a + _i : stdgo.GoInt)];
                    final __tmp__2 = _data;
                    final __tmp__3 = (_a + _i : stdgo.GoInt);
                    final __tmp__4 = _data;
                    final __tmp__5 = (_b + _i : stdgo.GoInt);
                    __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                    __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                };
                _i++;
            };
        };
    }
overload inline extern function _swapRangeOrdered(_data:stdgo.Slice<stdgo.GoFloat32>, _a:stdgo.GoInt, _b:stdgo.GoInt, _n:stdgo.GoInt):Void _swapRangeOrdered__tp__9(_data, _a, _b, _n);
private function _swapRangeOrdered__tp__10(_data:stdgo.Slice<stdgo.GoFloat64>, _a:stdgo.GoInt, _b:stdgo.GoInt, _n:stdgo.GoInt):Void {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L332"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                {
                    final __tmp__0 = _data[(_b + _i : stdgo.GoInt)];
                    final __tmp__1 = _data[(_a + _i : stdgo.GoInt)];
                    final __tmp__2 = _data;
                    final __tmp__3 = (_a + _i : stdgo.GoInt);
                    final __tmp__4 = _data;
                    final __tmp__5 = (_b + _i : stdgo.GoInt);
                    __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                    __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                };
                _i++;
            };
        };
    }
overload inline extern function _swapRangeOrdered(_data:stdgo.Slice<stdgo.GoFloat64>, _a:stdgo.GoInt, _b:stdgo.GoInt, _n:stdgo.GoInt):Void _swapRangeOrdered__tp__10(_data, _a, _b, _n);
private function _swapRangeOrdered__tp__11(_data:stdgo.Slice<stdgo.GoString>, _a:stdgo.GoInt, _b:stdgo.GoInt, _n:stdgo.GoInt):Void {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L332"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                {
                    final __tmp__0 = _data[(_b + _i : stdgo.GoInt)].__copy__();
                    final __tmp__1 = _data[(_a + _i : stdgo.GoInt)].__copy__();
                    final __tmp__2 = _data;
                    final __tmp__3 = (_a + _i : stdgo.GoInt);
                    final __tmp__4 = _data;
                    final __tmp__5 = (_b + _i : stdgo.GoInt);
                    __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                    __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                };
                _i++;
            };
        };
    }
overload inline extern function _swapRangeOrdered(_data:stdgo.Slice<stdgo.GoString>, _a:stdgo.GoInt, _b:stdgo.GoInt, _n:stdgo.GoInt):Void _swapRangeOrdered__tp__11(_data, _a, _b, _n);

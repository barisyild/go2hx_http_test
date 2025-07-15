package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function _insertionSortOrdered__tp__0(_data:stdgo.Slice<stdgo.GoInt8>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L13"
        {
            var _i = (_a + (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i < _b : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L14"
                {
                    var _j = (_i : stdgo.GoInt);
                    while (((_j > _a : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)], _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) : Bool)) {
                        {
                            final __tmp__0 = _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)];
                            final __tmp__1 = _data[(_j : stdgo.GoInt)];
                            final __tmp__2 = _data;
                            final __tmp__3 = (_j : stdgo.GoInt);
                            final __tmp__4 = _data;
                            final __tmp__5 = (_j - (1 : stdgo.GoInt) : stdgo.GoInt);
                            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                        };
                        _j--;
                    };
                };
                _i++;
            };
        };
    }
overload inline extern function _insertionSortOrdered(_data:stdgo.Slice<stdgo.GoInt8>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void _insertionSortOrdered__tp__0(_data, _a, _b);
private function _insertionSortOrdered__tp__1(_data:stdgo.Slice<stdgo.GoInt16>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L13"
        {
            var _i = (_a + (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i < _b : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L14"
                {
                    var _j = (_i : stdgo.GoInt);
                    while (((_j > _a : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)], _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) : Bool)) {
                        {
                            final __tmp__0 = _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)];
                            final __tmp__1 = _data[(_j : stdgo.GoInt)];
                            final __tmp__2 = _data;
                            final __tmp__3 = (_j : stdgo.GoInt);
                            final __tmp__4 = _data;
                            final __tmp__5 = (_j - (1 : stdgo.GoInt) : stdgo.GoInt);
                            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                        };
                        _j--;
                    };
                };
                _i++;
            };
        };
    }
overload inline extern function _insertionSortOrdered(_data:stdgo.Slice<stdgo.GoInt16>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void _insertionSortOrdered__tp__1(_data, _a, _b);
private function _insertionSortOrdered__tp__2(_data:stdgo.Slice<stdgo.GoInt32>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L13"
        {
            var _i = (_a + (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i < _b : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L14"
                {
                    var _j = (_i : stdgo.GoInt);
                    while (((_j > _a : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)], _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) : Bool)) {
                        {
                            final __tmp__0 = _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)];
                            final __tmp__1 = _data[(_j : stdgo.GoInt)];
                            final __tmp__2 = _data;
                            final __tmp__3 = (_j : stdgo.GoInt);
                            final __tmp__4 = _data;
                            final __tmp__5 = (_j - (1 : stdgo.GoInt) : stdgo.GoInt);
                            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                        };
                        _j--;
                    };
                };
                _i++;
            };
        };
    }
overload inline extern function _insertionSortOrdered(_data:stdgo.Slice<stdgo.GoInt32>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void _insertionSortOrdered__tp__2(_data, _a, _b);
private function _insertionSortOrdered__tp__3(_data:stdgo.Slice<stdgo.GoInt64>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L13"
        {
            var _i = (_a + (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i < _b : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L14"
                {
                    var _j = (_i : stdgo.GoInt);
                    while (((_j > _a : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)], _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) : Bool)) {
                        {
                            final __tmp__0 = _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)];
                            final __tmp__1 = _data[(_j : stdgo.GoInt)];
                            final __tmp__2 = _data;
                            final __tmp__3 = (_j : stdgo.GoInt);
                            final __tmp__4 = _data;
                            final __tmp__5 = (_j - (1 : stdgo.GoInt) : stdgo.GoInt);
                            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                        };
                        _j--;
                    };
                };
                _i++;
            };
        };
    }
overload inline extern function _insertionSortOrdered(_data:stdgo.Slice<stdgo.GoInt64>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void _insertionSortOrdered__tp__3(_data, _a, _b);
private function _insertionSortOrdered__tp__4(_data:stdgo.Slice<stdgo.GoUInt8>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L13"
        {
            var _i = (_a + (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i < _b : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L14"
                {
                    var _j = (_i : stdgo.GoInt);
                    while (((_j > _a : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)], _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) : Bool)) {
                        {
                            final __tmp__0 = _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)];
                            final __tmp__1 = _data[(_j : stdgo.GoInt)];
                            final __tmp__2 = _data;
                            final __tmp__3 = (_j : stdgo.GoInt);
                            final __tmp__4 = _data;
                            final __tmp__5 = (_j - (1 : stdgo.GoInt) : stdgo.GoInt);
                            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                        };
                        _j--;
                    };
                };
                _i++;
            };
        };
    }
overload inline extern function _insertionSortOrdered(_data:stdgo.Slice<stdgo.GoUInt8>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void _insertionSortOrdered__tp__4(_data, _a, _b);
private function _insertionSortOrdered__tp__5(_data:stdgo.Slice<stdgo.GoUInt16>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L13"
        {
            var _i = (_a + (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i < _b : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L14"
                {
                    var _j = (_i : stdgo.GoInt);
                    while (((_j > _a : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)], _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) : Bool)) {
                        {
                            final __tmp__0 = _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)];
                            final __tmp__1 = _data[(_j : stdgo.GoInt)];
                            final __tmp__2 = _data;
                            final __tmp__3 = (_j : stdgo.GoInt);
                            final __tmp__4 = _data;
                            final __tmp__5 = (_j - (1 : stdgo.GoInt) : stdgo.GoInt);
                            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                        };
                        _j--;
                    };
                };
                _i++;
            };
        };
    }
overload inline extern function _insertionSortOrdered(_data:stdgo.Slice<stdgo.GoUInt16>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void _insertionSortOrdered__tp__5(_data, _a, _b);
private function _insertionSortOrdered__tp__6(_data:stdgo.Slice<stdgo.GoUInt32>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L13"
        {
            var _i = (_a + (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i < _b : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L14"
                {
                    var _j = (_i : stdgo.GoInt);
                    while (((_j > _a : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)], _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) : Bool)) {
                        {
                            final __tmp__0 = _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)];
                            final __tmp__1 = _data[(_j : stdgo.GoInt)];
                            final __tmp__2 = _data;
                            final __tmp__3 = (_j : stdgo.GoInt);
                            final __tmp__4 = _data;
                            final __tmp__5 = (_j - (1 : stdgo.GoInt) : stdgo.GoInt);
                            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                        };
                        _j--;
                    };
                };
                _i++;
            };
        };
    }
overload inline extern function _insertionSortOrdered(_data:stdgo.Slice<stdgo.GoUInt32>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void _insertionSortOrdered__tp__6(_data, _a, _b);
private function _insertionSortOrdered__tp__7(_data:stdgo.Slice<stdgo.GoUInt64>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L13"
        {
            var _i = (_a + (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i < _b : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L14"
                {
                    var _j = (_i : stdgo.GoInt);
                    while (((_j > _a : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)], _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) : Bool)) {
                        {
                            final __tmp__0 = _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)];
                            final __tmp__1 = _data[(_j : stdgo.GoInt)];
                            final __tmp__2 = _data;
                            final __tmp__3 = (_j : stdgo.GoInt);
                            final __tmp__4 = _data;
                            final __tmp__5 = (_j - (1 : stdgo.GoInt) : stdgo.GoInt);
                            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                        };
                        _j--;
                    };
                };
                _i++;
            };
        };
    }
overload inline extern function _insertionSortOrdered(_data:stdgo.Slice<stdgo.GoUInt64>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void _insertionSortOrdered__tp__7(_data, _a, _b);
private function _insertionSortOrdered__tp__8(_data:stdgo.Slice<stdgo.GoUIntptr>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L13"
        {
            var _i = (_a + (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i < _b : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L14"
                {
                    var _j = (_i : stdgo.GoInt);
                    while (((_j > _a : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)], _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) : Bool)) {
                        {
                            final __tmp__0 = _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)];
                            final __tmp__1 = _data[(_j : stdgo.GoInt)];
                            final __tmp__2 = _data;
                            final __tmp__3 = (_j : stdgo.GoInt);
                            final __tmp__4 = _data;
                            final __tmp__5 = (_j - (1 : stdgo.GoInt) : stdgo.GoInt);
                            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                        };
                        _j--;
                    };
                };
                _i++;
            };
        };
    }
overload inline extern function _insertionSortOrdered(_data:stdgo.Slice<stdgo.GoUIntptr>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void _insertionSortOrdered__tp__8(_data, _a, _b);
private function _insertionSortOrdered__tp__9(_data:stdgo.Slice<stdgo.GoFloat32>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L13"
        {
            var _i = (_a + (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i < _b : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L14"
                {
                    var _j = (_i : stdgo.GoInt);
                    while (((_j > _a : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)], _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) : Bool)) {
                        {
                            final __tmp__0 = _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)];
                            final __tmp__1 = _data[(_j : stdgo.GoInt)];
                            final __tmp__2 = _data;
                            final __tmp__3 = (_j : stdgo.GoInt);
                            final __tmp__4 = _data;
                            final __tmp__5 = (_j - (1 : stdgo.GoInt) : stdgo.GoInt);
                            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                        };
                        _j--;
                    };
                };
                _i++;
            };
        };
    }
overload inline extern function _insertionSortOrdered(_data:stdgo.Slice<stdgo.GoFloat32>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void _insertionSortOrdered__tp__9(_data, _a, _b);
private function _insertionSortOrdered__tp__10(_data:stdgo.Slice<stdgo.GoFloat64>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L13"
        {
            var _i = (_a + (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i < _b : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L14"
                {
                    var _j = (_i : stdgo.GoInt);
                    while (((_j > _a : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)], _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) : Bool)) {
                        {
                            final __tmp__0 = _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)];
                            final __tmp__1 = _data[(_j : stdgo.GoInt)];
                            final __tmp__2 = _data;
                            final __tmp__3 = (_j : stdgo.GoInt);
                            final __tmp__4 = _data;
                            final __tmp__5 = (_j - (1 : stdgo.GoInt) : stdgo.GoInt);
                            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                        };
                        _j--;
                    };
                };
                _i++;
            };
        };
    }
overload inline extern function _insertionSortOrdered(_data:stdgo.Slice<stdgo.GoFloat64>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void _insertionSortOrdered__tp__10(_data, _a, _b);
private function _insertionSortOrdered__tp__11(_data:stdgo.Slice<stdgo.GoString>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L13"
        {
            var _i = (_a + (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i < _b : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L14"
                {
                    var _j = (_i : stdgo.GoInt);
                    while (((_j > _a : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)]?.__copy__(), _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__()) : Bool) : Bool)) {
                        {
                            final __tmp__0 = _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)].__copy__();
                            final __tmp__1 = _data[(_j : stdgo.GoInt)].__copy__();
                            final __tmp__2 = _data;
                            final __tmp__3 = (_j : stdgo.GoInt);
                            final __tmp__4 = _data;
                            final __tmp__5 = (_j - (1 : stdgo.GoInt) : stdgo.GoInt);
                            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                        };
                        _j--;
                    };
                };
                _i++;
            };
        };
    }
overload inline extern function _insertionSortOrdered(_data:stdgo.Slice<stdgo.GoString>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void _insertionSortOrdered__tp__11(_data, _a, _b);

package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function _heapSortOrdered__tp__0(_data:stdgo.Slice<stdgo.GoInt8>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _first = (_a : stdgo.GoInt);
        var _lo = (0 : stdgo.GoInt);
        var _hi = (_b - _a : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L46"
        {
            var _i = (((_hi - (1 : stdgo.GoInt) : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L47"
                stdgo._internal.slices.Slices__siftdownordered._siftDownOrdered(_data, _i, _hi, _first);
                _i--;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L51"
        {
            var _i = (_hi - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                {
                    final __tmp__0 = _data[(_first + _i : stdgo.GoInt)];
                    final __tmp__1 = _data[(_first : stdgo.GoInt)];
                    final __tmp__2 = _data;
                    final __tmp__3 = (_first : stdgo.GoInt);
                    final __tmp__4 = _data;
                    final __tmp__5 = (_first + _i : stdgo.GoInt);
                    __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                    __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                };
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L53"
                stdgo._internal.slices.Slices__siftdownordered._siftDownOrdered(_data, _lo, _i, _first);
                _i--;
            };
        };
    }
overload inline extern function _heapSortOrdered(_data:stdgo.Slice<stdgo.GoInt8>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void _heapSortOrdered__tp__0(_data, _a, _b);
private function _heapSortOrdered__tp__1(_data:stdgo.Slice<stdgo.GoInt16>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _first = (_a : stdgo.GoInt);
        var _lo = (0 : stdgo.GoInt);
        var _hi = (_b - _a : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L46"
        {
            var _i = (((_hi - (1 : stdgo.GoInt) : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L47"
                stdgo._internal.slices.Slices__siftdownordered._siftDownOrdered(_data, _i, _hi, _first);
                _i--;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L51"
        {
            var _i = (_hi - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                {
                    final __tmp__0 = _data[(_first + _i : stdgo.GoInt)];
                    final __tmp__1 = _data[(_first : stdgo.GoInt)];
                    final __tmp__2 = _data;
                    final __tmp__3 = (_first : stdgo.GoInt);
                    final __tmp__4 = _data;
                    final __tmp__5 = (_first + _i : stdgo.GoInt);
                    __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                    __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                };
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L53"
                stdgo._internal.slices.Slices__siftdownordered._siftDownOrdered(_data, _lo, _i, _first);
                _i--;
            };
        };
    }
overload inline extern function _heapSortOrdered(_data:stdgo.Slice<stdgo.GoInt16>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void _heapSortOrdered__tp__1(_data, _a, _b);
private function _heapSortOrdered__tp__2(_data:stdgo.Slice<stdgo.GoInt32>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _first = (_a : stdgo.GoInt);
        var _lo = (0 : stdgo.GoInt);
        var _hi = (_b - _a : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L46"
        {
            var _i = (((_hi - (1 : stdgo.GoInt) : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L47"
                stdgo._internal.slices.Slices__siftdownordered._siftDownOrdered(_data, _i, _hi, _first);
                _i--;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L51"
        {
            var _i = (_hi - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                {
                    final __tmp__0 = _data[(_first + _i : stdgo.GoInt)];
                    final __tmp__1 = _data[(_first : stdgo.GoInt)];
                    final __tmp__2 = _data;
                    final __tmp__3 = (_first : stdgo.GoInt);
                    final __tmp__4 = _data;
                    final __tmp__5 = (_first + _i : stdgo.GoInt);
                    __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                    __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                };
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L53"
                stdgo._internal.slices.Slices__siftdownordered._siftDownOrdered(_data, _lo, _i, _first);
                _i--;
            };
        };
    }
overload inline extern function _heapSortOrdered(_data:stdgo.Slice<stdgo.GoInt32>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void _heapSortOrdered__tp__2(_data, _a, _b);
private function _heapSortOrdered__tp__3(_data:stdgo.Slice<stdgo.GoInt64>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _first = (_a : stdgo.GoInt);
        var _lo = (0 : stdgo.GoInt);
        var _hi = (_b - _a : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L46"
        {
            var _i = (((_hi - (1 : stdgo.GoInt) : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L47"
                stdgo._internal.slices.Slices__siftdownordered._siftDownOrdered(_data, _i, _hi, _first);
                _i--;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L51"
        {
            var _i = (_hi - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                {
                    final __tmp__0 = _data[(_first + _i : stdgo.GoInt)];
                    final __tmp__1 = _data[(_first : stdgo.GoInt)];
                    final __tmp__2 = _data;
                    final __tmp__3 = (_first : stdgo.GoInt);
                    final __tmp__4 = _data;
                    final __tmp__5 = (_first + _i : stdgo.GoInt);
                    __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                    __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                };
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L53"
                stdgo._internal.slices.Slices__siftdownordered._siftDownOrdered(_data, _lo, _i, _first);
                _i--;
            };
        };
    }
overload inline extern function _heapSortOrdered(_data:stdgo.Slice<stdgo.GoInt64>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void _heapSortOrdered__tp__3(_data, _a, _b);
private function _heapSortOrdered__tp__4(_data:stdgo.Slice<stdgo.GoUInt8>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _first = (_a : stdgo.GoInt);
        var _lo = (0 : stdgo.GoInt);
        var _hi = (_b - _a : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L46"
        {
            var _i = (((_hi - (1 : stdgo.GoInt) : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L47"
                stdgo._internal.slices.Slices__siftdownordered._siftDownOrdered(_data, _i, _hi, _first);
                _i--;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L51"
        {
            var _i = (_hi - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                {
                    final __tmp__0 = _data[(_first + _i : stdgo.GoInt)];
                    final __tmp__1 = _data[(_first : stdgo.GoInt)];
                    final __tmp__2 = _data;
                    final __tmp__3 = (_first : stdgo.GoInt);
                    final __tmp__4 = _data;
                    final __tmp__5 = (_first + _i : stdgo.GoInt);
                    __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                    __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                };
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L53"
                stdgo._internal.slices.Slices__siftdownordered._siftDownOrdered(_data, _lo, _i, _first);
                _i--;
            };
        };
    }
overload inline extern function _heapSortOrdered(_data:stdgo.Slice<stdgo.GoUInt8>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void _heapSortOrdered__tp__4(_data, _a, _b);
private function _heapSortOrdered__tp__5(_data:stdgo.Slice<stdgo.GoUInt16>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _first = (_a : stdgo.GoInt);
        var _lo = (0 : stdgo.GoInt);
        var _hi = (_b - _a : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L46"
        {
            var _i = (((_hi - (1 : stdgo.GoInt) : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L47"
                stdgo._internal.slices.Slices__siftdownordered._siftDownOrdered(_data, _i, _hi, _first);
                _i--;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L51"
        {
            var _i = (_hi - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                {
                    final __tmp__0 = _data[(_first + _i : stdgo.GoInt)];
                    final __tmp__1 = _data[(_first : stdgo.GoInt)];
                    final __tmp__2 = _data;
                    final __tmp__3 = (_first : stdgo.GoInt);
                    final __tmp__4 = _data;
                    final __tmp__5 = (_first + _i : stdgo.GoInt);
                    __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                    __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                };
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L53"
                stdgo._internal.slices.Slices__siftdownordered._siftDownOrdered(_data, _lo, _i, _first);
                _i--;
            };
        };
    }
overload inline extern function _heapSortOrdered(_data:stdgo.Slice<stdgo.GoUInt16>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void _heapSortOrdered__tp__5(_data, _a, _b);
private function _heapSortOrdered__tp__6(_data:stdgo.Slice<stdgo.GoUInt32>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _first = (_a : stdgo.GoInt);
        var _lo = (0 : stdgo.GoInt);
        var _hi = (_b - _a : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L46"
        {
            var _i = (((_hi - (1 : stdgo.GoInt) : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L47"
                stdgo._internal.slices.Slices__siftdownordered._siftDownOrdered(_data, _i, _hi, _first);
                _i--;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L51"
        {
            var _i = (_hi - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                {
                    final __tmp__0 = _data[(_first + _i : stdgo.GoInt)];
                    final __tmp__1 = _data[(_first : stdgo.GoInt)];
                    final __tmp__2 = _data;
                    final __tmp__3 = (_first : stdgo.GoInt);
                    final __tmp__4 = _data;
                    final __tmp__5 = (_first + _i : stdgo.GoInt);
                    __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                    __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                };
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L53"
                stdgo._internal.slices.Slices__siftdownordered._siftDownOrdered(_data, _lo, _i, _first);
                _i--;
            };
        };
    }
overload inline extern function _heapSortOrdered(_data:stdgo.Slice<stdgo.GoUInt32>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void _heapSortOrdered__tp__6(_data, _a, _b);
private function _heapSortOrdered__tp__7(_data:stdgo.Slice<stdgo.GoUInt64>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _first = (_a : stdgo.GoInt);
        var _lo = (0 : stdgo.GoInt);
        var _hi = (_b - _a : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L46"
        {
            var _i = (((_hi - (1 : stdgo.GoInt) : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L47"
                stdgo._internal.slices.Slices__siftdownordered._siftDownOrdered(_data, _i, _hi, _first);
                _i--;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L51"
        {
            var _i = (_hi - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                {
                    final __tmp__0 = _data[(_first + _i : stdgo.GoInt)];
                    final __tmp__1 = _data[(_first : stdgo.GoInt)];
                    final __tmp__2 = _data;
                    final __tmp__3 = (_first : stdgo.GoInt);
                    final __tmp__4 = _data;
                    final __tmp__5 = (_first + _i : stdgo.GoInt);
                    __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                    __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                };
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L53"
                stdgo._internal.slices.Slices__siftdownordered._siftDownOrdered(_data, _lo, _i, _first);
                _i--;
            };
        };
    }
overload inline extern function _heapSortOrdered(_data:stdgo.Slice<stdgo.GoUInt64>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void _heapSortOrdered__tp__7(_data, _a, _b);
private function _heapSortOrdered__tp__8(_data:stdgo.Slice<stdgo.GoUIntptr>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _first = (_a : stdgo.GoInt);
        var _lo = (0 : stdgo.GoInt);
        var _hi = (_b - _a : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L46"
        {
            var _i = (((_hi - (1 : stdgo.GoInt) : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L47"
                stdgo._internal.slices.Slices__siftdownordered._siftDownOrdered(_data, _i, _hi, _first);
                _i--;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L51"
        {
            var _i = (_hi - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                {
                    final __tmp__0 = _data[(_first + _i : stdgo.GoInt)];
                    final __tmp__1 = _data[(_first : stdgo.GoInt)];
                    final __tmp__2 = _data;
                    final __tmp__3 = (_first : stdgo.GoInt);
                    final __tmp__4 = _data;
                    final __tmp__5 = (_first + _i : stdgo.GoInt);
                    __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                    __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                };
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L53"
                stdgo._internal.slices.Slices__siftdownordered._siftDownOrdered(_data, _lo, _i, _first);
                _i--;
            };
        };
    }
overload inline extern function _heapSortOrdered(_data:stdgo.Slice<stdgo.GoUIntptr>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void _heapSortOrdered__tp__8(_data, _a, _b);
private function _heapSortOrdered__tp__9(_data:stdgo.Slice<stdgo.GoFloat32>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _first = (_a : stdgo.GoInt);
        var _lo = (0 : stdgo.GoInt);
        var _hi = (_b - _a : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L46"
        {
            var _i = (((_hi - (1 : stdgo.GoInt) : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L47"
                stdgo._internal.slices.Slices__siftdownordered._siftDownOrdered(_data, _i, _hi, _first);
                _i--;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L51"
        {
            var _i = (_hi - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                {
                    final __tmp__0 = _data[(_first + _i : stdgo.GoInt)];
                    final __tmp__1 = _data[(_first : stdgo.GoInt)];
                    final __tmp__2 = _data;
                    final __tmp__3 = (_first : stdgo.GoInt);
                    final __tmp__4 = _data;
                    final __tmp__5 = (_first + _i : stdgo.GoInt);
                    __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                    __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                };
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L53"
                stdgo._internal.slices.Slices__siftdownordered._siftDownOrdered(_data, _lo, _i, _first);
                _i--;
            };
        };
    }
overload inline extern function _heapSortOrdered(_data:stdgo.Slice<stdgo.GoFloat32>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void _heapSortOrdered__tp__9(_data, _a, _b);
private function _heapSortOrdered__tp__10(_data:stdgo.Slice<stdgo.GoFloat64>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _first = (_a : stdgo.GoInt);
        var _lo = (0 : stdgo.GoInt);
        var _hi = (_b - _a : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L46"
        {
            var _i = (((_hi - (1 : stdgo.GoInt) : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L47"
                stdgo._internal.slices.Slices__siftdownordered._siftDownOrdered(_data, _i, _hi, _first);
                _i--;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L51"
        {
            var _i = (_hi - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                {
                    final __tmp__0 = _data[(_first + _i : stdgo.GoInt)];
                    final __tmp__1 = _data[(_first : stdgo.GoInt)];
                    final __tmp__2 = _data;
                    final __tmp__3 = (_first : stdgo.GoInt);
                    final __tmp__4 = _data;
                    final __tmp__5 = (_first + _i : stdgo.GoInt);
                    __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                    __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                };
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L53"
                stdgo._internal.slices.Slices__siftdownordered._siftDownOrdered(_data, _lo, _i, _first);
                _i--;
            };
        };
    }
overload inline extern function _heapSortOrdered(_data:stdgo.Slice<stdgo.GoFloat64>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void _heapSortOrdered__tp__10(_data, _a, _b);
private function _heapSortOrdered__tp__11(_data:stdgo.Slice<stdgo.GoString>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _first = (_a : stdgo.GoInt);
        var _lo = (0 : stdgo.GoInt);
        var _hi = (_b - _a : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L46"
        {
            var _i = (((_hi - (1 : stdgo.GoInt) : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L47"
                stdgo._internal.slices.Slices__siftdownordered._siftDownOrdered(_data, _i, _hi, _first);
                _i--;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L51"
        {
            var _i = (_hi - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                {
                    final __tmp__0 = _data[(_first + _i : stdgo.GoInt)].__copy__();
                    final __tmp__1 = _data[(_first : stdgo.GoInt)].__copy__();
                    final __tmp__2 = _data;
                    final __tmp__3 = (_first : stdgo.GoInt);
                    final __tmp__4 = _data;
                    final __tmp__5 = (_first + _i : stdgo.GoInt);
                    __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                    __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                };
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L53"
                stdgo._internal.slices.Slices__siftdownordered._siftDownOrdered(_data, _lo, _i, _first);
                _i--;
            };
        };
    }
overload inline extern function _heapSortOrdered(_data:stdgo.Slice<stdgo.GoString>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void _heapSortOrdered__tp__11(_data, _a, _b);

package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function _stableOrdered__tp__0(_data:stdgo.Slice<stdgo.GoInt8>, _n:stdgo.GoInt):Void {
        var _blockSize = (20 : stdgo.GoInt);
        var __0 = (0 : stdgo.GoInt), __1 = (_blockSize : stdgo.GoInt);
var _b = __1, _a = __0;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L340"
        while ((_b <= _n : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L341"
            stdgo._internal.slices.Slices__insertionsortordered._insertionSortOrdered(_data, _a, _b);
            _a = _b;
            _b = (_b + (_blockSize) : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L345"
        stdgo._internal.slices.Slices__insertionsortordered._insertionSortOrdered(_data, _a, _n);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L347"
        while ((_blockSize < _n : Bool)) {
            {
                final __tmp__0 = (0 : stdgo.GoInt);
                final __tmp__1 = ((2 : stdgo.GoInt) * _blockSize : stdgo.GoInt);
                _a = @:binopAssign __tmp__0;
                _b = @:binopAssign __tmp__1;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L349"
            while ((_b <= _n : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L350"
                stdgo._internal.slices.Slices__symmergeordered._symMergeOrdered(_data, _a, (_a + _blockSize : stdgo.GoInt), _b);
                _a = _b;
                _b = (_b + (((2 : stdgo.GoInt) * _blockSize : stdgo.GoInt)) : stdgo.GoInt);
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L354"
            {
                var _m = (_a + _blockSize : stdgo.GoInt);
                if ((_m < _n : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L355"
                    stdgo._internal.slices.Slices__symmergeordered._symMergeOrdered(_data, _a, _m, _n);
                };
            };
            _blockSize = (_blockSize * ((2 : stdgo.GoInt)) : stdgo.GoInt);
        };
    }
overload inline extern function _stableOrdered(_data:stdgo.Slice<stdgo.GoInt8>, _n:stdgo.GoInt):Void _stableOrdered__tp__0(_data, _n);
private function _stableOrdered__tp__1(_data:stdgo.Slice<stdgo.GoInt16>, _n:stdgo.GoInt):Void {
        var _blockSize = (20 : stdgo.GoInt);
        var __0 = (0 : stdgo.GoInt), __1 = (_blockSize : stdgo.GoInt);
var _b = __1, _a = __0;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L340"
        while ((_b <= _n : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L341"
            stdgo._internal.slices.Slices__insertionsortordered._insertionSortOrdered(_data, _a, _b);
            _a = _b;
            _b = (_b + (_blockSize) : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L345"
        stdgo._internal.slices.Slices__insertionsortordered._insertionSortOrdered(_data, _a, _n);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L347"
        while ((_blockSize < _n : Bool)) {
            {
                final __tmp__0 = (0 : stdgo.GoInt);
                final __tmp__1 = ((2 : stdgo.GoInt) * _blockSize : stdgo.GoInt);
                _a = @:binopAssign __tmp__0;
                _b = @:binopAssign __tmp__1;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L349"
            while ((_b <= _n : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L350"
                stdgo._internal.slices.Slices__symmergeordered._symMergeOrdered(_data, _a, (_a + _blockSize : stdgo.GoInt), _b);
                _a = _b;
                _b = (_b + (((2 : stdgo.GoInt) * _blockSize : stdgo.GoInt)) : stdgo.GoInt);
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L354"
            {
                var _m = (_a + _blockSize : stdgo.GoInt);
                if ((_m < _n : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L355"
                    stdgo._internal.slices.Slices__symmergeordered._symMergeOrdered(_data, _a, _m, _n);
                };
            };
            _blockSize = (_blockSize * ((2 : stdgo.GoInt)) : stdgo.GoInt);
        };
    }
overload inline extern function _stableOrdered(_data:stdgo.Slice<stdgo.GoInt16>, _n:stdgo.GoInt):Void _stableOrdered__tp__1(_data, _n);
private function _stableOrdered__tp__2(_data:stdgo.Slice<stdgo.GoInt32>, _n:stdgo.GoInt):Void {
        var _blockSize = (20 : stdgo.GoInt);
        var __0 = (0 : stdgo.GoInt), __1 = (_blockSize : stdgo.GoInt);
var _b = __1, _a = __0;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L340"
        while ((_b <= _n : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L341"
            stdgo._internal.slices.Slices__insertionsortordered._insertionSortOrdered(_data, _a, _b);
            _a = _b;
            _b = (_b + (_blockSize) : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L345"
        stdgo._internal.slices.Slices__insertionsortordered._insertionSortOrdered(_data, _a, _n);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L347"
        while ((_blockSize < _n : Bool)) {
            {
                final __tmp__0 = (0 : stdgo.GoInt);
                final __tmp__1 = ((2 : stdgo.GoInt) * _blockSize : stdgo.GoInt);
                _a = @:binopAssign __tmp__0;
                _b = @:binopAssign __tmp__1;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L349"
            while ((_b <= _n : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L350"
                stdgo._internal.slices.Slices__symmergeordered._symMergeOrdered(_data, _a, (_a + _blockSize : stdgo.GoInt), _b);
                _a = _b;
                _b = (_b + (((2 : stdgo.GoInt) * _blockSize : stdgo.GoInt)) : stdgo.GoInt);
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L354"
            {
                var _m = (_a + _blockSize : stdgo.GoInt);
                if ((_m < _n : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L355"
                    stdgo._internal.slices.Slices__symmergeordered._symMergeOrdered(_data, _a, _m, _n);
                };
            };
            _blockSize = (_blockSize * ((2 : stdgo.GoInt)) : stdgo.GoInt);
        };
    }
overload inline extern function _stableOrdered(_data:stdgo.Slice<stdgo.GoInt32>, _n:stdgo.GoInt):Void _stableOrdered__tp__2(_data, _n);
private function _stableOrdered__tp__3(_data:stdgo.Slice<stdgo.GoInt64>, _n:stdgo.GoInt):Void {
        var _blockSize = (20 : stdgo.GoInt);
        var __0 = (0 : stdgo.GoInt), __1 = (_blockSize : stdgo.GoInt);
var _b = __1, _a = __0;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L340"
        while ((_b <= _n : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L341"
            stdgo._internal.slices.Slices__insertionsortordered._insertionSortOrdered(_data, _a, _b);
            _a = _b;
            _b = (_b + (_blockSize) : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L345"
        stdgo._internal.slices.Slices__insertionsortordered._insertionSortOrdered(_data, _a, _n);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L347"
        while ((_blockSize < _n : Bool)) {
            {
                final __tmp__0 = (0 : stdgo.GoInt);
                final __tmp__1 = ((2 : stdgo.GoInt) * _blockSize : stdgo.GoInt);
                _a = @:binopAssign __tmp__0;
                _b = @:binopAssign __tmp__1;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L349"
            while ((_b <= _n : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L350"
                stdgo._internal.slices.Slices__symmergeordered._symMergeOrdered(_data, _a, (_a + _blockSize : stdgo.GoInt), _b);
                _a = _b;
                _b = (_b + (((2 : stdgo.GoInt) * _blockSize : stdgo.GoInt)) : stdgo.GoInt);
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L354"
            {
                var _m = (_a + _blockSize : stdgo.GoInt);
                if ((_m < _n : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L355"
                    stdgo._internal.slices.Slices__symmergeordered._symMergeOrdered(_data, _a, _m, _n);
                };
            };
            _blockSize = (_blockSize * ((2 : stdgo.GoInt)) : stdgo.GoInt);
        };
    }
overload inline extern function _stableOrdered(_data:stdgo.Slice<stdgo.GoInt64>, _n:stdgo.GoInt):Void _stableOrdered__tp__3(_data, _n);
private function _stableOrdered__tp__4(_data:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):Void {
        var _blockSize = (20 : stdgo.GoInt);
        var __0 = (0 : stdgo.GoInt), __1 = (_blockSize : stdgo.GoInt);
var _b = __1, _a = __0;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L340"
        while ((_b <= _n : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L341"
            stdgo._internal.slices.Slices__insertionsortordered._insertionSortOrdered(_data, _a, _b);
            _a = _b;
            _b = (_b + (_blockSize) : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L345"
        stdgo._internal.slices.Slices__insertionsortordered._insertionSortOrdered(_data, _a, _n);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L347"
        while ((_blockSize < _n : Bool)) {
            {
                final __tmp__0 = (0 : stdgo.GoInt);
                final __tmp__1 = ((2 : stdgo.GoInt) * _blockSize : stdgo.GoInt);
                _a = @:binopAssign __tmp__0;
                _b = @:binopAssign __tmp__1;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L349"
            while ((_b <= _n : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L350"
                stdgo._internal.slices.Slices__symmergeordered._symMergeOrdered(_data, _a, (_a + _blockSize : stdgo.GoInt), _b);
                _a = _b;
                _b = (_b + (((2 : stdgo.GoInt) * _blockSize : stdgo.GoInt)) : stdgo.GoInt);
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L354"
            {
                var _m = (_a + _blockSize : stdgo.GoInt);
                if ((_m < _n : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L355"
                    stdgo._internal.slices.Slices__symmergeordered._symMergeOrdered(_data, _a, _m, _n);
                };
            };
            _blockSize = (_blockSize * ((2 : stdgo.GoInt)) : stdgo.GoInt);
        };
    }
overload inline extern function _stableOrdered(_data:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):Void _stableOrdered__tp__4(_data, _n);
private function _stableOrdered__tp__5(_data:stdgo.Slice<stdgo.GoUInt16>, _n:stdgo.GoInt):Void {
        var _blockSize = (20 : stdgo.GoInt);
        var __0 = (0 : stdgo.GoInt), __1 = (_blockSize : stdgo.GoInt);
var _b = __1, _a = __0;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L340"
        while ((_b <= _n : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L341"
            stdgo._internal.slices.Slices__insertionsortordered._insertionSortOrdered(_data, _a, _b);
            _a = _b;
            _b = (_b + (_blockSize) : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L345"
        stdgo._internal.slices.Slices__insertionsortordered._insertionSortOrdered(_data, _a, _n);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L347"
        while ((_blockSize < _n : Bool)) {
            {
                final __tmp__0 = (0 : stdgo.GoInt);
                final __tmp__1 = ((2 : stdgo.GoInt) * _blockSize : stdgo.GoInt);
                _a = @:binopAssign __tmp__0;
                _b = @:binopAssign __tmp__1;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L349"
            while ((_b <= _n : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L350"
                stdgo._internal.slices.Slices__symmergeordered._symMergeOrdered(_data, _a, (_a + _blockSize : stdgo.GoInt), _b);
                _a = _b;
                _b = (_b + (((2 : stdgo.GoInt) * _blockSize : stdgo.GoInt)) : stdgo.GoInt);
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L354"
            {
                var _m = (_a + _blockSize : stdgo.GoInt);
                if ((_m < _n : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L355"
                    stdgo._internal.slices.Slices__symmergeordered._symMergeOrdered(_data, _a, _m, _n);
                };
            };
            _blockSize = (_blockSize * ((2 : stdgo.GoInt)) : stdgo.GoInt);
        };
    }
overload inline extern function _stableOrdered(_data:stdgo.Slice<stdgo.GoUInt16>, _n:stdgo.GoInt):Void _stableOrdered__tp__5(_data, _n);
private function _stableOrdered__tp__6(_data:stdgo.Slice<stdgo.GoUInt32>, _n:stdgo.GoInt):Void {
        var _blockSize = (20 : stdgo.GoInt);
        var __0 = (0 : stdgo.GoInt), __1 = (_blockSize : stdgo.GoInt);
var _b = __1, _a = __0;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L340"
        while ((_b <= _n : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L341"
            stdgo._internal.slices.Slices__insertionsortordered._insertionSortOrdered(_data, _a, _b);
            _a = _b;
            _b = (_b + (_blockSize) : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L345"
        stdgo._internal.slices.Slices__insertionsortordered._insertionSortOrdered(_data, _a, _n);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L347"
        while ((_blockSize < _n : Bool)) {
            {
                final __tmp__0 = (0 : stdgo.GoInt);
                final __tmp__1 = ((2 : stdgo.GoInt) * _blockSize : stdgo.GoInt);
                _a = @:binopAssign __tmp__0;
                _b = @:binopAssign __tmp__1;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L349"
            while ((_b <= _n : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L350"
                stdgo._internal.slices.Slices__symmergeordered._symMergeOrdered(_data, _a, (_a + _blockSize : stdgo.GoInt), _b);
                _a = _b;
                _b = (_b + (((2 : stdgo.GoInt) * _blockSize : stdgo.GoInt)) : stdgo.GoInt);
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L354"
            {
                var _m = (_a + _blockSize : stdgo.GoInt);
                if ((_m < _n : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L355"
                    stdgo._internal.slices.Slices__symmergeordered._symMergeOrdered(_data, _a, _m, _n);
                };
            };
            _blockSize = (_blockSize * ((2 : stdgo.GoInt)) : stdgo.GoInt);
        };
    }
overload inline extern function _stableOrdered(_data:stdgo.Slice<stdgo.GoUInt32>, _n:stdgo.GoInt):Void _stableOrdered__tp__6(_data, _n);
private function _stableOrdered__tp__7(_data:stdgo.Slice<stdgo.GoUInt64>, _n:stdgo.GoInt):Void {
        var _blockSize = (20 : stdgo.GoInt);
        var __0 = (0 : stdgo.GoInt), __1 = (_blockSize : stdgo.GoInt);
var _b = __1, _a = __0;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L340"
        while ((_b <= _n : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L341"
            stdgo._internal.slices.Slices__insertionsortordered._insertionSortOrdered(_data, _a, _b);
            _a = _b;
            _b = (_b + (_blockSize) : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L345"
        stdgo._internal.slices.Slices__insertionsortordered._insertionSortOrdered(_data, _a, _n);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L347"
        while ((_blockSize < _n : Bool)) {
            {
                final __tmp__0 = (0 : stdgo.GoInt);
                final __tmp__1 = ((2 : stdgo.GoInt) * _blockSize : stdgo.GoInt);
                _a = @:binopAssign __tmp__0;
                _b = @:binopAssign __tmp__1;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L349"
            while ((_b <= _n : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L350"
                stdgo._internal.slices.Slices__symmergeordered._symMergeOrdered(_data, _a, (_a + _blockSize : stdgo.GoInt), _b);
                _a = _b;
                _b = (_b + (((2 : stdgo.GoInt) * _blockSize : stdgo.GoInt)) : stdgo.GoInt);
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L354"
            {
                var _m = (_a + _blockSize : stdgo.GoInt);
                if ((_m < _n : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L355"
                    stdgo._internal.slices.Slices__symmergeordered._symMergeOrdered(_data, _a, _m, _n);
                };
            };
            _blockSize = (_blockSize * ((2 : stdgo.GoInt)) : stdgo.GoInt);
        };
    }
overload inline extern function _stableOrdered(_data:stdgo.Slice<stdgo.GoUInt64>, _n:stdgo.GoInt):Void _stableOrdered__tp__7(_data, _n);
private function _stableOrdered__tp__8(_data:stdgo.Slice<stdgo.GoUIntptr>, _n:stdgo.GoInt):Void {
        var _blockSize = (20 : stdgo.GoInt);
        var __0 = (0 : stdgo.GoInt), __1 = (_blockSize : stdgo.GoInt);
var _b = __1, _a = __0;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L340"
        while ((_b <= _n : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L341"
            stdgo._internal.slices.Slices__insertionsortordered._insertionSortOrdered(_data, _a, _b);
            _a = _b;
            _b = (_b + (_blockSize) : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L345"
        stdgo._internal.slices.Slices__insertionsortordered._insertionSortOrdered(_data, _a, _n);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L347"
        while ((_blockSize < _n : Bool)) {
            {
                final __tmp__0 = (0 : stdgo.GoInt);
                final __tmp__1 = ((2 : stdgo.GoInt) * _blockSize : stdgo.GoInt);
                _a = @:binopAssign __tmp__0;
                _b = @:binopAssign __tmp__1;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L349"
            while ((_b <= _n : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L350"
                stdgo._internal.slices.Slices__symmergeordered._symMergeOrdered(_data, _a, (_a + _blockSize : stdgo.GoInt), _b);
                _a = _b;
                _b = (_b + (((2 : stdgo.GoInt) * _blockSize : stdgo.GoInt)) : stdgo.GoInt);
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L354"
            {
                var _m = (_a + _blockSize : stdgo.GoInt);
                if ((_m < _n : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L355"
                    stdgo._internal.slices.Slices__symmergeordered._symMergeOrdered(_data, _a, _m, _n);
                };
            };
            _blockSize = (_blockSize * ((2 : stdgo.GoInt)) : stdgo.GoInt);
        };
    }
overload inline extern function _stableOrdered(_data:stdgo.Slice<stdgo.GoUIntptr>, _n:stdgo.GoInt):Void _stableOrdered__tp__8(_data, _n);
private function _stableOrdered__tp__9(_data:stdgo.Slice<stdgo.GoFloat32>, _n:stdgo.GoInt):Void {
        var _blockSize = (20 : stdgo.GoInt);
        var __0 = (0 : stdgo.GoInt), __1 = (_blockSize : stdgo.GoInt);
var _b = __1, _a = __0;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L340"
        while ((_b <= _n : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L341"
            stdgo._internal.slices.Slices__insertionsortordered._insertionSortOrdered(_data, _a, _b);
            _a = _b;
            _b = (_b + (_blockSize) : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L345"
        stdgo._internal.slices.Slices__insertionsortordered._insertionSortOrdered(_data, _a, _n);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L347"
        while ((_blockSize < _n : Bool)) {
            {
                final __tmp__0 = (0 : stdgo.GoInt);
                final __tmp__1 = ((2 : stdgo.GoInt) * _blockSize : stdgo.GoInt);
                _a = @:binopAssign __tmp__0;
                _b = @:binopAssign __tmp__1;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L349"
            while ((_b <= _n : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L350"
                stdgo._internal.slices.Slices__symmergeordered._symMergeOrdered(_data, _a, (_a + _blockSize : stdgo.GoInt), _b);
                _a = _b;
                _b = (_b + (((2 : stdgo.GoInt) * _blockSize : stdgo.GoInt)) : stdgo.GoInt);
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L354"
            {
                var _m = (_a + _blockSize : stdgo.GoInt);
                if ((_m < _n : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L355"
                    stdgo._internal.slices.Slices__symmergeordered._symMergeOrdered(_data, _a, _m, _n);
                };
            };
            _blockSize = (_blockSize * ((2 : stdgo.GoInt)) : stdgo.GoInt);
        };
    }
overload inline extern function _stableOrdered(_data:stdgo.Slice<stdgo.GoFloat32>, _n:stdgo.GoInt):Void _stableOrdered__tp__9(_data, _n);
private function _stableOrdered__tp__10(_data:stdgo.Slice<stdgo.GoFloat64>, _n:stdgo.GoInt):Void {
        var _blockSize = (20 : stdgo.GoInt);
        var __0 = (0 : stdgo.GoInt), __1 = (_blockSize : stdgo.GoInt);
var _b = __1, _a = __0;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L340"
        while ((_b <= _n : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L341"
            stdgo._internal.slices.Slices__insertionsortordered._insertionSortOrdered(_data, _a, _b);
            _a = _b;
            _b = (_b + (_blockSize) : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L345"
        stdgo._internal.slices.Slices__insertionsortordered._insertionSortOrdered(_data, _a, _n);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L347"
        while ((_blockSize < _n : Bool)) {
            {
                final __tmp__0 = (0 : stdgo.GoInt);
                final __tmp__1 = ((2 : stdgo.GoInt) * _blockSize : stdgo.GoInt);
                _a = @:binopAssign __tmp__0;
                _b = @:binopAssign __tmp__1;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L349"
            while ((_b <= _n : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L350"
                stdgo._internal.slices.Slices__symmergeordered._symMergeOrdered(_data, _a, (_a + _blockSize : stdgo.GoInt), _b);
                _a = _b;
                _b = (_b + (((2 : stdgo.GoInt) * _blockSize : stdgo.GoInt)) : stdgo.GoInt);
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L354"
            {
                var _m = (_a + _blockSize : stdgo.GoInt);
                if ((_m < _n : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L355"
                    stdgo._internal.slices.Slices__symmergeordered._symMergeOrdered(_data, _a, _m, _n);
                };
            };
            _blockSize = (_blockSize * ((2 : stdgo.GoInt)) : stdgo.GoInt);
        };
    }
overload inline extern function _stableOrdered(_data:stdgo.Slice<stdgo.GoFloat64>, _n:stdgo.GoInt):Void _stableOrdered__tp__10(_data, _n);
private function _stableOrdered__tp__11(_data:stdgo.Slice<stdgo.GoString>, _n:stdgo.GoInt):Void {
        var _blockSize = (20 : stdgo.GoInt);
        var __0 = (0 : stdgo.GoInt), __1 = (_blockSize : stdgo.GoInt);
var _b = __1, _a = __0;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L340"
        while ((_b <= _n : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L341"
            stdgo._internal.slices.Slices__insertionsortordered._insertionSortOrdered(_data, _a, _b);
            _a = _b;
            _b = (_b + (_blockSize) : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L345"
        stdgo._internal.slices.Slices__insertionsortordered._insertionSortOrdered(_data, _a, _n);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L347"
        while ((_blockSize < _n : Bool)) {
            {
                final __tmp__0 = (0 : stdgo.GoInt);
                final __tmp__1 = ((2 : stdgo.GoInt) * _blockSize : stdgo.GoInt);
                _a = @:binopAssign __tmp__0;
                _b = @:binopAssign __tmp__1;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L349"
            while ((_b <= _n : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L350"
                stdgo._internal.slices.Slices__symmergeordered._symMergeOrdered(_data, _a, (_a + _blockSize : stdgo.GoInt), _b);
                _a = _b;
                _b = (_b + (((2 : stdgo.GoInt) * _blockSize : stdgo.GoInt)) : stdgo.GoInt);
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L354"
            {
                var _m = (_a + _blockSize : stdgo.GoInt);
                if ((_m < _n : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L355"
                    stdgo._internal.slices.Slices__symmergeordered._symMergeOrdered(_data, _a, _m, _n);
                };
            };
            _blockSize = (_blockSize * ((2 : stdgo.GoInt)) : stdgo.GoInt);
        };
    }
overload inline extern function _stableOrdered(_data:stdgo.Slice<stdgo.GoString>, _n:stdgo.GoInt):Void _stableOrdered__tp__11(_data, _n);

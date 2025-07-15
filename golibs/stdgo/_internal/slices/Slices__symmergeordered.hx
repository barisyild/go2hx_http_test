package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function _symMergeOrdered__tp__0(_data:stdgo.Slice<stdgo.GoInt8>, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L384"
        if ((_m - _a : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
            var _i = (_m : stdgo.GoInt);
            var _j = (_b : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L390"
            while ((_i < _j : Bool)) {
                var _h = ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L392"
                if ((stdgo._internal.cmp.Cmp_less.less(_data[(_h : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool)) {
                    _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
                } else {
                    _j = _h;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L399"
            {
                var _k = (_a : stdgo.GoInt);
                while ((_k < (_i - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                    {
                        final __tmp__0 = _data[(_k + (1 : stdgo.GoInt) : stdgo.GoInt)];
                        final __tmp__1 = _data[(_k : stdgo.GoInt)];
                        final __tmp__2 = _data;
                        final __tmp__3 = (_k : stdgo.GoInt);
                        final __tmp__4 = _data;
                        final __tmp__5 = (_k + (1 : stdgo.GoInt) : stdgo.GoInt);
                        __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                        __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                    };
                    _k++;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L402"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L408"
        if ((_b - _m : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
            var _i = (_a : stdgo.GoInt);
            var _j = (_m : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L414"
            while ((_i < _j : Bool)) {
                var _h = ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L416"
                if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_m : stdgo.GoInt)], _data[(_h : stdgo.GoInt)]) : Bool)) {
                    _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
                } else {
                    _j = _h;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L423"
            {
                var _k = (_m : stdgo.GoInt);
                while ((_k > _i : Bool)) {
                    {
                        final __tmp__0 = _data[(_k - (1 : stdgo.GoInt) : stdgo.GoInt)];
                        final __tmp__1 = _data[(_k : stdgo.GoInt)];
                        final __tmp__2 = _data;
                        final __tmp__3 = (_k : stdgo.GoInt);
                        final __tmp__4 = _data;
                        final __tmp__5 = (_k - (1 : stdgo.GoInt) : stdgo.GoInt);
                        __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                        __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                    };
                    _k--;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L426"
            return;
        };
        var _mid = ((((_a + _b : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
        var _n = (_mid + _m : stdgo.GoInt);
        var _start:stdgo.GoInt = (0 : stdgo.GoInt), _r:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L432"
        if ((_m > _mid : Bool)) {
            _start = (_n - _b : stdgo.GoInt);
            _r = _mid;
        } else {
            _start = _a;
            _r = _m;
        };
        var _p = (_n - (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L441"
        while ((_start < _r : Bool)) {
            var _c = ((((_start + _r : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L443"
            if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_p - _c : stdgo.GoInt)], _data[(_c : stdgo.GoInt)]) : Bool)) {
                _start = (_c + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _r = _c;
            };
        };
        var _end = (_n - _start : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L451"
        if (((_start < _m : Bool) && (_m < _end : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L452"
            stdgo._internal.slices.Slices__rotateordered._rotateOrdered(_data, _start, _m, _end);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L454"
        if (((_a < _start : Bool) && (_start < _mid : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L455"
            stdgo._internal.slices.Slices__symmergeordered._symMergeOrdered(_data, _a, _start, _mid);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L457"
        if (((_mid < _end : Bool) && (_end < _b : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L458"
            stdgo._internal.slices.Slices__symmergeordered._symMergeOrdered(_data, _mid, _end, _b);
        };
    }
overload inline extern function _symMergeOrdered(_data:stdgo.Slice<stdgo.GoInt8>, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void _symMergeOrdered__tp__0(_data, _a, _m, _b);
private function _symMergeOrdered__tp__1(_data:stdgo.Slice<stdgo.GoInt16>, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L384"
        if ((_m - _a : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
            var _i = (_m : stdgo.GoInt);
            var _j = (_b : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L390"
            while ((_i < _j : Bool)) {
                var _h = ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L392"
                if ((stdgo._internal.cmp.Cmp_less.less(_data[(_h : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool)) {
                    _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
                } else {
                    _j = _h;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L399"
            {
                var _k = (_a : stdgo.GoInt);
                while ((_k < (_i - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                    {
                        final __tmp__0 = _data[(_k + (1 : stdgo.GoInt) : stdgo.GoInt)];
                        final __tmp__1 = _data[(_k : stdgo.GoInt)];
                        final __tmp__2 = _data;
                        final __tmp__3 = (_k : stdgo.GoInt);
                        final __tmp__4 = _data;
                        final __tmp__5 = (_k + (1 : stdgo.GoInt) : stdgo.GoInt);
                        __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                        __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                    };
                    _k++;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L402"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L408"
        if ((_b - _m : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
            var _i = (_a : stdgo.GoInt);
            var _j = (_m : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L414"
            while ((_i < _j : Bool)) {
                var _h = ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L416"
                if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_m : stdgo.GoInt)], _data[(_h : stdgo.GoInt)]) : Bool)) {
                    _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
                } else {
                    _j = _h;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L423"
            {
                var _k = (_m : stdgo.GoInt);
                while ((_k > _i : Bool)) {
                    {
                        final __tmp__0 = _data[(_k - (1 : stdgo.GoInt) : stdgo.GoInt)];
                        final __tmp__1 = _data[(_k : stdgo.GoInt)];
                        final __tmp__2 = _data;
                        final __tmp__3 = (_k : stdgo.GoInt);
                        final __tmp__4 = _data;
                        final __tmp__5 = (_k - (1 : stdgo.GoInt) : stdgo.GoInt);
                        __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                        __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                    };
                    _k--;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L426"
            return;
        };
        var _mid = ((((_a + _b : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
        var _n = (_mid + _m : stdgo.GoInt);
        var _start:stdgo.GoInt = (0 : stdgo.GoInt), _r:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L432"
        if ((_m > _mid : Bool)) {
            _start = (_n - _b : stdgo.GoInt);
            _r = _mid;
        } else {
            _start = _a;
            _r = _m;
        };
        var _p = (_n - (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L441"
        while ((_start < _r : Bool)) {
            var _c = ((((_start + _r : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L443"
            if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_p - _c : stdgo.GoInt)], _data[(_c : stdgo.GoInt)]) : Bool)) {
                _start = (_c + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _r = _c;
            };
        };
        var _end = (_n - _start : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L451"
        if (((_start < _m : Bool) && (_m < _end : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L452"
            stdgo._internal.slices.Slices__rotateordered._rotateOrdered(_data, _start, _m, _end);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L454"
        if (((_a < _start : Bool) && (_start < _mid : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L455"
            stdgo._internal.slices.Slices__symmergeordered._symMergeOrdered(_data, _a, _start, _mid);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L457"
        if (((_mid < _end : Bool) && (_end < _b : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L458"
            stdgo._internal.slices.Slices__symmergeordered._symMergeOrdered(_data, _mid, _end, _b);
        };
    }
overload inline extern function _symMergeOrdered(_data:stdgo.Slice<stdgo.GoInt16>, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void _symMergeOrdered__tp__1(_data, _a, _m, _b);
private function _symMergeOrdered__tp__2(_data:stdgo.Slice<stdgo.GoInt32>, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L384"
        if ((_m - _a : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
            var _i = (_m : stdgo.GoInt);
            var _j = (_b : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L390"
            while ((_i < _j : Bool)) {
                var _h = ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L392"
                if ((stdgo._internal.cmp.Cmp_less.less(_data[(_h : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool)) {
                    _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
                } else {
                    _j = _h;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L399"
            {
                var _k = (_a : stdgo.GoInt);
                while ((_k < (_i - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                    {
                        final __tmp__0 = _data[(_k + (1 : stdgo.GoInt) : stdgo.GoInt)];
                        final __tmp__1 = _data[(_k : stdgo.GoInt)];
                        final __tmp__2 = _data;
                        final __tmp__3 = (_k : stdgo.GoInt);
                        final __tmp__4 = _data;
                        final __tmp__5 = (_k + (1 : stdgo.GoInt) : stdgo.GoInt);
                        __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                        __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                    };
                    _k++;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L402"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L408"
        if ((_b - _m : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
            var _i = (_a : stdgo.GoInt);
            var _j = (_m : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L414"
            while ((_i < _j : Bool)) {
                var _h = ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L416"
                if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_m : stdgo.GoInt)], _data[(_h : stdgo.GoInt)]) : Bool)) {
                    _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
                } else {
                    _j = _h;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L423"
            {
                var _k = (_m : stdgo.GoInt);
                while ((_k > _i : Bool)) {
                    {
                        final __tmp__0 = _data[(_k - (1 : stdgo.GoInt) : stdgo.GoInt)];
                        final __tmp__1 = _data[(_k : stdgo.GoInt)];
                        final __tmp__2 = _data;
                        final __tmp__3 = (_k : stdgo.GoInt);
                        final __tmp__4 = _data;
                        final __tmp__5 = (_k - (1 : stdgo.GoInt) : stdgo.GoInt);
                        __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                        __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                    };
                    _k--;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L426"
            return;
        };
        var _mid = ((((_a + _b : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
        var _n = (_mid + _m : stdgo.GoInt);
        var _start:stdgo.GoInt = (0 : stdgo.GoInt), _r:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L432"
        if ((_m > _mid : Bool)) {
            _start = (_n - _b : stdgo.GoInt);
            _r = _mid;
        } else {
            _start = _a;
            _r = _m;
        };
        var _p = (_n - (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L441"
        while ((_start < _r : Bool)) {
            var _c = ((((_start + _r : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L443"
            if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_p - _c : stdgo.GoInt)], _data[(_c : stdgo.GoInt)]) : Bool)) {
                _start = (_c + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _r = _c;
            };
        };
        var _end = (_n - _start : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L451"
        if (((_start < _m : Bool) && (_m < _end : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L452"
            stdgo._internal.slices.Slices__rotateordered._rotateOrdered(_data, _start, _m, _end);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L454"
        if (((_a < _start : Bool) && (_start < _mid : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L455"
            stdgo._internal.slices.Slices__symmergeordered._symMergeOrdered(_data, _a, _start, _mid);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L457"
        if (((_mid < _end : Bool) && (_end < _b : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L458"
            stdgo._internal.slices.Slices__symmergeordered._symMergeOrdered(_data, _mid, _end, _b);
        };
    }
overload inline extern function _symMergeOrdered(_data:stdgo.Slice<stdgo.GoInt32>, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void _symMergeOrdered__tp__2(_data, _a, _m, _b);
private function _symMergeOrdered__tp__3(_data:stdgo.Slice<stdgo.GoInt64>, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L384"
        if ((_m - _a : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
            var _i = (_m : stdgo.GoInt);
            var _j = (_b : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L390"
            while ((_i < _j : Bool)) {
                var _h = ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L392"
                if ((stdgo._internal.cmp.Cmp_less.less(_data[(_h : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool)) {
                    _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
                } else {
                    _j = _h;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L399"
            {
                var _k = (_a : stdgo.GoInt);
                while ((_k < (_i - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                    {
                        final __tmp__0 = _data[(_k + (1 : stdgo.GoInt) : stdgo.GoInt)];
                        final __tmp__1 = _data[(_k : stdgo.GoInt)];
                        final __tmp__2 = _data;
                        final __tmp__3 = (_k : stdgo.GoInt);
                        final __tmp__4 = _data;
                        final __tmp__5 = (_k + (1 : stdgo.GoInt) : stdgo.GoInt);
                        __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                        __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                    };
                    _k++;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L402"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L408"
        if ((_b - _m : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
            var _i = (_a : stdgo.GoInt);
            var _j = (_m : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L414"
            while ((_i < _j : Bool)) {
                var _h = ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L416"
                if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_m : stdgo.GoInt)], _data[(_h : stdgo.GoInt)]) : Bool)) {
                    _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
                } else {
                    _j = _h;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L423"
            {
                var _k = (_m : stdgo.GoInt);
                while ((_k > _i : Bool)) {
                    {
                        final __tmp__0 = _data[(_k - (1 : stdgo.GoInt) : stdgo.GoInt)];
                        final __tmp__1 = _data[(_k : stdgo.GoInt)];
                        final __tmp__2 = _data;
                        final __tmp__3 = (_k : stdgo.GoInt);
                        final __tmp__4 = _data;
                        final __tmp__5 = (_k - (1 : stdgo.GoInt) : stdgo.GoInt);
                        __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                        __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                    };
                    _k--;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L426"
            return;
        };
        var _mid = ((((_a + _b : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
        var _n = (_mid + _m : stdgo.GoInt);
        var _start:stdgo.GoInt = (0 : stdgo.GoInt), _r:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L432"
        if ((_m > _mid : Bool)) {
            _start = (_n - _b : stdgo.GoInt);
            _r = _mid;
        } else {
            _start = _a;
            _r = _m;
        };
        var _p = (_n - (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L441"
        while ((_start < _r : Bool)) {
            var _c = ((((_start + _r : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L443"
            if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_p - _c : stdgo.GoInt)], _data[(_c : stdgo.GoInt)]) : Bool)) {
                _start = (_c + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _r = _c;
            };
        };
        var _end = (_n - _start : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L451"
        if (((_start < _m : Bool) && (_m < _end : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L452"
            stdgo._internal.slices.Slices__rotateordered._rotateOrdered(_data, _start, _m, _end);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L454"
        if (((_a < _start : Bool) && (_start < _mid : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L455"
            stdgo._internal.slices.Slices__symmergeordered._symMergeOrdered(_data, _a, _start, _mid);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L457"
        if (((_mid < _end : Bool) && (_end < _b : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L458"
            stdgo._internal.slices.Slices__symmergeordered._symMergeOrdered(_data, _mid, _end, _b);
        };
    }
overload inline extern function _symMergeOrdered(_data:stdgo.Slice<stdgo.GoInt64>, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void _symMergeOrdered__tp__3(_data, _a, _m, _b);
private function _symMergeOrdered__tp__4(_data:stdgo.Slice<stdgo.GoUInt8>, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L384"
        if ((_m - _a : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
            var _i = (_m : stdgo.GoInt);
            var _j = (_b : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L390"
            while ((_i < _j : Bool)) {
                var _h = ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L392"
                if ((stdgo._internal.cmp.Cmp_less.less(_data[(_h : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool)) {
                    _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
                } else {
                    _j = _h;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L399"
            {
                var _k = (_a : stdgo.GoInt);
                while ((_k < (_i - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                    {
                        final __tmp__0 = _data[(_k + (1 : stdgo.GoInt) : stdgo.GoInt)];
                        final __tmp__1 = _data[(_k : stdgo.GoInt)];
                        final __tmp__2 = _data;
                        final __tmp__3 = (_k : stdgo.GoInt);
                        final __tmp__4 = _data;
                        final __tmp__5 = (_k + (1 : stdgo.GoInt) : stdgo.GoInt);
                        __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                        __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                    };
                    _k++;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L402"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L408"
        if ((_b - _m : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
            var _i = (_a : stdgo.GoInt);
            var _j = (_m : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L414"
            while ((_i < _j : Bool)) {
                var _h = ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L416"
                if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_m : stdgo.GoInt)], _data[(_h : stdgo.GoInt)]) : Bool)) {
                    _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
                } else {
                    _j = _h;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L423"
            {
                var _k = (_m : stdgo.GoInt);
                while ((_k > _i : Bool)) {
                    {
                        final __tmp__0 = _data[(_k - (1 : stdgo.GoInt) : stdgo.GoInt)];
                        final __tmp__1 = _data[(_k : stdgo.GoInt)];
                        final __tmp__2 = _data;
                        final __tmp__3 = (_k : stdgo.GoInt);
                        final __tmp__4 = _data;
                        final __tmp__5 = (_k - (1 : stdgo.GoInt) : stdgo.GoInt);
                        __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                        __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                    };
                    _k--;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L426"
            return;
        };
        var _mid = ((((_a + _b : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
        var _n = (_mid + _m : stdgo.GoInt);
        var _start:stdgo.GoInt = (0 : stdgo.GoInt), _r:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L432"
        if ((_m > _mid : Bool)) {
            _start = (_n - _b : stdgo.GoInt);
            _r = _mid;
        } else {
            _start = _a;
            _r = _m;
        };
        var _p = (_n - (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L441"
        while ((_start < _r : Bool)) {
            var _c = ((((_start + _r : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L443"
            if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_p - _c : stdgo.GoInt)], _data[(_c : stdgo.GoInt)]) : Bool)) {
                _start = (_c + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _r = _c;
            };
        };
        var _end = (_n - _start : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L451"
        if (((_start < _m : Bool) && (_m < _end : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L452"
            stdgo._internal.slices.Slices__rotateordered._rotateOrdered(_data, _start, _m, _end);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L454"
        if (((_a < _start : Bool) && (_start < _mid : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L455"
            stdgo._internal.slices.Slices__symmergeordered._symMergeOrdered(_data, _a, _start, _mid);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L457"
        if (((_mid < _end : Bool) && (_end < _b : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L458"
            stdgo._internal.slices.Slices__symmergeordered._symMergeOrdered(_data, _mid, _end, _b);
        };
    }
overload inline extern function _symMergeOrdered(_data:stdgo.Slice<stdgo.GoUInt8>, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void _symMergeOrdered__tp__4(_data, _a, _m, _b);
private function _symMergeOrdered__tp__5(_data:stdgo.Slice<stdgo.GoUInt16>, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L384"
        if ((_m - _a : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
            var _i = (_m : stdgo.GoInt);
            var _j = (_b : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L390"
            while ((_i < _j : Bool)) {
                var _h = ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L392"
                if ((stdgo._internal.cmp.Cmp_less.less(_data[(_h : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool)) {
                    _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
                } else {
                    _j = _h;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L399"
            {
                var _k = (_a : stdgo.GoInt);
                while ((_k < (_i - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                    {
                        final __tmp__0 = _data[(_k + (1 : stdgo.GoInt) : stdgo.GoInt)];
                        final __tmp__1 = _data[(_k : stdgo.GoInt)];
                        final __tmp__2 = _data;
                        final __tmp__3 = (_k : stdgo.GoInt);
                        final __tmp__4 = _data;
                        final __tmp__5 = (_k + (1 : stdgo.GoInt) : stdgo.GoInt);
                        __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                        __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                    };
                    _k++;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L402"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L408"
        if ((_b - _m : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
            var _i = (_a : stdgo.GoInt);
            var _j = (_m : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L414"
            while ((_i < _j : Bool)) {
                var _h = ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L416"
                if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_m : stdgo.GoInt)], _data[(_h : stdgo.GoInt)]) : Bool)) {
                    _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
                } else {
                    _j = _h;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L423"
            {
                var _k = (_m : stdgo.GoInt);
                while ((_k > _i : Bool)) {
                    {
                        final __tmp__0 = _data[(_k - (1 : stdgo.GoInt) : stdgo.GoInt)];
                        final __tmp__1 = _data[(_k : stdgo.GoInt)];
                        final __tmp__2 = _data;
                        final __tmp__3 = (_k : stdgo.GoInt);
                        final __tmp__4 = _data;
                        final __tmp__5 = (_k - (1 : stdgo.GoInt) : stdgo.GoInt);
                        __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                        __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                    };
                    _k--;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L426"
            return;
        };
        var _mid = ((((_a + _b : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
        var _n = (_mid + _m : stdgo.GoInt);
        var _start:stdgo.GoInt = (0 : stdgo.GoInt), _r:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L432"
        if ((_m > _mid : Bool)) {
            _start = (_n - _b : stdgo.GoInt);
            _r = _mid;
        } else {
            _start = _a;
            _r = _m;
        };
        var _p = (_n - (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L441"
        while ((_start < _r : Bool)) {
            var _c = ((((_start + _r : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L443"
            if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_p - _c : stdgo.GoInt)], _data[(_c : stdgo.GoInt)]) : Bool)) {
                _start = (_c + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _r = _c;
            };
        };
        var _end = (_n - _start : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L451"
        if (((_start < _m : Bool) && (_m < _end : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L452"
            stdgo._internal.slices.Slices__rotateordered._rotateOrdered(_data, _start, _m, _end);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L454"
        if (((_a < _start : Bool) && (_start < _mid : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L455"
            stdgo._internal.slices.Slices__symmergeordered._symMergeOrdered(_data, _a, _start, _mid);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L457"
        if (((_mid < _end : Bool) && (_end < _b : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L458"
            stdgo._internal.slices.Slices__symmergeordered._symMergeOrdered(_data, _mid, _end, _b);
        };
    }
overload inline extern function _symMergeOrdered(_data:stdgo.Slice<stdgo.GoUInt16>, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void _symMergeOrdered__tp__5(_data, _a, _m, _b);
private function _symMergeOrdered__tp__6(_data:stdgo.Slice<stdgo.GoUInt32>, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L384"
        if ((_m - _a : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
            var _i = (_m : stdgo.GoInt);
            var _j = (_b : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L390"
            while ((_i < _j : Bool)) {
                var _h = ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L392"
                if ((stdgo._internal.cmp.Cmp_less.less(_data[(_h : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool)) {
                    _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
                } else {
                    _j = _h;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L399"
            {
                var _k = (_a : stdgo.GoInt);
                while ((_k < (_i - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                    {
                        final __tmp__0 = _data[(_k + (1 : stdgo.GoInt) : stdgo.GoInt)];
                        final __tmp__1 = _data[(_k : stdgo.GoInt)];
                        final __tmp__2 = _data;
                        final __tmp__3 = (_k : stdgo.GoInt);
                        final __tmp__4 = _data;
                        final __tmp__5 = (_k + (1 : stdgo.GoInt) : stdgo.GoInt);
                        __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                        __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                    };
                    _k++;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L402"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L408"
        if ((_b - _m : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
            var _i = (_a : stdgo.GoInt);
            var _j = (_m : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L414"
            while ((_i < _j : Bool)) {
                var _h = ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L416"
                if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_m : stdgo.GoInt)], _data[(_h : stdgo.GoInt)]) : Bool)) {
                    _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
                } else {
                    _j = _h;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L423"
            {
                var _k = (_m : stdgo.GoInt);
                while ((_k > _i : Bool)) {
                    {
                        final __tmp__0 = _data[(_k - (1 : stdgo.GoInt) : stdgo.GoInt)];
                        final __tmp__1 = _data[(_k : stdgo.GoInt)];
                        final __tmp__2 = _data;
                        final __tmp__3 = (_k : stdgo.GoInt);
                        final __tmp__4 = _data;
                        final __tmp__5 = (_k - (1 : stdgo.GoInt) : stdgo.GoInt);
                        __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                        __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                    };
                    _k--;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L426"
            return;
        };
        var _mid = ((((_a + _b : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
        var _n = (_mid + _m : stdgo.GoInt);
        var _start:stdgo.GoInt = (0 : stdgo.GoInt), _r:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L432"
        if ((_m > _mid : Bool)) {
            _start = (_n - _b : stdgo.GoInt);
            _r = _mid;
        } else {
            _start = _a;
            _r = _m;
        };
        var _p = (_n - (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L441"
        while ((_start < _r : Bool)) {
            var _c = ((((_start + _r : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L443"
            if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_p - _c : stdgo.GoInt)], _data[(_c : stdgo.GoInt)]) : Bool)) {
                _start = (_c + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _r = _c;
            };
        };
        var _end = (_n - _start : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L451"
        if (((_start < _m : Bool) && (_m < _end : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L452"
            stdgo._internal.slices.Slices__rotateordered._rotateOrdered(_data, _start, _m, _end);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L454"
        if (((_a < _start : Bool) && (_start < _mid : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L455"
            stdgo._internal.slices.Slices__symmergeordered._symMergeOrdered(_data, _a, _start, _mid);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L457"
        if (((_mid < _end : Bool) && (_end < _b : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L458"
            stdgo._internal.slices.Slices__symmergeordered._symMergeOrdered(_data, _mid, _end, _b);
        };
    }
overload inline extern function _symMergeOrdered(_data:stdgo.Slice<stdgo.GoUInt32>, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void _symMergeOrdered__tp__6(_data, _a, _m, _b);
private function _symMergeOrdered__tp__7(_data:stdgo.Slice<stdgo.GoUInt64>, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L384"
        if ((_m - _a : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
            var _i = (_m : stdgo.GoInt);
            var _j = (_b : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L390"
            while ((_i < _j : Bool)) {
                var _h = ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L392"
                if ((stdgo._internal.cmp.Cmp_less.less(_data[(_h : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool)) {
                    _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
                } else {
                    _j = _h;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L399"
            {
                var _k = (_a : stdgo.GoInt);
                while ((_k < (_i - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                    {
                        final __tmp__0 = _data[(_k + (1 : stdgo.GoInt) : stdgo.GoInt)];
                        final __tmp__1 = _data[(_k : stdgo.GoInt)];
                        final __tmp__2 = _data;
                        final __tmp__3 = (_k : stdgo.GoInt);
                        final __tmp__4 = _data;
                        final __tmp__5 = (_k + (1 : stdgo.GoInt) : stdgo.GoInt);
                        __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                        __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                    };
                    _k++;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L402"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L408"
        if ((_b - _m : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
            var _i = (_a : stdgo.GoInt);
            var _j = (_m : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L414"
            while ((_i < _j : Bool)) {
                var _h = ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L416"
                if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_m : stdgo.GoInt)], _data[(_h : stdgo.GoInt)]) : Bool)) {
                    _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
                } else {
                    _j = _h;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L423"
            {
                var _k = (_m : stdgo.GoInt);
                while ((_k > _i : Bool)) {
                    {
                        final __tmp__0 = _data[(_k - (1 : stdgo.GoInt) : stdgo.GoInt)];
                        final __tmp__1 = _data[(_k : stdgo.GoInt)];
                        final __tmp__2 = _data;
                        final __tmp__3 = (_k : stdgo.GoInt);
                        final __tmp__4 = _data;
                        final __tmp__5 = (_k - (1 : stdgo.GoInt) : stdgo.GoInt);
                        __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                        __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                    };
                    _k--;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L426"
            return;
        };
        var _mid = ((((_a + _b : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
        var _n = (_mid + _m : stdgo.GoInt);
        var _start:stdgo.GoInt = (0 : stdgo.GoInt), _r:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L432"
        if ((_m > _mid : Bool)) {
            _start = (_n - _b : stdgo.GoInt);
            _r = _mid;
        } else {
            _start = _a;
            _r = _m;
        };
        var _p = (_n - (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L441"
        while ((_start < _r : Bool)) {
            var _c = ((((_start + _r : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L443"
            if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_p - _c : stdgo.GoInt)], _data[(_c : stdgo.GoInt)]) : Bool)) {
                _start = (_c + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _r = _c;
            };
        };
        var _end = (_n - _start : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L451"
        if (((_start < _m : Bool) && (_m < _end : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L452"
            stdgo._internal.slices.Slices__rotateordered._rotateOrdered(_data, _start, _m, _end);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L454"
        if (((_a < _start : Bool) && (_start < _mid : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L455"
            stdgo._internal.slices.Slices__symmergeordered._symMergeOrdered(_data, _a, _start, _mid);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L457"
        if (((_mid < _end : Bool) && (_end < _b : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L458"
            stdgo._internal.slices.Slices__symmergeordered._symMergeOrdered(_data, _mid, _end, _b);
        };
    }
overload inline extern function _symMergeOrdered(_data:stdgo.Slice<stdgo.GoUInt64>, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void _symMergeOrdered__tp__7(_data, _a, _m, _b);
private function _symMergeOrdered__tp__8(_data:stdgo.Slice<stdgo.GoUIntptr>, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L384"
        if ((_m - _a : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
            var _i = (_m : stdgo.GoInt);
            var _j = (_b : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L390"
            while ((_i < _j : Bool)) {
                var _h = ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L392"
                if ((stdgo._internal.cmp.Cmp_less.less(_data[(_h : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool)) {
                    _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
                } else {
                    _j = _h;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L399"
            {
                var _k = (_a : stdgo.GoInt);
                while ((_k < (_i - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                    {
                        final __tmp__0 = _data[(_k + (1 : stdgo.GoInt) : stdgo.GoInt)];
                        final __tmp__1 = _data[(_k : stdgo.GoInt)];
                        final __tmp__2 = _data;
                        final __tmp__3 = (_k : stdgo.GoInt);
                        final __tmp__4 = _data;
                        final __tmp__5 = (_k + (1 : stdgo.GoInt) : stdgo.GoInt);
                        __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                        __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                    };
                    _k++;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L402"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L408"
        if ((_b - _m : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
            var _i = (_a : stdgo.GoInt);
            var _j = (_m : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L414"
            while ((_i < _j : Bool)) {
                var _h = ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L416"
                if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_m : stdgo.GoInt)], _data[(_h : stdgo.GoInt)]) : Bool)) {
                    _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
                } else {
                    _j = _h;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L423"
            {
                var _k = (_m : stdgo.GoInt);
                while ((_k > _i : Bool)) {
                    {
                        final __tmp__0 = _data[(_k - (1 : stdgo.GoInt) : stdgo.GoInt)];
                        final __tmp__1 = _data[(_k : stdgo.GoInt)];
                        final __tmp__2 = _data;
                        final __tmp__3 = (_k : stdgo.GoInt);
                        final __tmp__4 = _data;
                        final __tmp__5 = (_k - (1 : stdgo.GoInt) : stdgo.GoInt);
                        __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                        __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                    };
                    _k--;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L426"
            return;
        };
        var _mid = ((((_a + _b : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
        var _n = (_mid + _m : stdgo.GoInt);
        var _start:stdgo.GoInt = (0 : stdgo.GoInt), _r:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L432"
        if ((_m > _mid : Bool)) {
            _start = (_n - _b : stdgo.GoInt);
            _r = _mid;
        } else {
            _start = _a;
            _r = _m;
        };
        var _p = (_n - (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L441"
        while ((_start < _r : Bool)) {
            var _c = ((((_start + _r : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L443"
            if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_p - _c : stdgo.GoInt)], _data[(_c : stdgo.GoInt)]) : Bool)) {
                _start = (_c + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _r = _c;
            };
        };
        var _end = (_n - _start : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L451"
        if (((_start < _m : Bool) && (_m < _end : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L452"
            stdgo._internal.slices.Slices__rotateordered._rotateOrdered(_data, _start, _m, _end);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L454"
        if (((_a < _start : Bool) && (_start < _mid : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L455"
            stdgo._internal.slices.Slices__symmergeordered._symMergeOrdered(_data, _a, _start, _mid);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L457"
        if (((_mid < _end : Bool) && (_end < _b : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L458"
            stdgo._internal.slices.Slices__symmergeordered._symMergeOrdered(_data, _mid, _end, _b);
        };
    }
overload inline extern function _symMergeOrdered(_data:stdgo.Slice<stdgo.GoUIntptr>, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void _symMergeOrdered__tp__8(_data, _a, _m, _b);
private function _symMergeOrdered__tp__9(_data:stdgo.Slice<stdgo.GoFloat32>, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L384"
        if ((_m - _a : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
            var _i = (_m : stdgo.GoInt);
            var _j = (_b : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L390"
            while ((_i < _j : Bool)) {
                var _h = ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L392"
                if ((stdgo._internal.cmp.Cmp_less.less(_data[(_h : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool)) {
                    _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
                } else {
                    _j = _h;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L399"
            {
                var _k = (_a : stdgo.GoInt);
                while ((_k < (_i - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                    {
                        final __tmp__0 = _data[(_k + (1 : stdgo.GoInt) : stdgo.GoInt)];
                        final __tmp__1 = _data[(_k : stdgo.GoInt)];
                        final __tmp__2 = _data;
                        final __tmp__3 = (_k : stdgo.GoInt);
                        final __tmp__4 = _data;
                        final __tmp__5 = (_k + (1 : stdgo.GoInt) : stdgo.GoInt);
                        __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                        __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                    };
                    _k++;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L402"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L408"
        if ((_b - _m : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
            var _i = (_a : stdgo.GoInt);
            var _j = (_m : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L414"
            while ((_i < _j : Bool)) {
                var _h = ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L416"
                if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_m : stdgo.GoInt)], _data[(_h : stdgo.GoInt)]) : Bool)) {
                    _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
                } else {
                    _j = _h;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L423"
            {
                var _k = (_m : stdgo.GoInt);
                while ((_k > _i : Bool)) {
                    {
                        final __tmp__0 = _data[(_k - (1 : stdgo.GoInt) : stdgo.GoInt)];
                        final __tmp__1 = _data[(_k : stdgo.GoInt)];
                        final __tmp__2 = _data;
                        final __tmp__3 = (_k : stdgo.GoInt);
                        final __tmp__4 = _data;
                        final __tmp__5 = (_k - (1 : stdgo.GoInt) : stdgo.GoInt);
                        __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                        __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                    };
                    _k--;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L426"
            return;
        };
        var _mid = ((((_a + _b : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
        var _n = (_mid + _m : stdgo.GoInt);
        var _start:stdgo.GoInt = (0 : stdgo.GoInt), _r:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L432"
        if ((_m > _mid : Bool)) {
            _start = (_n - _b : stdgo.GoInt);
            _r = _mid;
        } else {
            _start = _a;
            _r = _m;
        };
        var _p = (_n - (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L441"
        while ((_start < _r : Bool)) {
            var _c = ((((_start + _r : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L443"
            if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_p - _c : stdgo.GoInt)], _data[(_c : stdgo.GoInt)]) : Bool)) {
                _start = (_c + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _r = _c;
            };
        };
        var _end = (_n - _start : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L451"
        if (((_start < _m : Bool) && (_m < _end : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L452"
            stdgo._internal.slices.Slices__rotateordered._rotateOrdered(_data, _start, _m, _end);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L454"
        if (((_a < _start : Bool) && (_start < _mid : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L455"
            stdgo._internal.slices.Slices__symmergeordered._symMergeOrdered(_data, _a, _start, _mid);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L457"
        if (((_mid < _end : Bool) && (_end < _b : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L458"
            stdgo._internal.slices.Slices__symmergeordered._symMergeOrdered(_data, _mid, _end, _b);
        };
    }
overload inline extern function _symMergeOrdered(_data:stdgo.Slice<stdgo.GoFloat32>, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void _symMergeOrdered__tp__9(_data, _a, _m, _b);
private function _symMergeOrdered__tp__10(_data:stdgo.Slice<stdgo.GoFloat64>, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L384"
        if ((_m - _a : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
            var _i = (_m : stdgo.GoInt);
            var _j = (_b : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L390"
            while ((_i < _j : Bool)) {
                var _h = ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L392"
                if ((stdgo._internal.cmp.Cmp_less.less(_data[(_h : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool)) {
                    _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
                } else {
                    _j = _h;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L399"
            {
                var _k = (_a : stdgo.GoInt);
                while ((_k < (_i - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                    {
                        final __tmp__0 = _data[(_k + (1 : stdgo.GoInt) : stdgo.GoInt)];
                        final __tmp__1 = _data[(_k : stdgo.GoInt)];
                        final __tmp__2 = _data;
                        final __tmp__3 = (_k : stdgo.GoInt);
                        final __tmp__4 = _data;
                        final __tmp__5 = (_k + (1 : stdgo.GoInt) : stdgo.GoInt);
                        __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                        __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                    };
                    _k++;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L402"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L408"
        if ((_b - _m : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
            var _i = (_a : stdgo.GoInt);
            var _j = (_m : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L414"
            while ((_i < _j : Bool)) {
                var _h = ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L416"
                if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_m : stdgo.GoInt)], _data[(_h : stdgo.GoInt)]) : Bool)) {
                    _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
                } else {
                    _j = _h;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L423"
            {
                var _k = (_m : stdgo.GoInt);
                while ((_k > _i : Bool)) {
                    {
                        final __tmp__0 = _data[(_k - (1 : stdgo.GoInt) : stdgo.GoInt)];
                        final __tmp__1 = _data[(_k : stdgo.GoInt)];
                        final __tmp__2 = _data;
                        final __tmp__3 = (_k : stdgo.GoInt);
                        final __tmp__4 = _data;
                        final __tmp__5 = (_k - (1 : stdgo.GoInt) : stdgo.GoInt);
                        __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                        __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                    };
                    _k--;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L426"
            return;
        };
        var _mid = ((((_a + _b : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
        var _n = (_mid + _m : stdgo.GoInt);
        var _start:stdgo.GoInt = (0 : stdgo.GoInt), _r:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L432"
        if ((_m > _mid : Bool)) {
            _start = (_n - _b : stdgo.GoInt);
            _r = _mid;
        } else {
            _start = _a;
            _r = _m;
        };
        var _p = (_n - (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L441"
        while ((_start < _r : Bool)) {
            var _c = ((((_start + _r : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L443"
            if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_p - _c : stdgo.GoInt)], _data[(_c : stdgo.GoInt)]) : Bool)) {
                _start = (_c + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _r = _c;
            };
        };
        var _end = (_n - _start : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L451"
        if (((_start < _m : Bool) && (_m < _end : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L452"
            stdgo._internal.slices.Slices__rotateordered._rotateOrdered(_data, _start, _m, _end);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L454"
        if (((_a < _start : Bool) && (_start < _mid : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L455"
            stdgo._internal.slices.Slices__symmergeordered._symMergeOrdered(_data, _a, _start, _mid);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L457"
        if (((_mid < _end : Bool) && (_end < _b : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L458"
            stdgo._internal.slices.Slices__symmergeordered._symMergeOrdered(_data, _mid, _end, _b);
        };
    }
overload inline extern function _symMergeOrdered(_data:stdgo.Slice<stdgo.GoFloat64>, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void _symMergeOrdered__tp__10(_data, _a, _m, _b);
private function _symMergeOrdered__tp__11(_data:stdgo.Slice<stdgo.GoString>, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L384"
        if ((_m - _a : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
            var _i = (_m : stdgo.GoInt);
            var _j = (_b : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L390"
            while ((_i < _j : Bool)) {
                var _h = ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L392"
                if ((stdgo._internal.cmp.Cmp_less.less(_data[(_h : stdgo.GoInt)]?.__copy__(), _data[(_a : stdgo.GoInt)]?.__copy__()) : Bool)) {
                    _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
                } else {
                    _j = _h;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L399"
            {
                var _k = (_a : stdgo.GoInt);
                while ((_k < (_i - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                    {
                        final __tmp__0 = _data[(_k + (1 : stdgo.GoInt) : stdgo.GoInt)].__copy__();
                        final __tmp__1 = _data[(_k : stdgo.GoInt)].__copy__();
                        final __tmp__2 = _data;
                        final __tmp__3 = (_k : stdgo.GoInt);
                        final __tmp__4 = _data;
                        final __tmp__5 = (_k + (1 : stdgo.GoInt) : stdgo.GoInt);
                        __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                        __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                    };
                    _k++;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L402"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L408"
        if ((_b - _m : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
            var _i = (_a : stdgo.GoInt);
            var _j = (_m : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L414"
            while ((_i < _j : Bool)) {
                var _h = ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L416"
                if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_m : stdgo.GoInt)]?.__copy__(), _data[(_h : stdgo.GoInt)]?.__copy__()) : Bool)) {
                    _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
                } else {
                    _j = _h;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L423"
            {
                var _k = (_m : stdgo.GoInt);
                while ((_k > _i : Bool)) {
                    {
                        final __tmp__0 = _data[(_k - (1 : stdgo.GoInt) : stdgo.GoInt)].__copy__();
                        final __tmp__1 = _data[(_k : stdgo.GoInt)].__copy__();
                        final __tmp__2 = _data;
                        final __tmp__3 = (_k : stdgo.GoInt);
                        final __tmp__4 = _data;
                        final __tmp__5 = (_k - (1 : stdgo.GoInt) : stdgo.GoInt);
                        __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                        __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                    };
                    _k--;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L426"
            return;
        };
        var _mid = ((((_a + _b : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
        var _n = (_mid + _m : stdgo.GoInt);
        var _start:stdgo.GoInt = (0 : stdgo.GoInt), _r:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L432"
        if ((_m > _mid : Bool)) {
            _start = (_n - _b : stdgo.GoInt);
            _r = _mid;
        } else {
            _start = _a;
            _r = _m;
        };
        var _p = (_n - (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L441"
        while ((_start < _r : Bool)) {
            var _c = ((((_start + _r : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L443"
            if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_p - _c : stdgo.GoInt)]?.__copy__(), _data[(_c : stdgo.GoInt)]?.__copy__()) : Bool)) {
                _start = (_c + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _r = _c;
            };
        };
        var _end = (_n - _start : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L451"
        if (((_start < _m : Bool) && (_m < _end : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L452"
            stdgo._internal.slices.Slices__rotateordered._rotateOrdered(_data, _start, _m, _end);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L454"
        if (((_a < _start : Bool) && (_start < _mid : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L455"
            stdgo._internal.slices.Slices__symmergeordered._symMergeOrdered(_data, _a, _start, _mid);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L457"
        if (((_mid < _end : Bool) && (_end < _b : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L458"
            stdgo._internal.slices.Slices__symmergeordered._symMergeOrdered(_data, _mid, _end, _b);
        };
    }
overload inline extern function _symMergeOrdered(_data:stdgo.Slice<stdgo.GoString>, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void _symMergeOrdered__tp__11(_data, _a, _m, _b);

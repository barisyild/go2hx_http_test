package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function _partitionEqualOrdered__tp__0(_data:stdgo.Slice<stdgo.GoInt8>, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):stdgo.GoInt {
        var _newpivot = (0 : stdgo.GoInt);
        {
            final __tmp__0 = _data[(_pivot : stdgo.GoInt)];
            final __tmp__1 = _data[(_a : stdgo.GoInt)];
            final __tmp__2 = _data;
            final __tmp__3 = (_a : stdgo.GoInt);
            final __tmp__4 = _data;
            final __tmp__5 = (_pivot : stdgo.GoInt);
            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
        };
        var __0 = (_a + (1 : stdgo.GoInt) : stdgo.GoInt), __1 = (_b - (1 : stdgo.GoInt) : stdgo.GoInt);
var _j = __1, _i = __0;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L179"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L180"
            while (((_i <= _j : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_a : stdgo.GoInt)], _data[(_i : stdgo.GoInt)]) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L181"
                _i++;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L183"
            while (((_i <= _j : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_a : stdgo.GoInt)], _data[(_j : stdgo.GoInt)]) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L184"
                _j--;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L186"
            if ((_i > _j : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L187"
                break;
            };
            {
                final __tmp__0 = _data[(_j : stdgo.GoInt)];
                final __tmp__1 = _data[(_i : stdgo.GoInt)];
                final __tmp__2 = _data;
                final __tmp__3 = (_i : stdgo.GoInt);
                final __tmp__4 = _data;
                final __tmp__5 = (_j : stdgo.GoInt);
                __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L190"
            _i++;
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L191"
            _j--;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L193"
        return _newpivot = _i;
    }
overload inline extern function _partitionEqualOrdered(_data:stdgo.Slice<stdgo.GoInt8>, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):stdgo.GoInt return _partitionEqualOrdered__tp__0(_data, _a, _b, _pivot);
private function _partitionEqualOrdered__tp__1(_data:stdgo.Slice<stdgo.GoInt16>, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):stdgo.GoInt {
        var _newpivot = (0 : stdgo.GoInt);
        {
            final __tmp__0 = _data[(_pivot : stdgo.GoInt)];
            final __tmp__1 = _data[(_a : stdgo.GoInt)];
            final __tmp__2 = _data;
            final __tmp__3 = (_a : stdgo.GoInt);
            final __tmp__4 = _data;
            final __tmp__5 = (_pivot : stdgo.GoInt);
            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
        };
        var __0 = (_a + (1 : stdgo.GoInt) : stdgo.GoInt), __1 = (_b - (1 : stdgo.GoInt) : stdgo.GoInt);
var _j = __1, _i = __0;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L179"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L180"
            while (((_i <= _j : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_a : stdgo.GoInt)], _data[(_i : stdgo.GoInt)]) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L181"
                _i++;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L183"
            while (((_i <= _j : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_a : stdgo.GoInt)], _data[(_j : stdgo.GoInt)]) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L184"
                _j--;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L186"
            if ((_i > _j : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L187"
                break;
            };
            {
                final __tmp__0 = _data[(_j : stdgo.GoInt)];
                final __tmp__1 = _data[(_i : stdgo.GoInt)];
                final __tmp__2 = _data;
                final __tmp__3 = (_i : stdgo.GoInt);
                final __tmp__4 = _data;
                final __tmp__5 = (_j : stdgo.GoInt);
                __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L190"
            _i++;
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L191"
            _j--;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L193"
        return _newpivot = _i;
    }
overload inline extern function _partitionEqualOrdered(_data:stdgo.Slice<stdgo.GoInt16>, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):stdgo.GoInt return _partitionEqualOrdered__tp__1(_data, _a, _b, _pivot);
private function _partitionEqualOrdered__tp__2(_data:stdgo.Slice<stdgo.GoInt32>, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):stdgo.GoInt {
        var _newpivot = (0 : stdgo.GoInt);
        {
            final __tmp__0 = _data[(_pivot : stdgo.GoInt)];
            final __tmp__1 = _data[(_a : stdgo.GoInt)];
            final __tmp__2 = _data;
            final __tmp__3 = (_a : stdgo.GoInt);
            final __tmp__4 = _data;
            final __tmp__5 = (_pivot : stdgo.GoInt);
            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
        };
        var __0 = (_a + (1 : stdgo.GoInt) : stdgo.GoInt), __1 = (_b - (1 : stdgo.GoInt) : stdgo.GoInt);
var _j = __1, _i = __0;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L179"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L180"
            while (((_i <= _j : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_a : stdgo.GoInt)], _data[(_i : stdgo.GoInt)]) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L181"
                _i++;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L183"
            while (((_i <= _j : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_a : stdgo.GoInt)], _data[(_j : stdgo.GoInt)]) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L184"
                _j--;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L186"
            if ((_i > _j : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L187"
                break;
            };
            {
                final __tmp__0 = _data[(_j : stdgo.GoInt)];
                final __tmp__1 = _data[(_i : stdgo.GoInt)];
                final __tmp__2 = _data;
                final __tmp__3 = (_i : stdgo.GoInt);
                final __tmp__4 = _data;
                final __tmp__5 = (_j : stdgo.GoInt);
                __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L190"
            _i++;
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L191"
            _j--;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L193"
        return _newpivot = _i;
    }
overload inline extern function _partitionEqualOrdered(_data:stdgo.Slice<stdgo.GoInt32>, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):stdgo.GoInt return _partitionEqualOrdered__tp__2(_data, _a, _b, _pivot);
private function _partitionEqualOrdered__tp__3(_data:stdgo.Slice<stdgo.GoInt64>, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):stdgo.GoInt {
        var _newpivot = (0 : stdgo.GoInt);
        {
            final __tmp__0 = _data[(_pivot : stdgo.GoInt)];
            final __tmp__1 = _data[(_a : stdgo.GoInt)];
            final __tmp__2 = _data;
            final __tmp__3 = (_a : stdgo.GoInt);
            final __tmp__4 = _data;
            final __tmp__5 = (_pivot : stdgo.GoInt);
            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
        };
        var __0 = (_a + (1 : stdgo.GoInt) : stdgo.GoInt), __1 = (_b - (1 : stdgo.GoInt) : stdgo.GoInt);
var _j = __1, _i = __0;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L179"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L180"
            while (((_i <= _j : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_a : stdgo.GoInt)], _data[(_i : stdgo.GoInt)]) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L181"
                _i++;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L183"
            while (((_i <= _j : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_a : stdgo.GoInt)], _data[(_j : stdgo.GoInt)]) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L184"
                _j--;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L186"
            if ((_i > _j : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L187"
                break;
            };
            {
                final __tmp__0 = _data[(_j : stdgo.GoInt)];
                final __tmp__1 = _data[(_i : stdgo.GoInt)];
                final __tmp__2 = _data;
                final __tmp__3 = (_i : stdgo.GoInt);
                final __tmp__4 = _data;
                final __tmp__5 = (_j : stdgo.GoInt);
                __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L190"
            _i++;
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L191"
            _j--;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L193"
        return _newpivot = _i;
    }
overload inline extern function _partitionEqualOrdered(_data:stdgo.Slice<stdgo.GoInt64>, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):stdgo.GoInt return _partitionEqualOrdered__tp__3(_data, _a, _b, _pivot);
private function _partitionEqualOrdered__tp__4(_data:stdgo.Slice<stdgo.GoUInt8>, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):stdgo.GoInt {
        var _newpivot = (0 : stdgo.GoInt);
        {
            final __tmp__0 = _data[(_pivot : stdgo.GoInt)];
            final __tmp__1 = _data[(_a : stdgo.GoInt)];
            final __tmp__2 = _data;
            final __tmp__3 = (_a : stdgo.GoInt);
            final __tmp__4 = _data;
            final __tmp__5 = (_pivot : stdgo.GoInt);
            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
        };
        var __0 = (_a + (1 : stdgo.GoInt) : stdgo.GoInt), __1 = (_b - (1 : stdgo.GoInt) : stdgo.GoInt);
var _j = __1, _i = __0;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L179"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L180"
            while (((_i <= _j : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_a : stdgo.GoInt)], _data[(_i : stdgo.GoInt)]) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L181"
                _i++;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L183"
            while (((_i <= _j : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_a : stdgo.GoInt)], _data[(_j : stdgo.GoInt)]) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L184"
                _j--;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L186"
            if ((_i > _j : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L187"
                break;
            };
            {
                final __tmp__0 = _data[(_j : stdgo.GoInt)];
                final __tmp__1 = _data[(_i : stdgo.GoInt)];
                final __tmp__2 = _data;
                final __tmp__3 = (_i : stdgo.GoInt);
                final __tmp__4 = _data;
                final __tmp__5 = (_j : stdgo.GoInt);
                __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L190"
            _i++;
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L191"
            _j--;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L193"
        return _newpivot = _i;
    }
overload inline extern function _partitionEqualOrdered(_data:stdgo.Slice<stdgo.GoUInt8>, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):stdgo.GoInt return _partitionEqualOrdered__tp__4(_data, _a, _b, _pivot);
private function _partitionEqualOrdered__tp__5(_data:stdgo.Slice<stdgo.GoUInt16>, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):stdgo.GoInt {
        var _newpivot = (0 : stdgo.GoInt);
        {
            final __tmp__0 = _data[(_pivot : stdgo.GoInt)];
            final __tmp__1 = _data[(_a : stdgo.GoInt)];
            final __tmp__2 = _data;
            final __tmp__3 = (_a : stdgo.GoInt);
            final __tmp__4 = _data;
            final __tmp__5 = (_pivot : stdgo.GoInt);
            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
        };
        var __0 = (_a + (1 : stdgo.GoInt) : stdgo.GoInt), __1 = (_b - (1 : stdgo.GoInt) : stdgo.GoInt);
var _j = __1, _i = __0;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L179"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L180"
            while (((_i <= _j : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_a : stdgo.GoInt)], _data[(_i : stdgo.GoInt)]) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L181"
                _i++;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L183"
            while (((_i <= _j : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_a : stdgo.GoInt)], _data[(_j : stdgo.GoInt)]) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L184"
                _j--;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L186"
            if ((_i > _j : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L187"
                break;
            };
            {
                final __tmp__0 = _data[(_j : stdgo.GoInt)];
                final __tmp__1 = _data[(_i : stdgo.GoInt)];
                final __tmp__2 = _data;
                final __tmp__3 = (_i : stdgo.GoInt);
                final __tmp__4 = _data;
                final __tmp__5 = (_j : stdgo.GoInt);
                __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L190"
            _i++;
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L191"
            _j--;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L193"
        return _newpivot = _i;
    }
overload inline extern function _partitionEqualOrdered(_data:stdgo.Slice<stdgo.GoUInt16>, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):stdgo.GoInt return _partitionEqualOrdered__tp__5(_data, _a, _b, _pivot);
private function _partitionEqualOrdered__tp__6(_data:stdgo.Slice<stdgo.GoUInt32>, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):stdgo.GoInt {
        var _newpivot = (0 : stdgo.GoInt);
        {
            final __tmp__0 = _data[(_pivot : stdgo.GoInt)];
            final __tmp__1 = _data[(_a : stdgo.GoInt)];
            final __tmp__2 = _data;
            final __tmp__3 = (_a : stdgo.GoInt);
            final __tmp__4 = _data;
            final __tmp__5 = (_pivot : stdgo.GoInt);
            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
        };
        var __0 = (_a + (1 : stdgo.GoInt) : stdgo.GoInt), __1 = (_b - (1 : stdgo.GoInt) : stdgo.GoInt);
var _j = __1, _i = __0;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L179"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L180"
            while (((_i <= _j : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_a : stdgo.GoInt)], _data[(_i : stdgo.GoInt)]) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L181"
                _i++;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L183"
            while (((_i <= _j : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_a : stdgo.GoInt)], _data[(_j : stdgo.GoInt)]) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L184"
                _j--;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L186"
            if ((_i > _j : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L187"
                break;
            };
            {
                final __tmp__0 = _data[(_j : stdgo.GoInt)];
                final __tmp__1 = _data[(_i : stdgo.GoInt)];
                final __tmp__2 = _data;
                final __tmp__3 = (_i : stdgo.GoInt);
                final __tmp__4 = _data;
                final __tmp__5 = (_j : stdgo.GoInt);
                __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L190"
            _i++;
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L191"
            _j--;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L193"
        return _newpivot = _i;
    }
overload inline extern function _partitionEqualOrdered(_data:stdgo.Slice<stdgo.GoUInt32>, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):stdgo.GoInt return _partitionEqualOrdered__tp__6(_data, _a, _b, _pivot);
private function _partitionEqualOrdered__tp__7(_data:stdgo.Slice<stdgo.GoUInt64>, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):stdgo.GoInt {
        var _newpivot = (0 : stdgo.GoInt);
        {
            final __tmp__0 = _data[(_pivot : stdgo.GoInt)];
            final __tmp__1 = _data[(_a : stdgo.GoInt)];
            final __tmp__2 = _data;
            final __tmp__3 = (_a : stdgo.GoInt);
            final __tmp__4 = _data;
            final __tmp__5 = (_pivot : stdgo.GoInt);
            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
        };
        var __0 = (_a + (1 : stdgo.GoInt) : stdgo.GoInt), __1 = (_b - (1 : stdgo.GoInt) : stdgo.GoInt);
var _j = __1, _i = __0;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L179"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L180"
            while (((_i <= _j : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_a : stdgo.GoInt)], _data[(_i : stdgo.GoInt)]) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L181"
                _i++;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L183"
            while (((_i <= _j : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_a : stdgo.GoInt)], _data[(_j : stdgo.GoInt)]) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L184"
                _j--;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L186"
            if ((_i > _j : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L187"
                break;
            };
            {
                final __tmp__0 = _data[(_j : stdgo.GoInt)];
                final __tmp__1 = _data[(_i : stdgo.GoInt)];
                final __tmp__2 = _data;
                final __tmp__3 = (_i : stdgo.GoInt);
                final __tmp__4 = _data;
                final __tmp__5 = (_j : stdgo.GoInt);
                __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L190"
            _i++;
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L191"
            _j--;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L193"
        return _newpivot = _i;
    }
overload inline extern function _partitionEqualOrdered(_data:stdgo.Slice<stdgo.GoUInt64>, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):stdgo.GoInt return _partitionEqualOrdered__tp__7(_data, _a, _b, _pivot);
private function _partitionEqualOrdered__tp__8(_data:stdgo.Slice<stdgo.GoUIntptr>, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):stdgo.GoInt {
        var _newpivot = (0 : stdgo.GoInt);
        {
            final __tmp__0 = _data[(_pivot : stdgo.GoInt)];
            final __tmp__1 = _data[(_a : stdgo.GoInt)];
            final __tmp__2 = _data;
            final __tmp__3 = (_a : stdgo.GoInt);
            final __tmp__4 = _data;
            final __tmp__5 = (_pivot : stdgo.GoInt);
            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
        };
        var __0 = (_a + (1 : stdgo.GoInt) : stdgo.GoInt), __1 = (_b - (1 : stdgo.GoInt) : stdgo.GoInt);
var _j = __1, _i = __0;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L179"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L180"
            while (((_i <= _j : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_a : stdgo.GoInt)], _data[(_i : stdgo.GoInt)]) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L181"
                _i++;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L183"
            while (((_i <= _j : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_a : stdgo.GoInt)], _data[(_j : stdgo.GoInt)]) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L184"
                _j--;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L186"
            if ((_i > _j : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L187"
                break;
            };
            {
                final __tmp__0 = _data[(_j : stdgo.GoInt)];
                final __tmp__1 = _data[(_i : stdgo.GoInt)];
                final __tmp__2 = _data;
                final __tmp__3 = (_i : stdgo.GoInt);
                final __tmp__4 = _data;
                final __tmp__5 = (_j : stdgo.GoInt);
                __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L190"
            _i++;
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L191"
            _j--;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L193"
        return _newpivot = _i;
    }
overload inline extern function _partitionEqualOrdered(_data:stdgo.Slice<stdgo.GoUIntptr>, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):stdgo.GoInt return _partitionEqualOrdered__tp__8(_data, _a, _b, _pivot);
private function _partitionEqualOrdered__tp__9(_data:stdgo.Slice<stdgo.GoFloat32>, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):stdgo.GoInt {
        var _newpivot = (0 : stdgo.GoInt);
        {
            final __tmp__0 = _data[(_pivot : stdgo.GoInt)];
            final __tmp__1 = _data[(_a : stdgo.GoInt)];
            final __tmp__2 = _data;
            final __tmp__3 = (_a : stdgo.GoInt);
            final __tmp__4 = _data;
            final __tmp__5 = (_pivot : stdgo.GoInt);
            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
        };
        var __0 = (_a + (1 : stdgo.GoInt) : stdgo.GoInt), __1 = (_b - (1 : stdgo.GoInt) : stdgo.GoInt);
var _j = __1, _i = __0;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L179"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L180"
            while (((_i <= _j : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_a : stdgo.GoInt)], _data[(_i : stdgo.GoInt)]) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L181"
                _i++;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L183"
            while (((_i <= _j : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_a : stdgo.GoInt)], _data[(_j : stdgo.GoInt)]) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L184"
                _j--;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L186"
            if ((_i > _j : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L187"
                break;
            };
            {
                final __tmp__0 = _data[(_j : stdgo.GoInt)];
                final __tmp__1 = _data[(_i : stdgo.GoInt)];
                final __tmp__2 = _data;
                final __tmp__3 = (_i : stdgo.GoInt);
                final __tmp__4 = _data;
                final __tmp__5 = (_j : stdgo.GoInt);
                __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L190"
            _i++;
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L191"
            _j--;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L193"
        return _newpivot = _i;
    }
overload inline extern function _partitionEqualOrdered(_data:stdgo.Slice<stdgo.GoFloat32>, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):stdgo.GoInt return _partitionEqualOrdered__tp__9(_data, _a, _b, _pivot);
private function _partitionEqualOrdered__tp__10(_data:stdgo.Slice<stdgo.GoFloat64>, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):stdgo.GoInt {
        var _newpivot = (0 : stdgo.GoInt);
        {
            final __tmp__0 = _data[(_pivot : stdgo.GoInt)];
            final __tmp__1 = _data[(_a : stdgo.GoInt)];
            final __tmp__2 = _data;
            final __tmp__3 = (_a : stdgo.GoInt);
            final __tmp__4 = _data;
            final __tmp__5 = (_pivot : stdgo.GoInt);
            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
        };
        var __0 = (_a + (1 : stdgo.GoInt) : stdgo.GoInt), __1 = (_b - (1 : stdgo.GoInt) : stdgo.GoInt);
var _j = __1, _i = __0;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L179"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L180"
            while (((_i <= _j : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_a : stdgo.GoInt)], _data[(_i : stdgo.GoInt)]) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L181"
                _i++;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L183"
            while (((_i <= _j : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_a : stdgo.GoInt)], _data[(_j : stdgo.GoInt)]) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L184"
                _j--;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L186"
            if ((_i > _j : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L187"
                break;
            };
            {
                final __tmp__0 = _data[(_j : stdgo.GoInt)];
                final __tmp__1 = _data[(_i : stdgo.GoInt)];
                final __tmp__2 = _data;
                final __tmp__3 = (_i : stdgo.GoInt);
                final __tmp__4 = _data;
                final __tmp__5 = (_j : stdgo.GoInt);
                __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L190"
            _i++;
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L191"
            _j--;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L193"
        return _newpivot = _i;
    }
overload inline extern function _partitionEqualOrdered(_data:stdgo.Slice<stdgo.GoFloat64>, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):stdgo.GoInt return _partitionEqualOrdered__tp__10(_data, _a, _b, _pivot);
private function _partitionEqualOrdered__tp__11(_data:stdgo.Slice<stdgo.GoString>, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):stdgo.GoInt {
        var _newpivot = (0 : stdgo.GoInt);
        {
            final __tmp__0 = _data[(_pivot : stdgo.GoInt)]?.__copy__();
            final __tmp__1 = _data[(_a : stdgo.GoInt)]?.__copy__();
            final __tmp__2 = _data;
            final __tmp__3 = (_a : stdgo.GoInt);
            final __tmp__4 = _data;
            final __tmp__5 = (_pivot : stdgo.GoInt);
            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
        };
        var __0 = (_a + (1 : stdgo.GoInt) : stdgo.GoInt), __1 = (_b - (1 : stdgo.GoInt) : stdgo.GoInt);
var _j = __1, _i = __0;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L179"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L180"
            while (((_i <= _j : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_a : stdgo.GoInt)]?.__copy__(), _data[(_i : stdgo.GoInt)]?.__copy__()) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L181"
                _i++;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L183"
            while (((_i <= _j : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_a : stdgo.GoInt)]?.__copy__(), _data[(_j : stdgo.GoInt)]?.__copy__()) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L184"
                _j--;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L186"
            if ((_i > _j : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L187"
                break;
            };
            {
                final __tmp__0 = _data[(_j : stdgo.GoInt)]?.__copy__();
                final __tmp__1 = _data[(_i : stdgo.GoInt)]?.__copy__();
                final __tmp__2 = _data;
                final __tmp__3 = (_i : stdgo.GoInt);
                final __tmp__4 = _data;
                final __tmp__5 = (_j : stdgo.GoInt);
                __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L190"
            _i++;
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L191"
            _j--;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L193"
        return _newpivot = _i;
    }
overload inline extern function _partitionEqualOrdered(_data:stdgo.Slice<stdgo.GoString>, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):stdgo.GoInt return _partitionEqualOrdered__tp__11(_data, _a, _b, _pivot);

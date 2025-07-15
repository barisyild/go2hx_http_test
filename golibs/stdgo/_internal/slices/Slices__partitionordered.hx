package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function _partitionOrdered__tp__0(_data:stdgo.Slice<stdgo.GoInt8>, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        var _newpivot = (0 : stdgo.GoInt), _alreadyPartitioned = false;
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
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L141"
        while (((_i <= _j : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_i : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L142"
            _i++;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L144"
        while (((_i <= _j : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L145"
            _j--;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L147"
        if ((_i > _j : Bool)) {
            {
                final __tmp__0 = _data[(_a : stdgo.GoInt)];
                final __tmp__1 = _data[(_j : stdgo.GoInt)];
                final __tmp__2 = _data;
                final __tmp__3 = (_j : stdgo.GoInt);
                final __tmp__4 = _data;
                final __tmp__5 = (_a : stdgo.GoInt);
                __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L149"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : _j, _1 : true };
                _newpivot = __tmp__._0;
                _alreadyPartitioned = __tmp__._1;
                __tmp__;
            };
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
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L152"
        _i++;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L153"
        _j--;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L155"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L156"
            while (((_i <= _j : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_i : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L157"
                _i++;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L159"
            while (((_i <= _j : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L160"
                _j--;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L162"
            if ((_i > _j : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L163"
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
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L166"
            _i++;
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L167"
            _j--;
        };
        {
            final __tmp__0 = _data[(_a : stdgo.GoInt)];
            final __tmp__1 = _data[(_j : stdgo.GoInt)];
            final __tmp__2 = _data;
            final __tmp__3 = (_j : stdgo.GoInt);
            final __tmp__4 = _data;
            final __tmp__5 = (_a : stdgo.GoInt);
            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L170"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : _j, _1 : false };
            _newpivot = __tmp__._0;
            _alreadyPartitioned = __tmp__._1;
            __tmp__;
        };
    }
overload inline extern function _partitionOrdered(_data:stdgo.Slice<stdgo.GoInt8>, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } return _partitionOrdered__tp__0(_data, _a, _b, _pivot);
private function _partitionOrdered__tp__1(_data:stdgo.Slice<stdgo.GoInt16>, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        var _newpivot = (0 : stdgo.GoInt), _alreadyPartitioned = false;
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
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L141"
        while (((_i <= _j : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_i : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L142"
            _i++;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L144"
        while (((_i <= _j : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L145"
            _j--;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L147"
        if ((_i > _j : Bool)) {
            {
                final __tmp__0 = _data[(_a : stdgo.GoInt)];
                final __tmp__1 = _data[(_j : stdgo.GoInt)];
                final __tmp__2 = _data;
                final __tmp__3 = (_j : stdgo.GoInt);
                final __tmp__4 = _data;
                final __tmp__5 = (_a : stdgo.GoInt);
                __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L149"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : _j, _1 : true };
                _newpivot = __tmp__._0;
                _alreadyPartitioned = __tmp__._1;
                __tmp__;
            };
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
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L152"
        _i++;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L153"
        _j--;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L155"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L156"
            while (((_i <= _j : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_i : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L157"
                _i++;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L159"
            while (((_i <= _j : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L160"
                _j--;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L162"
            if ((_i > _j : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L163"
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
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L166"
            _i++;
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L167"
            _j--;
        };
        {
            final __tmp__0 = _data[(_a : stdgo.GoInt)];
            final __tmp__1 = _data[(_j : stdgo.GoInt)];
            final __tmp__2 = _data;
            final __tmp__3 = (_j : stdgo.GoInt);
            final __tmp__4 = _data;
            final __tmp__5 = (_a : stdgo.GoInt);
            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L170"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : _j, _1 : false };
            _newpivot = __tmp__._0;
            _alreadyPartitioned = __tmp__._1;
            __tmp__;
        };
    }
overload inline extern function _partitionOrdered(_data:stdgo.Slice<stdgo.GoInt16>, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } return _partitionOrdered__tp__1(_data, _a, _b, _pivot);
private function _partitionOrdered__tp__2(_data:stdgo.Slice<stdgo.GoInt32>, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        var _newpivot = (0 : stdgo.GoInt), _alreadyPartitioned = false;
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
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L141"
        while (((_i <= _j : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_i : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L142"
            _i++;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L144"
        while (((_i <= _j : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L145"
            _j--;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L147"
        if ((_i > _j : Bool)) {
            {
                final __tmp__0 = _data[(_a : stdgo.GoInt)];
                final __tmp__1 = _data[(_j : stdgo.GoInt)];
                final __tmp__2 = _data;
                final __tmp__3 = (_j : stdgo.GoInt);
                final __tmp__4 = _data;
                final __tmp__5 = (_a : stdgo.GoInt);
                __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L149"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : _j, _1 : true };
                _newpivot = __tmp__._0;
                _alreadyPartitioned = __tmp__._1;
                __tmp__;
            };
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
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L152"
        _i++;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L153"
        _j--;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L155"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L156"
            while (((_i <= _j : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_i : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L157"
                _i++;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L159"
            while (((_i <= _j : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L160"
                _j--;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L162"
            if ((_i > _j : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L163"
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
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L166"
            _i++;
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L167"
            _j--;
        };
        {
            final __tmp__0 = _data[(_a : stdgo.GoInt)];
            final __tmp__1 = _data[(_j : stdgo.GoInt)];
            final __tmp__2 = _data;
            final __tmp__3 = (_j : stdgo.GoInt);
            final __tmp__4 = _data;
            final __tmp__5 = (_a : stdgo.GoInt);
            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L170"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : _j, _1 : false };
            _newpivot = __tmp__._0;
            _alreadyPartitioned = __tmp__._1;
            __tmp__;
        };
    }
overload inline extern function _partitionOrdered(_data:stdgo.Slice<stdgo.GoInt32>, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } return _partitionOrdered__tp__2(_data, _a, _b, _pivot);
private function _partitionOrdered__tp__3(_data:stdgo.Slice<stdgo.GoInt64>, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        var _newpivot = (0 : stdgo.GoInt), _alreadyPartitioned = false;
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
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L141"
        while (((_i <= _j : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_i : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L142"
            _i++;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L144"
        while (((_i <= _j : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L145"
            _j--;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L147"
        if ((_i > _j : Bool)) {
            {
                final __tmp__0 = _data[(_a : stdgo.GoInt)];
                final __tmp__1 = _data[(_j : stdgo.GoInt)];
                final __tmp__2 = _data;
                final __tmp__3 = (_j : stdgo.GoInt);
                final __tmp__4 = _data;
                final __tmp__5 = (_a : stdgo.GoInt);
                __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L149"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : _j, _1 : true };
                _newpivot = __tmp__._0;
                _alreadyPartitioned = __tmp__._1;
                __tmp__;
            };
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
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L152"
        _i++;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L153"
        _j--;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L155"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L156"
            while (((_i <= _j : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_i : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L157"
                _i++;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L159"
            while (((_i <= _j : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L160"
                _j--;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L162"
            if ((_i > _j : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L163"
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
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L166"
            _i++;
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L167"
            _j--;
        };
        {
            final __tmp__0 = _data[(_a : stdgo.GoInt)];
            final __tmp__1 = _data[(_j : stdgo.GoInt)];
            final __tmp__2 = _data;
            final __tmp__3 = (_j : stdgo.GoInt);
            final __tmp__4 = _data;
            final __tmp__5 = (_a : stdgo.GoInt);
            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L170"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : _j, _1 : false };
            _newpivot = __tmp__._0;
            _alreadyPartitioned = __tmp__._1;
            __tmp__;
        };
    }
overload inline extern function _partitionOrdered(_data:stdgo.Slice<stdgo.GoInt64>, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } return _partitionOrdered__tp__3(_data, _a, _b, _pivot);
private function _partitionOrdered__tp__4(_data:stdgo.Slice<stdgo.GoUInt8>, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        var _newpivot = (0 : stdgo.GoInt), _alreadyPartitioned = false;
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
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L141"
        while (((_i <= _j : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_i : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L142"
            _i++;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L144"
        while (((_i <= _j : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L145"
            _j--;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L147"
        if ((_i > _j : Bool)) {
            {
                final __tmp__0 = _data[(_a : stdgo.GoInt)];
                final __tmp__1 = _data[(_j : stdgo.GoInt)];
                final __tmp__2 = _data;
                final __tmp__3 = (_j : stdgo.GoInt);
                final __tmp__4 = _data;
                final __tmp__5 = (_a : stdgo.GoInt);
                __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L149"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : _j, _1 : true };
                _newpivot = __tmp__._0;
                _alreadyPartitioned = __tmp__._1;
                __tmp__;
            };
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
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L152"
        _i++;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L153"
        _j--;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L155"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L156"
            while (((_i <= _j : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_i : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L157"
                _i++;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L159"
            while (((_i <= _j : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L160"
                _j--;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L162"
            if ((_i > _j : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L163"
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
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L166"
            _i++;
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L167"
            _j--;
        };
        {
            final __tmp__0 = _data[(_a : stdgo.GoInt)];
            final __tmp__1 = _data[(_j : stdgo.GoInt)];
            final __tmp__2 = _data;
            final __tmp__3 = (_j : stdgo.GoInt);
            final __tmp__4 = _data;
            final __tmp__5 = (_a : stdgo.GoInt);
            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L170"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : _j, _1 : false };
            _newpivot = __tmp__._0;
            _alreadyPartitioned = __tmp__._1;
            __tmp__;
        };
    }
overload inline extern function _partitionOrdered(_data:stdgo.Slice<stdgo.GoUInt8>, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } return _partitionOrdered__tp__4(_data, _a, _b, _pivot);
private function _partitionOrdered__tp__5(_data:stdgo.Slice<stdgo.GoUInt16>, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        var _newpivot = (0 : stdgo.GoInt), _alreadyPartitioned = false;
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
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L141"
        while (((_i <= _j : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_i : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L142"
            _i++;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L144"
        while (((_i <= _j : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L145"
            _j--;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L147"
        if ((_i > _j : Bool)) {
            {
                final __tmp__0 = _data[(_a : stdgo.GoInt)];
                final __tmp__1 = _data[(_j : stdgo.GoInt)];
                final __tmp__2 = _data;
                final __tmp__3 = (_j : stdgo.GoInt);
                final __tmp__4 = _data;
                final __tmp__5 = (_a : stdgo.GoInt);
                __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L149"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : _j, _1 : true };
                _newpivot = __tmp__._0;
                _alreadyPartitioned = __tmp__._1;
                __tmp__;
            };
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
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L152"
        _i++;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L153"
        _j--;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L155"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L156"
            while (((_i <= _j : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_i : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L157"
                _i++;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L159"
            while (((_i <= _j : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L160"
                _j--;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L162"
            if ((_i > _j : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L163"
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
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L166"
            _i++;
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L167"
            _j--;
        };
        {
            final __tmp__0 = _data[(_a : stdgo.GoInt)];
            final __tmp__1 = _data[(_j : stdgo.GoInt)];
            final __tmp__2 = _data;
            final __tmp__3 = (_j : stdgo.GoInt);
            final __tmp__4 = _data;
            final __tmp__5 = (_a : stdgo.GoInt);
            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L170"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : _j, _1 : false };
            _newpivot = __tmp__._0;
            _alreadyPartitioned = __tmp__._1;
            __tmp__;
        };
    }
overload inline extern function _partitionOrdered(_data:stdgo.Slice<stdgo.GoUInt16>, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } return _partitionOrdered__tp__5(_data, _a, _b, _pivot);
private function _partitionOrdered__tp__6(_data:stdgo.Slice<stdgo.GoUInt32>, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        var _newpivot = (0 : stdgo.GoInt), _alreadyPartitioned = false;
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
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L141"
        while (((_i <= _j : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_i : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L142"
            _i++;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L144"
        while (((_i <= _j : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L145"
            _j--;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L147"
        if ((_i > _j : Bool)) {
            {
                final __tmp__0 = _data[(_a : stdgo.GoInt)];
                final __tmp__1 = _data[(_j : stdgo.GoInt)];
                final __tmp__2 = _data;
                final __tmp__3 = (_j : stdgo.GoInt);
                final __tmp__4 = _data;
                final __tmp__5 = (_a : stdgo.GoInt);
                __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L149"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : _j, _1 : true };
                _newpivot = __tmp__._0;
                _alreadyPartitioned = __tmp__._1;
                __tmp__;
            };
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
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L152"
        _i++;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L153"
        _j--;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L155"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L156"
            while (((_i <= _j : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_i : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L157"
                _i++;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L159"
            while (((_i <= _j : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L160"
                _j--;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L162"
            if ((_i > _j : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L163"
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
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L166"
            _i++;
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L167"
            _j--;
        };
        {
            final __tmp__0 = _data[(_a : stdgo.GoInt)];
            final __tmp__1 = _data[(_j : stdgo.GoInt)];
            final __tmp__2 = _data;
            final __tmp__3 = (_j : stdgo.GoInt);
            final __tmp__4 = _data;
            final __tmp__5 = (_a : stdgo.GoInt);
            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L170"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : _j, _1 : false };
            _newpivot = __tmp__._0;
            _alreadyPartitioned = __tmp__._1;
            __tmp__;
        };
    }
overload inline extern function _partitionOrdered(_data:stdgo.Slice<stdgo.GoUInt32>, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } return _partitionOrdered__tp__6(_data, _a, _b, _pivot);
private function _partitionOrdered__tp__7(_data:stdgo.Slice<stdgo.GoUInt64>, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        var _newpivot = (0 : stdgo.GoInt), _alreadyPartitioned = false;
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
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L141"
        while (((_i <= _j : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_i : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L142"
            _i++;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L144"
        while (((_i <= _j : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L145"
            _j--;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L147"
        if ((_i > _j : Bool)) {
            {
                final __tmp__0 = _data[(_a : stdgo.GoInt)];
                final __tmp__1 = _data[(_j : stdgo.GoInt)];
                final __tmp__2 = _data;
                final __tmp__3 = (_j : stdgo.GoInt);
                final __tmp__4 = _data;
                final __tmp__5 = (_a : stdgo.GoInt);
                __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L149"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : _j, _1 : true };
                _newpivot = __tmp__._0;
                _alreadyPartitioned = __tmp__._1;
                __tmp__;
            };
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
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L152"
        _i++;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L153"
        _j--;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L155"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L156"
            while (((_i <= _j : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_i : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L157"
                _i++;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L159"
            while (((_i <= _j : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L160"
                _j--;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L162"
            if ((_i > _j : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L163"
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
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L166"
            _i++;
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L167"
            _j--;
        };
        {
            final __tmp__0 = _data[(_a : stdgo.GoInt)];
            final __tmp__1 = _data[(_j : stdgo.GoInt)];
            final __tmp__2 = _data;
            final __tmp__3 = (_j : stdgo.GoInt);
            final __tmp__4 = _data;
            final __tmp__5 = (_a : stdgo.GoInt);
            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L170"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : _j, _1 : false };
            _newpivot = __tmp__._0;
            _alreadyPartitioned = __tmp__._1;
            __tmp__;
        };
    }
overload inline extern function _partitionOrdered(_data:stdgo.Slice<stdgo.GoUInt64>, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } return _partitionOrdered__tp__7(_data, _a, _b, _pivot);
private function _partitionOrdered__tp__8(_data:stdgo.Slice<stdgo.GoUIntptr>, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        var _newpivot = (0 : stdgo.GoInt), _alreadyPartitioned = false;
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
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L141"
        while (((_i <= _j : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_i : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L142"
            _i++;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L144"
        while (((_i <= _j : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L145"
            _j--;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L147"
        if ((_i > _j : Bool)) {
            {
                final __tmp__0 = _data[(_a : stdgo.GoInt)];
                final __tmp__1 = _data[(_j : stdgo.GoInt)];
                final __tmp__2 = _data;
                final __tmp__3 = (_j : stdgo.GoInt);
                final __tmp__4 = _data;
                final __tmp__5 = (_a : stdgo.GoInt);
                __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L149"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : _j, _1 : true };
                _newpivot = __tmp__._0;
                _alreadyPartitioned = __tmp__._1;
                __tmp__;
            };
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
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L152"
        _i++;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L153"
        _j--;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L155"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L156"
            while (((_i <= _j : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_i : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L157"
                _i++;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L159"
            while (((_i <= _j : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L160"
                _j--;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L162"
            if ((_i > _j : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L163"
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
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L166"
            _i++;
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L167"
            _j--;
        };
        {
            final __tmp__0 = _data[(_a : stdgo.GoInt)];
            final __tmp__1 = _data[(_j : stdgo.GoInt)];
            final __tmp__2 = _data;
            final __tmp__3 = (_j : stdgo.GoInt);
            final __tmp__4 = _data;
            final __tmp__5 = (_a : stdgo.GoInt);
            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L170"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : _j, _1 : false };
            _newpivot = __tmp__._0;
            _alreadyPartitioned = __tmp__._1;
            __tmp__;
        };
    }
overload inline extern function _partitionOrdered(_data:stdgo.Slice<stdgo.GoUIntptr>, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } return _partitionOrdered__tp__8(_data, _a, _b, _pivot);
private function _partitionOrdered__tp__9(_data:stdgo.Slice<stdgo.GoFloat32>, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        var _newpivot = (0 : stdgo.GoInt), _alreadyPartitioned = false;
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
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L141"
        while (((_i <= _j : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_i : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L142"
            _i++;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L144"
        while (((_i <= _j : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L145"
            _j--;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L147"
        if ((_i > _j : Bool)) {
            {
                final __tmp__0 = _data[(_a : stdgo.GoInt)];
                final __tmp__1 = _data[(_j : stdgo.GoInt)];
                final __tmp__2 = _data;
                final __tmp__3 = (_j : stdgo.GoInt);
                final __tmp__4 = _data;
                final __tmp__5 = (_a : stdgo.GoInt);
                __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L149"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : _j, _1 : true };
                _newpivot = __tmp__._0;
                _alreadyPartitioned = __tmp__._1;
                __tmp__;
            };
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
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L152"
        _i++;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L153"
        _j--;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L155"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L156"
            while (((_i <= _j : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_i : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L157"
                _i++;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L159"
            while (((_i <= _j : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L160"
                _j--;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L162"
            if ((_i > _j : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L163"
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
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L166"
            _i++;
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L167"
            _j--;
        };
        {
            final __tmp__0 = _data[(_a : stdgo.GoInt)];
            final __tmp__1 = _data[(_j : stdgo.GoInt)];
            final __tmp__2 = _data;
            final __tmp__3 = (_j : stdgo.GoInt);
            final __tmp__4 = _data;
            final __tmp__5 = (_a : stdgo.GoInt);
            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L170"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : _j, _1 : false };
            _newpivot = __tmp__._0;
            _alreadyPartitioned = __tmp__._1;
            __tmp__;
        };
    }
overload inline extern function _partitionOrdered(_data:stdgo.Slice<stdgo.GoFloat32>, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } return _partitionOrdered__tp__9(_data, _a, _b, _pivot);
private function _partitionOrdered__tp__10(_data:stdgo.Slice<stdgo.GoFloat64>, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        var _newpivot = (0 : stdgo.GoInt), _alreadyPartitioned = false;
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
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L141"
        while (((_i <= _j : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_i : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L142"
            _i++;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L144"
        while (((_i <= _j : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L145"
            _j--;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L147"
        if ((_i > _j : Bool)) {
            {
                final __tmp__0 = _data[(_a : stdgo.GoInt)];
                final __tmp__1 = _data[(_j : stdgo.GoInt)];
                final __tmp__2 = _data;
                final __tmp__3 = (_j : stdgo.GoInt);
                final __tmp__4 = _data;
                final __tmp__5 = (_a : stdgo.GoInt);
                __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L149"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : _j, _1 : true };
                _newpivot = __tmp__._0;
                _alreadyPartitioned = __tmp__._1;
                __tmp__;
            };
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
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L152"
        _i++;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L153"
        _j--;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L155"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L156"
            while (((_i <= _j : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_i : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L157"
                _i++;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L159"
            while (((_i <= _j : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L160"
                _j--;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L162"
            if ((_i > _j : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L163"
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
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L166"
            _i++;
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L167"
            _j--;
        };
        {
            final __tmp__0 = _data[(_a : stdgo.GoInt)];
            final __tmp__1 = _data[(_j : stdgo.GoInt)];
            final __tmp__2 = _data;
            final __tmp__3 = (_j : stdgo.GoInt);
            final __tmp__4 = _data;
            final __tmp__5 = (_a : stdgo.GoInt);
            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L170"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : _j, _1 : false };
            _newpivot = __tmp__._0;
            _alreadyPartitioned = __tmp__._1;
            __tmp__;
        };
    }
overload inline extern function _partitionOrdered(_data:stdgo.Slice<stdgo.GoFloat64>, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } return _partitionOrdered__tp__10(_data, _a, _b, _pivot);
private function _partitionOrdered__tp__11(_data:stdgo.Slice<stdgo.GoString>, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        var _newpivot = (0 : stdgo.GoInt), _alreadyPartitioned = false;
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
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L141"
        while (((_i <= _j : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_i : stdgo.GoInt)]?.__copy__(), _data[(_a : stdgo.GoInt)]?.__copy__()) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L142"
            _i++;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L144"
        while (((_i <= _j : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)]?.__copy__(), _data[(_a : stdgo.GoInt)]?.__copy__()) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L145"
            _j--;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L147"
        if ((_i > _j : Bool)) {
            {
                final __tmp__0 = _data[(_a : stdgo.GoInt)]?.__copy__();
                final __tmp__1 = _data[(_j : stdgo.GoInt)]?.__copy__();
                final __tmp__2 = _data;
                final __tmp__3 = (_j : stdgo.GoInt);
                final __tmp__4 = _data;
                final __tmp__5 = (_a : stdgo.GoInt);
                __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L149"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : _j, _1 : true };
                _newpivot = __tmp__._0;
                _alreadyPartitioned = __tmp__._1;
                __tmp__;
            };
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
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L152"
        _i++;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L153"
        _j--;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L155"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L156"
            while (((_i <= _j : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_i : stdgo.GoInt)]?.__copy__(), _data[(_a : stdgo.GoInt)]?.__copy__()) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L157"
                _i++;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L159"
            while (((_i <= _j : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)]?.__copy__(), _data[(_a : stdgo.GoInt)]?.__copy__()) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L160"
                _j--;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L162"
            if ((_i > _j : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L163"
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
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L166"
            _i++;
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L167"
            _j--;
        };
        {
            final __tmp__0 = _data[(_a : stdgo.GoInt)]?.__copy__();
            final __tmp__1 = _data[(_j : stdgo.GoInt)]?.__copy__();
            final __tmp__2 = _data;
            final __tmp__3 = (_j : stdgo.GoInt);
            final __tmp__4 = _data;
            final __tmp__5 = (_a : stdgo.GoInt);
            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L170"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : _j, _1 : false };
            _newpivot = __tmp__._0;
            _alreadyPartitioned = __tmp__._1;
            __tmp__;
        };
    }
overload inline extern function _partitionOrdered(_data:stdgo.Slice<stdgo.GoString>, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } return _partitionOrdered__tp__11(_data, _a, _b, _pivot);

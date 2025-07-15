package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function _partitionCmpFunc__tp__0<E>(_data:stdgo.Slice<E>, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt, _cmp:(E, E) -> stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
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
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L139"
        while (((_i <= _j : Bool) && ((_cmp(_data[(_i : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) < (0 : stdgo.GoInt) : Bool)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L140"
            _i++;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L142"
        while (((_i <= _j : Bool) && !((_cmp(_data[(_j : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) < (0 : stdgo.GoInt) : Bool)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L143"
            _j--;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L145"
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
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L147"
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
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L150"
        _i++;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L151"
        _j--;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L153"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L154"
            while (((_i <= _j : Bool) && ((_cmp(_data[(_i : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) < (0 : stdgo.GoInt) : Bool)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L155"
                _i++;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L157"
            while (((_i <= _j : Bool) && !((_cmp(_data[(_j : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) < (0 : stdgo.GoInt) : Bool)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L158"
                _j--;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L160"
            if ((_i > _j : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L161"
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
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L164"
            _i++;
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L165"
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
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L168"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : _j, _1 : false };
            _newpivot = __tmp__._0;
            _alreadyPartitioned = __tmp__._1;
            __tmp__;
        };
    }
overload inline extern function _partitionCmpFunc<E>(_data:stdgo.Slice<E>, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt, _cmp:(E, E) -> stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } return _partitionCmpFunc__tp__0(_data, _a, _b, _pivot, _cmp);

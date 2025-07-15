package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function _partitionEqualCmpFunc__tp__0<E>(_data:stdgo.Slice<E>, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt, _cmp:(E, E) -> stdgo.GoInt):stdgo.GoInt {
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
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L177"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L178"
            while (((_i <= _j : Bool) && !((_cmp(_data[(_a : stdgo.GoInt)], _data[(_i : stdgo.GoInt)]) < (0 : stdgo.GoInt) : Bool)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L179"
                _i++;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L181"
            while (((_i <= _j : Bool) && ((_cmp(_data[(_a : stdgo.GoInt)], _data[(_j : stdgo.GoInt)]) < (0 : stdgo.GoInt) : Bool)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L182"
                _j--;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L184"
            if ((_i > _j : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L185"
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
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L188"
            _i++;
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L189"
            _j--;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L191"
        return _newpivot = _i;
    }
overload inline extern function _partitionEqualCmpFunc<E>(_data:stdgo.Slice<E>, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt, _cmp:(E, E) -> stdgo.GoInt):stdgo.GoInt return _partitionEqualCmpFunc__tp__0(_data, _a, _b, _pivot, _cmp);

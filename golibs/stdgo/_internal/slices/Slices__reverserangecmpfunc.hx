package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function _reverseRangeCmpFunc__tp__0<E>(_data:stdgo.Slice<E>, _a:stdgo.GoInt, _b:stdgo.GoInt, _cmp:(E, E) -> stdgo.GoInt):Void {
        var _i = (_a : stdgo.GoInt);
        var _j = (_b - (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L322"
        while ((_i < _j : Bool)) {
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
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L324"
            _i++;
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L325"
            _j--;
        };
    }
overload inline extern function _reverseRangeCmpFunc<E>(_data:stdgo.Slice<E>, _a:stdgo.GoInt, _b:stdgo.GoInt, _cmp:(E, E) -> stdgo.GoInt):Void _reverseRangeCmpFunc__tp__0(_data, _a, _b, _cmp);

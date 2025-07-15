package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function _swapRangeCmpFunc__tp__0<E>(_data:stdgo.Slice<E>, _a:stdgo.GoInt, _b:stdgo.GoInt, _n:stdgo.GoInt, _cmp:(E, E) -> stdgo.GoInt):Void {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L330"
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
overload inline extern function _swapRangeCmpFunc<E>(_data:stdgo.Slice<E>, _a:stdgo.GoInt, _b:stdgo.GoInt, _n:stdgo.GoInt, _cmp:(E, E) -> stdgo.GoInt):Void _swapRangeCmpFunc__tp__0(_data, _a, _b, _n, _cmp);

package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function _insertionSortCmpFunc__tp__0<E>(_data:stdgo.Slice<E>, _a:stdgo.GoInt, _b:stdgo.GoInt, _cmp:(E, E) -> stdgo.GoInt):Void {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L11"
        {
            var _i = (_a + (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i < _b : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L12"
                {
                    var _j = (_i : stdgo.GoInt);
                    while (((_j > _a : Bool) && ((_cmp(_data[(_j : stdgo.GoInt)], _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)]) < (0 : stdgo.GoInt) : Bool)) : Bool)) {
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
overload inline extern function _insertionSortCmpFunc<E>(_data:stdgo.Slice<E>, _a:stdgo.GoInt, _b:stdgo.GoInt, _cmp:(E, E) -> stdgo.GoInt):Void _insertionSortCmpFunc__tp__0(_data, _a, _b, _cmp);

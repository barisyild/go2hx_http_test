package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function _heapSortCmpFunc__tp__0<E>(_data:stdgo.Slice<E>, _a:stdgo.GoInt, _b:stdgo.GoInt, _cmp:(E, E) -> stdgo.GoInt):Void {
        var _first = (_a : stdgo.GoInt);
        var _lo = (0 : stdgo.GoInt);
        var _hi = (_b - _a : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L44"
        {
            var _i = (((_hi - (1 : stdgo.GoInt) : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L45"
                stdgo._internal.slices.Slices__siftdowncmpfunc._siftDownCmpFunc(_data, _i, _hi, _first, _cmp);
                _i--;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L49"
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
//"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L51"
                stdgo._internal.slices.Slices__siftdowncmpfunc._siftDownCmpFunc(_data, _lo, _i, _first, _cmp);
                _i--;
            };
        };
    }
overload inline extern function _heapSortCmpFunc<E>(_data:stdgo.Slice<E>, _a:stdgo.GoInt, _b:stdgo.GoInt, _cmp:(E, E) -> stdgo.GoInt):Void _heapSortCmpFunc__tp__0(_data, _a, _b, _cmp);

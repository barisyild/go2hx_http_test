package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function _partialInsertionSortCmpFunc__tp__0<E>(_data:stdgo.Slice<E>, _a:stdgo.GoInt, _b:stdgo.GoInt, _cmp:(E, E) -> stdgo.GoInt):Bool {
        {};
        var _i = (_a + (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L201"
        {
            var _j = (0 : stdgo.GoInt);
            while ((_j < (5 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L202"
                while (((_i < _b : Bool) && !((_cmp(_data[(_i : stdgo.GoInt)], _data[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)]) < (0 : stdgo.GoInt) : Bool)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L203"
                    _i++;
                };
//"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L206"
                if (_i == (_b)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L207"
                    return true;
                };
//"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L210"
                if (((_b - _a : stdgo.GoInt) < (50 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L211"
                    return false;
                };
{
                    final __tmp__0 = _data[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)];
                    final __tmp__1 = _data[(_i : stdgo.GoInt)];
                    final __tmp__2 = _data;
                    final __tmp__3 = (_i : stdgo.GoInt);
                    final __tmp__4 = _data;
                    final __tmp__5 = (_i - (1 : stdgo.GoInt) : stdgo.GoInt);
                    __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                    __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                };
//"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L217"
                if (((_i - _a : stdgo.GoInt) >= (2 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L218"
                    {
                        var _j = (_i - (1 : stdgo.GoInt) : stdgo.GoInt);
                        while ((_j >= (1 : stdgo.GoInt) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L219"
                            if (!((_cmp(_data[(_j : stdgo.GoInt)], _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)]) < (0 : stdgo.GoInt) : Bool))) {
                                //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L220"
                                break;
                            };
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
                };
//"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L226"
                if (((_b - _i : stdgo.GoInt) >= (2 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L227"
                    {
                        var _j = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                        while ((_j < _b : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L228"
                            if (!((_cmp(_data[(_j : stdgo.GoInt)], _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)]) < (0 : stdgo.GoInt) : Bool))) {
                                //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L229"
                                break;
                            };
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
                            _j++;
                        };
                    };
                };
                _j++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L235"
        return false;
    }
overload inline extern function _partialInsertionSortCmpFunc<E>(_data:stdgo.Slice<E>, _a:stdgo.GoInt, _b:stdgo.GoInt, _cmp:(E, E) -> stdgo.GoInt):Bool return _partialInsertionSortCmpFunc__tp__0(_data, _a, _b, _cmp);

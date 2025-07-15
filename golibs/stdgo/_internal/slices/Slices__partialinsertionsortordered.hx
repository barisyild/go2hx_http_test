package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function _partialInsertionSortOrdered__tp__0(_data:stdgo.Slice<stdgo.GoInt8>, _a:stdgo.GoInt, _b:stdgo.GoInt):Bool {
        {};
        var _i = (_a + (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L203"
        {
            var _j = (0 : stdgo.GoInt);
            while ((_j < (5 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L204"
                while (((_i < _b : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_i : stdgo.GoInt)], _data[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L205"
                    _i++;
                };
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L208"
                if (_i == (_b)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L209"
                    return true;
                };
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L212"
                if (((_b - _a : stdgo.GoInt) < (50 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L213"
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
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L219"
                if (((_i - _a : stdgo.GoInt) >= (2 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L220"
                    {
                        var _j = (_i - (1 : stdgo.GoInt) : stdgo.GoInt);
                        while ((_j >= (1 : stdgo.GoInt) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L221"
                            if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)], _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L222"
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
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L228"
                if (((_b - _i : stdgo.GoInt) >= (2 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L229"
                    {
                        var _j = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                        while ((_j < _b : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L230"
                            if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)], _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L231"
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
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L237"
        return false;
    }
overload inline extern function _partialInsertionSortOrdered(_data:stdgo.Slice<stdgo.GoInt8>, _a:stdgo.GoInt, _b:stdgo.GoInt):Bool return _partialInsertionSortOrdered__tp__0(_data, _a, _b);
private function _partialInsertionSortOrdered__tp__1(_data:stdgo.Slice<stdgo.GoInt16>, _a:stdgo.GoInt, _b:stdgo.GoInt):Bool {
        {};
        var _i = (_a + (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L203"
        {
            var _j = (0 : stdgo.GoInt);
            while ((_j < (5 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L204"
                while (((_i < _b : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_i : stdgo.GoInt)], _data[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L205"
                    _i++;
                };
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L208"
                if (_i == (_b)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L209"
                    return true;
                };
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L212"
                if (((_b - _a : stdgo.GoInt) < (50 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L213"
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
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L219"
                if (((_i - _a : stdgo.GoInt) >= (2 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L220"
                    {
                        var _j = (_i - (1 : stdgo.GoInt) : stdgo.GoInt);
                        while ((_j >= (1 : stdgo.GoInt) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L221"
                            if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)], _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L222"
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
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L228"
                if (((_b - _i : stdgo.GoInt) >= (2 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L229"
                    {
                        var _j = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                        while ((_j < _b : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L230"
                            if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)], _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L231"
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
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L237"
        return false;
    }
overload inline extern function _partialInsertionSortOrdered(_data:stdgo.Slice<stdgo.GoInt16>, _a:stdgo.GoInt, _b:stdgo.GoInt):Bool return _partialInsertionSortOrdered__tp__1(_data, _a, _b);
private function _partialInsertionSortOrdered__tp__2(_data:stdgo.Slice<stdgo.GoInt32>, _a:stdgo.GoInt, _b:stdgo.GoInt):Bool {
        {};
        var _i = (_a + (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L203"
        {
            var _j = (0 : stdgo.GoInt);
            while ((_j < (5 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L204"
                while (((_i < _b : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_i : stdgo.GoInt)], _data[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L205"
                    _i++;
                };
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L208"
                if (_i == (_b)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L209"
                    return true;
                };
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L212"
                if (((_b - _a : stdgo.GoInt) < (50 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L213"
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
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L219"
                if (((_i - _a : stdgo.GoInt) >= (2 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L220"
                    {
                        var _j = (_i - (1 : stdgo.GoInt) : stdgo.GoInt);
                        while ((_j >= (1 : stdgo.GoInt) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L221"
                            if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)], _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L222"
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
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L228"
                if (((_b - _i : stdgo.GoInt) >= (2 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L229"
                    {
                        var _j = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                        while ((_j < _b : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L230"
                            if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)], _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L231"
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
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L237"
        return false;
    }
overload inline extern function _partialInsertionSortOrdered(_data:stdgo.Slice<stdgo.GoInt32>, _a:stdgo.GoInt, _b:stdgo.GoInt):Bool return _partialInsertionSortOrdered__tp__2(_data, _a, _b);
private function _partialInsertionSortOrdered__tp__3(_data:stdgo.Slice<stdgo.GoInt64>, _a:stdgo.GoInt, _b:stdgo.GoInt):Bool {
        {};
        var _i = (_a + (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L203"
        {
            var _j = (0 : stdgo.GoInt);
            while ((_j < (5 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L204"
                while (((_i < _b : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_i : stdgo.GoInt)], _data[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L205"
                    _i++;
                };
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L208"
                if (_i == (_b)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L209"
                    return true;
                };
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L212"
                if (((_b - _a : stdgo.GoInt) < (50 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L213"
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
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L219"
                if (((_i - _a : stdgo.GoInt) >= (2 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L220"
                    {
                        var _j = (_i - (1 : stdgo.GoInt) : stdgo.GoInt);
                        while ((_j >= (1 : stdgo.GoInt) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L221"
                            if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)], _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L222"
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
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L228"
                if (((_b - _i : stdgo.GoInt) >= (2 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L229"
                    {
                        var _j = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                        while ((_j < _b : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L230"
                            if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)], _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L231"
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
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L237"
        return false;
    }
overload inline extern function _partialInsertionSortOrdered(_data:stdgo.Slice<stdgo.GoInt64>, _a:stdgo.GoInt, _b:stdgo.GoInt):Bool return _partialInsertionSortOrdered__tp__3(_data, _a, _b);
private function _partialInsertionSortOrdered__tp__4(_data:stdgo.Slice<stdgo.GoUInt8>, _a:stdgo.GoInt, _b:stdgo.GoInt):Bool {
        {};
        var _i = (_a + (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L203"
        {
            var _j = (0 : stdgo.GoInt);
            while ((_j < (5 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L204"
                while (((_i < _b : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_i : stdgo.GoInt)], _data[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L205"
                    _i++;
                };
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L208"
                if (_i == (_b)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L209"
                    return true;
                };
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L212"
                if (((_b - _a : stdgo.GoInt) < (50 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L213"
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
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L219"
                if (((_i - _a : stdgo.GoInt) >= (2 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L220"
                    {
                        var _j = (_i - (1 : stdgo.GoInt) : stdgo.GoInt);
                        while ((_j >= (1 : stdgo.GoInt) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L221"
                            if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)], _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L222"
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
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L228"
                if (((_b - _i : stdgo.GoInt) >= (2 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L229"
                    {
                        var _j = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                        while ((_j < _b : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L230"
                            if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)], _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L231"
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
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L237"
        return false;
    }
overload inline extern function _partialInsertionSortOrdered(_data:stdgo.Slice<stdgo.GoUInt8>, _a:stdgo.GoInt, _b:stdgo.GoInt):Bool return _partialInsertionSortOrdered__tp__4(_data, _a, _b);
private function _partialInsertionSortOrdered__tp__5(_data:stdgo.Slice<stdgo.GoUInt16>, _a:stdgo.GoInt, _b:stdgo.GoInt):Bool {
        {};
        var _i = (_a + (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L203"
        {
            var _j = (0 : stdgo.GoInt);
            while ((_j < (5 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L204"
                while (((_i < _b : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_i : stdgo.GoInt)], _data[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L205"
                    _i++;
                };
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L208"
                if (_i == (_b)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L209"
                    return true;
                };
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L212"
                if (((_b - _a : stdgo.GoInt) < (50 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L213"
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
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L219"
                if (((_i - _a : stdgo.GoInt) >= (2 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L220"
                    {
                        var _j = (_i - (1 : stdgo.GoInt) : stdgo.GoInt);
                        while ((_j >= (1 : stdgo.GoInt) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L221"
                            if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)], _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L222"
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
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L228"
                if (((_b - _i : stdgo.GoInt) >= (2 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L229"
                    {
                        var _j = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                        while ((_j < _b : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L230"
                            if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)], _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L231"
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
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L237"
        return false;
    }
overload inline extern function _partialInsertionSortOrdered(_data:stdgo.Slice<stdgo.GoUInt16>, _a:stdgo.GoInt, _b:stdgo.GoInt):Bool return _partialInsertionSortOrdered__tp__5(_data, _a, _b);
private function _partialInsertionSortOrdered__tp__6(_data:stdgo.Slice<stdgo.GoUInt32>, _a:stdgo.GoInt, _b:stdgo.GoInt):Bool {
        {};
        var _i = (_a + (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L203"
        {
            var _j = (0 : stdgo.GoInt);
            while ((_j < (5 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L204"
                while (((_i < _b : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_i : stdgo.GoInt)], _data[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L205"
                    _i++;
                };
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L208"
                if (_i == (_b)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L209"
                    return true;
                };
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L212"
                if (((_b - _a : stdgo.GoInt) < (50 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L213"
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
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L219"
                if (((_i - _a : stdgo.GoInt) >= (2 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L220"
                    {
                        var _j = (_i - (1 : stdgo.GoInt) : stdgo.GoInt);
                        while ((_j >= (1 : stdgo.GoInt) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L221"
                            if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)], _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L222"
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
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L228"
                if (((_b - _i : stdgo.GoInt) >= (2 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L229"
                    {
                        var _j = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                        while ((_j < _b : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L230"
                            if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)], _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L231"
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
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L237"
        return false;
    }
overload inline extern function _partialInsertionSortOrdered(_data:stdgo.Slice<stdgo.GoUInt32>, _a:stdgo.GoInt, _b:stdgo.GoInt):Bool return _partialInsertionSortOrdered__tp__6(_data, _a, _b);
private function _partialInsertionSortOrdered__tp__7(_data:stdgo.Slice<stdgo.GoUInt64>, _a:stdgo.GoInt, _b:stdgo.GoInt):Bool {
        {};
        var _i = (_a + (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L203"
        {
            var _j = (0 : stdgo.GoInt);
            while ((_j < (5 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L204"
                while (((_i < _b : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_i : stdgo.GoInt)], _data[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L205"
                    _i++;
                };
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L208"
                if (_i == (_b)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L209"
                    return true;
                };
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L212"
                if (((_b - _a : stdgo.GoInt) < (50 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L213"
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
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L219"
                if (((_i - _a : stdgo.GoInt) >= (2 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L220"
                    {
                        var _j = (_i - (1 : stdgo.GoInt) : stdgo.GoInt);
                        while ((_j >= (1 : stdgo.GoInt) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L221"
                            if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)], _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L222"
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
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L228"
                if (((_b - _i : stdgo.GoInt) >= (2 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L229"
                    {
                        var _j = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                        while ((_j < _b : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L230"
                            if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)], _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L231"
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
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L237"
        return false;
    }
overload inline extern function _partialInsertionSortOrdered(_data:stdgo.Slice<stdgo.GoUInt64>, _a:stdgo.GoInt, _b:stdgo.GoInt):Bool return _partialInsertionSortOrdered__tp__7(_data, _a, _b);
private function _partialInsertionSortOrdered__tp__8(_data:stdgo.Slice<stdgo.GoUIntptr>, _a:stdgo.GoInt, _b:stdgo.GoInt):Bool {
        {};
        var _i = (_a + (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L203"
        {
            var _j = (0 : stdgo.GoInt);
            while ((_j < (5 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L204"
                while (((_i < _b : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_i : stdgo.GoInt)], _data[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L205"
                    _i++;
                };
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L208"
                if (_i == (_b)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L209"
                    return true;
                };
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L212"
                if (((_b - _a : stdgo.GoInt) < (50 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L213"
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
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L219"
                if (((_i - _a : stdgo.GoInt) >= (2 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L220"
                    {
                        var _j = (_i - (1 : stdgo.GoInt) : stdgo.GoInt);
                        while ((_j >= (1 : stdgo.GoInt) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L221"
                            if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)], _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L222"
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
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L228"
                if (((_b - _i : stdgo.GoInt) >= (2 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L229"
                    {
                        var _j = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                        while ((_j < _b : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L230"
                            if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)], _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L231"
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
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L237"
        return false;
    }
overload inline extern function _partialInsertionSortOrdered(_data:stdgo.Slice<stdgo.GoUIntptr>, _a:stdgo.GoInt, _b:stdgo.GoInt):Bool return _partialInsertionSortOrdered__tp__8(_data, _a, _b);
private function _partialInsertionSortOrdered__tp__9(_data:stdgo.Slice<stdgo.GoFloat32>, _a:stdgo.GoInt, _b:stdgo.GoInt):Bool {
        {};
        var _i = (_a + (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L203"
        {
            var _j = (0 : stdgo.GoInt);
            while ((_j < (5 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L204"
                while (((_i < _b : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_i : stdgo.GoInt)], _data[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L205"
                    _i++;
                };
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L208"
                if (_i == (_b)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L209"
                    return true;
                };
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L212"
                if (((_b - _a : stdgo.GoInt) < (50 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L213"
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
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L219"
                if (((_i - _a : stdgo.GoInt) >= (2 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L220"
                    {
                        var _j = (_i - (1 : stdgo.GoInt) : stdgo.GoInt);
                        while ((_j >= (1 : stdgo.GoInt) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L221"
                            if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)], _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L222"
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
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L228"
                if (((_b - _i : stdgo.GoInt) >= (2 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L229"
                    {
                        var _j = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                        while ((_j < _b : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L230"
                            if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)], _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L231"
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
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L237"
        return false;
    }
overload inline extern function _partialInsertionSortOrdered(_data:stdgo.Slice<stdgo.GoFloat32>, _a:stdgo.GoInt, _b:stdgo.GoInt):Bool return _partialInsertionSortOrdered__tp__9(_data, _a, _b);
private function _partialInsertionSortOrdered__tp__10(_data:stdgo.Slice<stdgo.GoFloat64>, _a:stdgo.GoInt, _b:stdgo.GoInt):Bool {
        {};
        var _i = (_a + (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L203"
        {
            var _j = (0 : stdgo.GoInt);
            while ((_j < (5 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L204"
                while (((_i < _b : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_i : stdgo.GoInt)], _data[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L205"
                    _i++;
                };
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L208"
                if (_i == (_b)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L209"
                    return true;
                };
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L212"
                if (((_b - _a : stdgo.GoInt) < (50 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L213"
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
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L219"
                if (((_i - _a : stdgo.GoInt) >= (2 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L220"
                    {
                        var _j = (_i - (1 : stdgo.GoInt) : stdgo.GoInt);
                        while ((_j >= (1 : stdgo.GoInt) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L221"
                            if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)], _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L222"
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
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L228"
                if (((_b - _i : stdgo.GoInt) >= (2 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L229"
                    {
                        var _j = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                        while ((_j < _b : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L230"
                            if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)], _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L231"
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
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L237"
        return false;
    }
overload inline extern function _partialInsertionSortOrdered(_data:stdgo.Slice<stdgo.GoFloat64>, _a:stdgo.GoInt, _b:stdgo.GoInt):Bool return _partialInsertionSortOrdered__tp__10(_data, _a, _b);
private function _partialInsertionSortOrdered__tp__11(_data:stdgo.Slice<stdgo.GoString>, _a:stdgo.GoInt, _b:stdgo.GoInt):Bool {
        {};
        var _i = (_a + (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L203"
        {
            var _j = (0 : stdgo.GoInt);
            while ((_j < (5 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L204"
                while (((_i < _b : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_i : stdgo.GoInt)]?.__copy__(), _data[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__()) : Bool) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L205"
                    _i++;
                };
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L208"
                if (_i == (_b)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L209"
                    return true;
                };
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L212"
                if (((_b - _a : stdgo.GoInt) < (50 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L213"
                    return false;
                };
{
                    final __tmp__0 = _data[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)].__copy__();
                    final __tmp__1 = _data[(_i : stdgo.GoInt)].__copy__();
                    final __tmp__2 = _data;
                    final __tmp__3 = (_i : stdgo.GoInt);
                    final __tmp__4 = _data;
                    final __tmp__5 = (_i - (1 : stdgo.GoInt) : stdgo.GoInt);
                    __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                    __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                };
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L219"
                if (((_i - _a : stdgo.GoInt) >= (2 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L220"
                    {
                        var _j = (_i - (1 : stdgo.GoInt) : stdgo.GoInt);
                        while ((_j >= (1 : stdgo.GoInt) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L221"
                            if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)].__copy__(), _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)].__copy__()) : Bool)) {
                                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L222"
                                break;
                            };
{
                                final __tmp__0 = _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)].__copy__();
                                final __tmp__1 = _data[(_j : stdgo.GoInt)].__copy__();
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
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L228"
                if (((_b - _i : stdgo.GoInt) >= (2 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L229"
                    {
                        var _j = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                        while ((_j < _b : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L230"
                            if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_j : stdgo.GoInt)].__copy__(), _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)].__copy__()) : Bool)) {
                                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L231"
                                break;
                            };
{
                                final __tmp__0 = _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)].__copy__();
                                final __tmp__1 = _data[(_j : stdgo.GoInt)].__copy__();
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
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L237"
        return false;
    }
overload inline extern function _partialInsertionSortOrdered(_data:stdgo.Slice<stdgo.GoString>, _a:stdgo.GoInt, _b:stdgo.GoInt):Bool return _partialInsertionSortOrdered__tp__11(_data, _a, _b);

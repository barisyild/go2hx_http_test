package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function _choosePivotOrdered__tp__0(_data:stdgo.Slice<stdgo.GoInt8>, _a:stdgo.GoInt, _b:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } {
        var _pivot = (0 : stdgo.GoInt), _hint = ((0 : stdgo.GoInt) : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint);
        {};
        var _l = (_b - _a : stdgo.GoInt);
        var _swaps:stdgo.GoInt = (0 : stdgo.GoInt), _swaps__pointer__ = stdgo.Go.pointer(_swaps), _i = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt), _j = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt), _k = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (3 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L278"
        if ((_l >= (8 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L279"
            if ((_l >= (50 : stdgo.GoInt) : Bool)) {
                _i = (stdgo._internal.slices.Slices__medianadjacentordered._medianAdjacentOrdered(_data, _i, _swaps__pointer__) : stdgo.GoInt);
                _j = (stdgo._internal.slices.Slices__medianadjacentordered._medianAdjacentOrdered(_data, _j, _swaps__pointer__) : stdgo.GoInt);
                _k = (stdgo._internal.slices.Slices__medianadjacentordered._medianAdjacentOrdered(_data, _k, _swaps__pointer__) : stdgo.GoInt);
            };
            _j = (stdgo._internal.slices.Slices__medianordered._medianOrdered(_data, _i, _j, _k, _swaps__pointer__) : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L289"
        {
            final __value__ = _swaps;
            if (__value__ == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L291"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } = { _0 : _j, _1 : (1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint) };
                    _pivot = __tmp__._0;
                    _hint = __tmp__._1;
                    __tmp__;
                };
            } else if (__value__ == ((12 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L293"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } = { _0 : _j, _1 : (2 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint) };
                    _pivot = __tmp__._0;
                    _hint = __tmp__._1;
                    __tmp__;
                };
            } else {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L295"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } = { _0 : _j, _1 : (0 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint) };
                    _pivot = __tmp__._0;
                    _hint = __tmp__._1;
                    __tmp__;
                };
            };
        };
    }
overload inline extern function _choosePivotOrdered(_data:stdgo.Slice<stdgo.GoInt8>, _a:stdgo.GoInt, _b:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } return _choosePivotOrdered__tp__0(_data, _a, _b);
private function _choosePivotOrdered__tp__1(_data:stdgo.Slice<stdgo.GoInt16>, _a:stdgo.GoInt, _b:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } {
        var _pivot = (0 : stdgo.GoInt), _hint = ((0 : stdgo.GoInt) : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint);
        {};
        var _l = (_b - _a : stdgo.GoInt);
        var _swaps:stdgo.GoInt = (0 : stdgo.GoInt), _swaps__pointer__ = stdgo.Go.pointer(_swaps), _i = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt), _j = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt), _k = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (3 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L278"
        if ((_l >= (8 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L279"
            if ((_l >= (50 : stdgo.GoInt) : Bool)) {
                _i = (stdgo._internal.slices.Slices__medianadjacentordered._medianAdjacentOrdered(_data, _i, _swaps__pointer__) : stdgo.GoInt);
                _j = (stdgo._internal.slices.Slices__medianadjacentordered._medianAdjacentOrdered(_data, _j, _swaps__pointer__) : stdgo.GoInt);
                _k = (stdgo._internal.slices.Slices__medianadjacentordered._medianAdjacentOrdered(_data, _k, _swaps__pointer__) : stdgo.GoInt);
            };
            _j = (stdgo._internal.slices.Slices__medianordered._medianOrdered(_data, _i, _j, _k, _swaps__pointer__) : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L289"
        {
            final __value__ = _swaps;
            if (__value__ == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L291"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } = { _0 : _j, _1 : (1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint) };
                    _pivot = __tmp__._0;
                    _hint = __tmp__._1;
                    __tmp__;
                };
            } else if (__value__ == ((12 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L293"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } = { _0 : _j, _1 : (2 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint) };
                    _pivot = __tmp__._0;
                    _hint = __tmp__._1;
                    __tmp__;
                };
            } else {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L295"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } = { _0 : _j, _1 : (0 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint) };
                    _pivot = __tmp__._0;
                    _hint = __tmp__._1;
                    __tmp__;
                };
            };
        };
    }
overload inline extern function _choosePivotOrdered(_data:stdgo.Slice<stdgo.GoInt16>, _a:stdgo.GoInt, _b:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } return _choosePivotOrdered__tp__1(_data, _a, _b);
private function _choosePivotOrdered__tp__2(_data:stdgo.Slice<stdgo.GoInt32>, _a:stdgo.GoInt, _b:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } {
        var _pivot = (0 : stdgo.GoInt), _hint = ((0 : stdgo.GoInt) : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint);
        {};
        var _l = (_b - _a : stdgo.GoInt);
        var _swaps:stdgo.GoInt = (0 : stdgo.GoInt), _swaps__pointer__ = stdgo.Go.pointer(_swaps), _i = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt), _j = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt), _k = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (3 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L278"
        if ((_l >= (8 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L279"
            if ((_l >= (50 : stdgo.GoInt) : Bool)) {
                _i = (stdgo._internal.slices.Slices__medianadjacentordered._medianAdjacentOrdered(_data, _i, _swaps__pointer__) : stdgo.GoInt);
                _j = (stdgo._internal.slices.Slices__medianadjacentordered._medianAdjacentOrdered(_data, _j, _swaps__pointer__) : stdgo.GoInt);
                _k = (stdgo._internal.slices.Slices__medianadjacentordered._medianAdjacentOrdered(_data, _k, _swaps__pointer__) : stdgo.GoInt);
            };
            _j = (stdgo._internal.slices.Slices__medianordered._medianOrdered(_data, _i, _j, _k, _swaps__pointer__) : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L289"
        {
            final __value__ = _swaps;
            if (__value__ == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L291"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } = { _0 : _j, _1 : (1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint) };
                    _pivot = __tmp__._0;
                    _hint = __tmp__._1;
                    __tmp__;
                };
            } else if (__value__ == ((12 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L293"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } = { _0 : _j, _1 : (2 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint) };
                    _pivot = __tmp__._0;
                    _hint = __tmp__._1;
                    __tmp__;
                };
            } else {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L295"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } = { _0 : _j, _1 : (0 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint) };
                    _pivot = __tmp__._0;
                    _hint = __tmp__._1;
                    __tmp__;
                };
            };
        };
    }
overload inline extern function _choosePivotOrdered(_data:stdgo.Slice<stdgo.GoInt32>, _a:stdgo.GoInt, _b:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } return _choosePivotOrdered__tp__2(_data, _a, _b);
private function _choosePivotOrdered__tp__3(_data:stdgo.Slice<stdgo.GoInt64>, _a:stdgo.GoInt, _b:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } {
        var _pivot = (0 : stdgo.GoInt), _hint = ((0 : stdgo.GoInt) : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint);
        {};
        var _l = (_b - _a : stdgo.GoInt);
        var _swaps:stdgo.GoInt = (0 : stdgo.GoInt), _swaps__pointer__ = stdgo.Go.pointer(_swaps), _i = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt), _j = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt), _k = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (3 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L278"
        if ((_l >= (8 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L279"
            if ((_l >= (50 : stdgo.GoInt) : Bool)) {
                _i = (stdgo._internal.slices.Slices__medianadjacentordered._medianAdjacentOrdered(_data, _i, _swaps__pointer__) : stdgo.GoInt);
                _j = (stdgo._internal.slices.Slices__medianadjacentordered._medianAdjacentOrdered(_data, _j, _swaps__pointer__) : stdgo.GoInt);
                _k = (stdgo._internal.slices.Slices__medianadjacentordered._medianAdjacentOrdered(_data, _k, _swaps__pointer__) : stdgo.GoInt);
            };
            _j = (stdgo._internal.slices.Slices__medianordered._medianOrdered(_data, _i, _j, _k, _swaps__pointer__) : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L289"
        {
            final __value__ = _swaps;
            if (__value__ == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L291"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } = { _0 : _j, _1 : (1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint) };
                    _pivot = __tmp__._0;
                    _hint = __tmp__._1;
                    __tmp__;
                };
            } else if (__value__ == ((12 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L293"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } = { _0 : _j, _1 : (2 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint) };
                    _pivot = __tmp__._0;
                    _hint = __tmp__._1;
                    __tmp__;
                };
            } else {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L295"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } = { _0 : _j, _1 : (0 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint) };
                    _pivot = __tmp__._0;
                    _hint = __tmp__._1;
                    __tmp__;
                };
            };
        };
    }
overload inline extern function _choosePivotOrdered(_data:stdgo.Slice<stdgo.GoInt64>, _a:stdgo.GoInt, _b:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } return _choosePivotOrdered__tp__3(_data, _a, _b);
private function _choosePivotOrdered__tp__4(_data:stdgo.Slice<stdgo.GoUInt8>, _a:stdgo.GoInt, _b:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } {
        var _pivot = (0 : stdgo.GoInt), _hint = ((0 : stdgo.GoInt) : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint);
        {};
        var _l = (_b - _a : stdgo.GoInt);
        var _swaps:stdgo.GoInt = (0 : stdgo.GoInt), _swaps__pointer__ = stdgo.Go.pointer(_swaps), _i = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt), _j = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt), _k = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (3 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L278"
        if ((_l >= (8 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L279"
            if ((_l >= (50 : stdgo.GoInt) : Bool)) {
                _i = (stdgo._internal.slices.Slices__medianadjacentordered._medianAdjacentOrdered(_data, _i, _swaps__pointer__) : stdgo.GoInt);
                _j = (stdgo._internal.slices.Slices__medianadjacentordered._medianAdjacentOrdered(_data, _j, _swaps__pointer__) : stdgo.GoInt);
                _k = (stdgo._internal.slices.Slices__medianadjacentordered._medianAdjacentOrdered(_data, _k, _swaps__pointer__) : stdgo.GoInt);
            };
            _j = (stdgo._internal.slices.Slices__medianordered._medianOrdered(_data, _i, _j, _k, _swaps__pointer__) : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L289"
        {
            final __value__ = _swaps;
            if (__value__ == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L291"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } = { _0 : _j, _1 : (1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint) };
                    _pivot = __tmp__._0;
                    _hint = __tmp__._1;
                    __tmp__;
                };
            } else if (__value__ == ((12 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L293"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } = { _0 : _j, _1 : (2 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint) };
                    _pivot = __tmp__._0;
                    _hint = __tmp__._1;
                    __tmp__;
                };
            } else {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L295"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } = { _0 : _j, _1 : (0 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint) };
                    _pivot = __tmp__._0;
                    _hint = __tmp__._1;
                    __tmp__;
                };
            };
        };
    }
overload inline extern function _choosePivotOrdered(_data:stdgo.Slice<stdgo.GoUInt8>, _a:stdgo.GoInt, _b:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } return _choosePivotOrdered__tp__4(_data, _a, _b);
private function _choosePivotOrdered__tp__5(_data:stdgo.Slice<stdgo.GoUInt16>, _a:stdgo.GoInt, _b:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } {
        var _pivot = (0 : stdgo.GoInt), _hint = ((0 : stdgo.GoInt) : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint);
        {};
        var _l = (_b - _a : stdgo.GoInt);
        var _swaps:stdgo.GoInt = (0 : stdgo.GoInt), _swaps__pointer__ = stdgo.Go.pointer(_swaps), _i = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt), _j = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt), _k = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (3 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L278"
        if ((_l >= (8 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L279"
            if ((_l >= (50 : stdgo.GoInt) : Bool)) {
                _i = (stdgo._internal.slices.Slices__medianadjacentordered._medianAdjacentOrdered(_data, _i, _swaps__pointer__) : stdgo.GoInt);
                _j = (stdgo._internal.slices.Slices__medianadjacentordered._medianAdjacentOrdered(_data, _j, _swaps__pointer__) : stdgo.GoInt);
                _k = (stdgo._internal.slices.Slices__medianadjacentordered._medianAdjacentOrdered(_data, _k, _swaps__pointer__) : stdgo.GoInt);
            };
            _j = (stdgo._internal.slices.Slices__medianordered._medianOrdered(_data, _i, _j, _k, _swaps__pointer__) : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L289"
        {
            final __value__ = _swaps;
            if (__value__ == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L291"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } = { _0 : _j, _1 : (1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint) };
                    _pivot = __tmp__._0;
                    _hint = __tmp__._1;
                    __tmp__;
                };
            } else if (__value__ == ((12 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L293"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } = { _0 : _j, _1 : (2 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint) };
                    _pivot = __tmp__._0;
                    _hint = __tmp__._1;
                    __tmp__;
                };
            } else {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L295"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } = { _0 : _j, _1 : (0 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint) };
                    _pivot = __tmp__._0;
                    _hint = __tmp__._1;
                    __tmp__;
                };
            };
        };
    }
overload inline extern function _choosePivotOrdered(_data:stdgo.Slice<stdgo.GoUInt16>, _a:stdgo.GoInt, _b:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } return _choosePivotOrdered__tp__5(_data, _a, _b);
private function _choosePivotOrdered__tp__6(_data:stdgo.Slice<stdgo.GoUInt32>, _a:stdgo.GoInt, _b:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } {
        var _pivot = (0 : stdgo.GoInt), _hint = ((0 : stdgo.GoInt) : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint);
        {};
        var _l = (_b - _a : stdgo.GoInt);
        var _swaps:stdgo.GoInt = (0 : stdgo.GoInt), _swaps__pointer__ = stdgo.Go.pointer(_swaps), _i = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt), _j = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt), _k = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (3 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L278"
        if ((_l >= (8 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L279"
            if ((_l >= (50 : stdgo.GoInt) : Bool)) {
                _i = (stdgo._internal.slices.Slices__medianadjacentordered._medianAdjacentOrdered(_data, _i, _swaps__pointer__) : stdgo.GoInt);
                _j = (stdgo._internal.slices.Slices__medianadjacentordered._medianAdjacentOrdered(_data, _j, _swaps__pointer__) : stdgo.GoInt);
                _k = (stdgo._internal.slices.Slices__medianadjacentordered._medianAdjacentOrdered(_data, _k, _swaps__pointer__) : stdgo.GoInt);
            };
            _j = (stdgo._internal.slices.Slices__medianordered._medianOrdered(_data, _i, _j, _k, _swaps__pointer__) : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L289"
        {
            final __value__ = _swaps;
            if (__value__ == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L291"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } = { _0 : _j, _1 : (1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint) };
                    _pivot = __tmp__._0;
                    _hint = __tmp__._1;
                    __tmp__;
                };
            } else if (__value__ == ((12 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L293"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } = { _0 : _j, _1 : (2 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint) };
                    _pivot = __tmp__._0;
                    _hint = __tmp__._1;
                    __tmp__;
                };
            } else {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L295"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } = { _0 : _j, _1 : (0 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint) };
                    _pivot = __tmp__._0;
                    _hint = __tmp__._1;
                    __tmp__;
                };
            };
        };
    }
overload inline extern function _choosePivotOrdered(_data:stdgo.Slice<stdgo.GoUInt32>, _a:stdgo.GoInt, _b:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } return _choosePivotOrdered__tp__6(_data, _a, _b);
private function _choosePivotOrdered__tp__7(_data:stdgo.Slice<stdgo.GoUInt64>, _a:stdgo.GoInt, _b:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } {
        var _pivot = (0 : stdgo.GoInt), _hint = ((0 : stdgo.GoInt) : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint);
        {};
        var _l = (_b - _a : stdgo.GoInt);
        var _swaps:stdgo.GoInt = (0 : stdgo.GoInt), _swaps__pointer__ = stdgo.Go.pointer(_swaps), _i = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt), _j = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt), _k = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (3 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L278"
        if ((_l >= (8 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L279"
            if ((_l >= (50 : stdgo.GoInt) : Bool)) {
                _i = (stdgo._internal.slices.Slices__medianadjacentordered._medianAdjacentOrdered(_data, _i, _swaps__pointer__) : stdgo.GoInt);
                _j = (stdgo._internal.slices.Slices__medianadjacentordered._medianAdjacentOrdered(_data, _j, _swaps__pointer__) : stdgo.GoInt);
                _k = (stdgo._internal.slices.Slices__medianadjacentordered._medianAdjacentOrdered(_data, _k, _swaps__pointer__) : stdgo.GoInt);
            };
            _j = (stdgo._internal.slices.Slices__medianordered._medianOrdered(_data, _i, _j, _k, _swaps__pointer__) : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L289"
        {
            final __value__ = _swaps;
            if (__value__ == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L291"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } = { _0 : _j, _1 : (1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint) };
                    _pivot = __tmp__._0;
                    _hint = __tmp__._1;
                    __tmp__;
                };
            } else if (__value__ == ((12 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L293"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } = { _0 : _j, _1 : (2 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint) };
                    _pivot = __tmp__._0;
                    _hint = __tmp__._1;
                    __tmp__;
                };
            } else {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L295"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } = { _0 : _j, _1 : (0 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint) };
                    _pivot = __tmp__._0;
                    _hint = __tmp__._1;
                    __tmp__;
                };
            };
        };
    }
overload inline extern function _choosePivotOrdered(_data:stdgo.Slice<stdgo.GoUInt64>, _a:stdgo.GoInt, _b:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } return _choosePivotOrdered__tp__7(_data, _a, _b);
private function _choosePivotOrdered__tp__8(_data:stdgo.Slice<stdgo.GoUIntptr>, _a:stdgo.GoInt, _b:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } {
        var _pivot = (0 : stdgo.GoInt), _hint = ((0 : stdgo.GoInt) : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint);
        {};
        var _l = (_b - _a : stdgo.GoInt);
        var _swaps:stdgo.GoInt = (0 : stdgo.GoInt), _swaps__pointer__ = stdgo.Go.pointer(_swaps), _i = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt), _j = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt), _k = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (3 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L278"
        if ((_l >= (8 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L279"
            if ((_l >= (50 : stdgo.GoInt) : Bool)) {
                _i = (stdgo._internal.slices.Slices__medianadjacentordered._medianAdjacentOrdered(_data, _i, _swaps__pointer__) : stdgo.GoInt);
                _j = (stdgo._internal.slices.Slices__medianadjacentordered._medianAdjacentOrdered(_data, _j, _swaps__pointer__) : stdgo.GoInt);
                _k = (stdgo._internal.slices.Slices__medianadjacentordered._medianAdjacentOrdered(_data, _k, _swaps__pointer__) : stdgo.GoInt);
            };
            _j = (stdgo._internal.slices.Slices__medianordered._medianOrdered(_data, _i, _j, _k, _swaps__pointer__) : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L289"
        {
            final __value__ = _swaps;
            if (__value__ == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L291"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } = { _0 : _j, _1 : (1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint) };
                    _pivot = __tmp__._0;
                    _hint = __tmp__._1;
                    __tmp__;
                };
            } else if (__value__ == ((12 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L293"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } = { _0 : _j, _1 : (2 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint) };
                    _pivot = __tmp__._0;
                    _hint = __tmp__._1;
                    __tmp__;
                };
            } else {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L295"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } = { _0 : _j, _1 : (0 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint) };
                    _pivot = __tmp__._0;
                    _hint = __tmp__._1;
                    __tmp__;
                };
            };
        };
    }
overload inline extern function _choosePivotOrdered(_data:stdgo.Slice<stdgo.GoUIntptr>, _a:stdgo.GoInt, _b:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } return _choosePivotOrdered__tp__8(_data, _a, _b);
private function _choosePivotOrdered__tp__9(_data:stdgo.Slice<stdgo.GoFloat32>, _a:stdgo.GoInt, _b:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } {
        var _pivot = (0 : stdgo.GoInt), _hint = ((0 : stdgo.GoInt) : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint);
        {};
        var _l = (_b - _a : stdgo.GoInt);
        var _swaps:stdgo.GoInt = (0 : stdgo.GoInt), _swaps__pointer__ = stdgo.Go.pointer(_swaps), _i = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt), _j = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt), _k = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (3 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L278"
        if ((_l >= (8 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L279"
            if ((_l >= (50 : stdgo.GoInt) : Bool)) {
                _i = (stdgo._internal.slices.Slices__medianadjacentordered._medianAdjacentOrdered(_data, _i, _swaps__pointer__) : stdgo.GoInt);
                _j = (stdgo._internal.slices.Slices__medianadjacentordered._medianAdjacentOrdered(_data, _j, _swaps__pointer__) : stdgo.GoInt);
                _k = (stdgo._internal.slices.Slices__medianadjacentordered._medianAdjacentOrdered(_data, _k, _swaps__pointer__) : stdgo.GoInt);
            };
            _j = (stdgo._internal.slices.Slices__medianordered._medianOrdered(_data, _i, _j, _k, _swaps__pointer__) : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L289"
        {
            final __value__ = _swaps;
            if (__value__ == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L291"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } = { _0 : _j, _1 : (1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint) };
                    _pivot = __tmp__._0;
                    _hint = __tmp__._1;
                    __tmp__;
                };
            } else if (__value__ == ((12 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L293"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } = { _0 : _j, _1 : (2 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint) };
                    _pivot = __tmp__._0;
                    _hint = __tmp__._1;
                    __tmp__;
                };
            } else {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L295"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } = { _0 : _j, _1 : (0 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint) };
                    _pivot = __tmp__._0;
                    _hint = __tmp__._1;
                    __tmp__;
                };
            };
        };
    }
overload inline extern function _choosePivotOrdered(_data:stdgo.Slice<stdgo.GoFloat32>, _a:stdgo.GoInt, _b:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } return _choosePivotOrdered__tp__9(_data, _a, _b);
private function _choosePivotOrdered__tp__10(_data:stdgo.Slice<stdgo.GoFloat64>, _a:stdgo.GoInt, _b:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } {
        var _pivot = (0 : stdgo.GoInt), _hint = ((0 : stdgo.GoInt) : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint);
        {};
        var _l = (_b - _a : stdgo.GoInt);
        var _swaps:stdgo.GoInt = (0 : stdgo.GoInt), _swaps__pointer__ = stdgo.Go.pointer(_swaps), _i = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt), _j = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt), _k = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (3 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L278"
        if ((_l >= (8 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L279"
            if ((_l >= (50 : stdgo.GoInt) : Bool)) {
                _i = (stdgo._internal.slices.Slices__medianadjacentordered._medianAdjacentOrdered(_data, _i, _swaps__pointer__) : stdgo.GoInt);
                _j = (stdgo._internal.slices.Slices__medianadjacentordered._medianAdjacentOrdered(_data, _j, _swaps__pointer__) : stdgo.GoInt);
                _k = (stdgo._internal.slices.Slices__medianadjacentordered._medianAdjacentOrdered(_data, _k, _swaps__pointer__) : stdgo.GoInt);
            };
            _j = (stdgo._internal.slices.Slices__medianordered._medianOrdered(_data, _i, _j, _k, _swaps__pointer__) : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L289"
        {
            final __value__ = _swaps;
            if (__value__ == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L291"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } = { _0 : _j, _1 : (1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint) };
                    _pivot = __tmp__._0;
                    _hint = __tmp__._1;
                    __tmp__;
                };
            } else if (__value__ == ((12 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L293"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } = { _0 : _j, _1 : (2 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint) };
                    _pivot = __tmp__._0;
                    _hint = __tmp__._1;
                    __tmp__;
                };
            } else {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L295"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } = { _0 : _j, _1 : (0 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint) };
                    _pivot = __tmp__._0;
                    _hint = __tmp__._1;
                    __tmp__;
                };
            };
        };
    }
overload inline extern function _choosePivotOrdered(_data:stdgo.Slice<stdgo.GoFloat64>, _a:stdgo.GoInt, _b:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } return _choosePivotOrdered__tp__10(_data, _a, _b);
private function _choosePivotOrdered__tp__11(_data:stdgo.Slice<stdgo.GoString>, _a:stdgo.GoInt, _b:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } {
        var _pivot = (0 : stdgo.GoInt), _hint = ((0 : stdgo.GoInt) : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint);
        {};
        var _l = (_b - _a : stdgo.GoInt);
        var _swaps:stdgo.GoInt = (0 : stdgo.GoInt), _swaps__pointer__ = stdgo.Go.pointer(_swaps), _i = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt), _j = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt), _k = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (3 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L278"
        if ((_l >= (8 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L279"
            if ((_l >= (50 : stdgo.GoInt) : Bool)) {
                _i = (stdgo._internal.slices.Slices__medianadjacentordered._medianAdjacentOrdered(_data, _i, _swaps__pointer__) : stdgo.GoInt);
                _j = (stdgo._internal.slices.Slices__medianadjacentordered._medianAdjacentOrdered(_data, _j, _swaps__pointer__) : stdgo.GoInt);
                _k = (stdgo._internal.slices.Slices__medianadjacentordered._medianAdjacentOrdered(_data, _k, _swaps__pointer__) : stdgo.GoInt);
            };
            _j = (stdgo._internal.slices.Slices__medianordered._medianOrdered(_data, _i, _j, _k, _swaps__pointer__) : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L289"
        {
            final __value__ = _swaps;
            if (__value__ == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L291"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } = { _0 : _j, _1 : (1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint) };
                    _pivot = __tmp__._0;
                    _hint = __tmp__._1;
                    __tmp__;
                };
            } else if (__value__ == ((12 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L293"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } = { _0 : _j, _1 : (2 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint) };
                    _pivot = __tmp__._0;
                    _hint = __tmp__._1;
                    __tmp__;
                };
            } else {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L295"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } = { _0 : _j, _1 : (0 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint) };
                    _pivot = __tmp__._0;
                    _hint = __tmp__._1;
                    __tmp__;
                };
            };
        };
    }
overload inline extern function _choosePivotOrdered(_data:stdgo.Slice<stdgo.GoString>, _a:stdgo.GoInt, _b:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } return _choosePivotOrdered__tp__11(_data, _a, _b);

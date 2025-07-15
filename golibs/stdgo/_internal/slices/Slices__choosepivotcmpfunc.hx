package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function _choosePivotCmpFunc__tp__0<E>(_data:stdgo.Slice<E>, _a:stdgo.GoInt, _b:stdgo.GoInt, _cmp:(E, E) -> stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } {
        var _pivot = (0 : stdgo.GoInt), _hint = ((0 : stdgo.GoInt) : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint);
        {};
        var _l = (_b - _a : stdgo.GoInt);
        var _swaps:stdgo.GoInt = (0 : stdgo.GoInt), _swaps__pointer__ = stdgo.Go.pointer(_swaps), _i = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt), _j = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt), _k = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (3 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L276"
        if ((_l >= (8 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L277"
            if ((_l >= (50 : stdgo.GoInt) : Bool)) {
                _i = (stdgo._internal.slices.Slices__medianadjacentcmpfunc._medianAdjacentCmpFunc(_data, _i, _swaps__pointer__, _cmp) : stdgo.GoInt);
                _j = (stdgo._internal.slices.Slices__medianadjacentcmpfunc._medianAdjacentCmpFunc(_data, _j, _swaps__pointer__, _cmp) : stdgo.GoInt);
                _k = (stdgo._internal.slices.Slices__medianadjacentcmpfunc._medianAdjacentCmpFunc(_data, _k, _swaps__pointer__, _cmp) : stdgo.GoInt);
            };
            _j = (stdgo._internal.slices.Slices__mediancmpfunc._medianCmpFunc(_data, _i, _j, _k, _swaps__pointer__, _cmp) : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L287"
        {
            final __value__ = _swaps;
            if (__value__ == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L289"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } = { _0 : _j, _1 : (1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint) };
                    _pivot = __tmp__._0;
                    _hint = __tmp__._1;
                    __tmp__;
                };
            } else if (__value__ == ((12 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L291"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } = { _0 : _j, _1 : (2 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint) };
                    _pivot = __tmp__._0;
                    _hint = __tmp__._1;
                    __tmp__;
                };
            } else {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L293"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } = { _0 : _j, _1 : (0 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint) };
                    _pivot = __tmp__._0;
                    _hint = __tmp__._1;
                    __tmp__;
                };
            };
        };
    }
overload inline extern function _choosePivotCmpFunc<E>(_data:stdgo.Slice<E>, _a:stdgo.GoInt, _b:stdgo.GoInt, _cmp:(E, E) -> stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; } return _choosePivotCmpFunc__tp__0(_data, _a, _b, _cmp);

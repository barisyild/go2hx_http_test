package stdgo._internal.sort;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.math.bits.Bits;
function _choosePivot(_data:stdgo._internal.sort.Sort_interface.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.sort.Sort_t_sortedhint.T_sortedHint; } {
        var _pivot = (0 : stdgo.GoInt), _hint = ((0 : stdgo.GoInt) : stdgo._internal.sort.Sort_t_sortedhint.T_sortedHint);
        {};
        var _l = @:assignType (_b - _a : stdgo.GoInt);
        var _swaps:stdgo.GoInt = (0 : stdgo.GoInt), _swaps__pointer__ = stdgo.Go.pointer(_swaps), _i = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt), _j = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt), _k = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (3 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L276"
        if ((_l >= (8 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L277"
            if ((_l >= (50 : stdgo.GoInt) : Bool)) {
                _i = stdgo._internal.sort.Sort__medianadjacent._medianAdjacent(_data, _i, _swaps__pointer__);
                _j = stdgo._internal.sort.Sort__medianadjacent._medianAdjacent(_data, _j, _swaps__pointer__);
                _k = stdgo._internal.sort.Sort__medianadjacent._medianAdjacent(_data, _k, _swaps__pointer__);
            };
            _j = stdgo._internal.sort.Sort__median._median(_data, _i, _j, _k, _swaps__pointer__);
        };
        //"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L287"
        {
            final __value__ = _swaps;
            if (__value__ == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L289"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.sort.Sort_t_sortedhint.T_sortedHint; } = { _0 : _j, _1 : (1 : stdgo._internal.sort.Sort_t_sortedhint.T_sortedHint) };
                    _pivot = __tmp__._0;
                    _hint = __tmp__._1;
                    __tmp__;
                };
            } else if (__value__ == ((12 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L291"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.sort.Sort_t_sortedhint.T_sortedHint; } = { _0 : _j, _1 : (2 : stdgo._internal.sort.Sort_t_sortedhint.T_sortedHint) };
                    _pivot = __tmp__._0;
                    _hint = __tmp__._1;
                    __tmp__;
                };
            } else {
                //"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L293"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.sort.Sort_t_sortedhint.T_sortedHint; } = { _0 : _j, _1 : (0 : stdgo._internal.sort.Sort_t_sortedhint.T_sortedHint) };
                    _pivot = __tmp__._0;
                    _hint = __tmp__._1;
                    __tmp__;
                };
            };
        };
    }

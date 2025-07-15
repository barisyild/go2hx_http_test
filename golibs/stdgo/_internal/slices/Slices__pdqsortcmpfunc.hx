package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function _pdqsortCmpFunc__tp__0<E>(_data:stdgo.Slice<E>, _a:stdgo.GoInt, _b:stdgo.GoInt, _limit:stdgo.GoInt, _cmp:(E, E) -> stdgo.GoInt):Void {
        {};
        var _wasBalanced = true, _wasPartitioned = true;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L69"
        while (true) {
            var _length = (_b - _a : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L72"
            if ((_length <= (12 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L73"
                stdgo._internal.slices.Slices__insertionsortcmpfunc._insertionSortCmpFunc(_data, _a, _b, _cmp);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L74"
                return;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L78"
            if (_limit == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L79"
                stdgo._internal.slices.Slices__heapsortcmpfunc._heapSortCmpFunc(_data, _a, _b, _cmp);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L80"
                return;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L84"
            if (!_wasBalanced) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L85"
                stdgo._internal.slices.Slices__breakpatternscmpfunc._breakPatternsCmpFunc(_data, _a, _b, _cmp);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L86"
                _limit--;
            };
            var __tmp__ = (stdgo._internal.slices.Slices__choosepivotcmpfunc._choosePivotCmpFunc(_data, _a, _b, _cmp) : { var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; }), _pivot:stdgo.GoInt = __tmp__._0, _hint:stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L90"
            if (_hint == ((2 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint))) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L91"
                stdgo._internal.slices.Slices__reverserangecmpfunc._reverseRangeCmpFunc(_data, _a, _b, _cmp);
                _pivot = (((_b - (1 : stdgo.GoInt) : stdgo.GoInt)) - ((_pivot - _a : stdgo.GoInt)) : stdgo.GoInt);
                _hint = (1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint);
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L100"
            if (((_wasBalanced && _wasPartitioned : Bool) && (_hint == (1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L101"
                if ((stdgo._internal.slices.Slices__partialinsertionsortcmpfunc._partialInsertionSortCmpFunc(_data, _a, _b, _cmp) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L102"
                    return;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L108"
            if (((_a > (0 : stdgo.GoInt) : Bool) && !((_cmp(_data[(_a - (1 : stdgo.GoInt) : stdgo.GoInt)], _data[(_pivot : stdgo.GoInt)]) < (0 : stdgo.GoInt) : Bool)) : Bool)) {
                var _mid = (stdgo._internal.slices.Slices__partitionequalcmpfunc._partitionEqualCmpFunc(_data, _a, _b, _pivot, _cmp) : stdgo.GoInt);
                _a = _mid;
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L111"
                continue;
            };
            var __tmp__ = (stdgo._internal.slices.Slices__partitioncmpfunc._partitionCmpFunc(_data, _a, _b, _pivot, _cmp) : { var _0 : stdgo.GoInt; var _1 : Bool; }), _mid:stdgo.GoInt = __tmp__._0, _alreadyPartitioned:Bool = __tmp__._1;
            _wasPartitioned = _alreadyPartitioned;
            var __0 = (_mid - _a : stdgo.GoInt), __1 = (_b - _mid : stdgo.GoInt);
var _rightLen = __1, _leftLen = __0;
            var _balanceThreshold = (_length / (8 : stdgo.GoInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L119"
            if ((_leftLen < _rightLen : Bool)) {
                _wasBalanced = (_leftLen >= _balanceThreshold : Bool);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L121"
                stdgo._internal.slices.Slices__pdqsortcmpfunc._pdqsortCmpFunc(_data, _a, _mid, _limit, _cmp);
                _a = (_mid + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _wasBalanced = (_rightLen >= _balanceThreshold : Bool);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L125"
                stdgo._internal.slices.Slices__pdqsortcmpfunc._pdqsortCmpFunc(_data, (_mid + (1 : stdgo.GoInt) : stdgo.GoInt), _b, _limit, _cmp);
                _b = _mid;
            };
        };
    }
overload inline extern function _pdqsortCmpFunc<E>(_data:stdgo.Slice<E>, _a:stdgo.GoInt, _b:stdgo.GoInt, _limit:stdgo.GoInt, _cmp:(E, E) -> stdgo.GoInt):Void _pdqsortCmpFunc__tp__0(_data, _a, _b, _limit, _cmp);

package stdgo._internal.sort;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.math.bits.Bits;
function _pdqsort_func(_data:stdgo._internal.sort.Sort_t_lessswap.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _limit:stdgo.GoInt):Void {
        {};
        var _wasBalanced = true, _wasPartitioned = true;
        //"file:///Users/o/.go/go1.21.3/src/sort/zsortfunc.go#L69"
        while (true) {
            var _length = @:assignType (_b - _a : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/sort/zsortfunc.go#L72"
            if ((_length <= (12 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/sort/zsortfunc.go#L73"
                stdgo._internal.sort.Sort__insertionsort_func._insertionSort_func(_data?.__copy__(), _a, _b);
                //"file:///Users/o/.go/go1.21.3/src/sort/zsortfunc.go#L74"
                return;
            };
            //"file:///Users/o/.go/go1.21.3/src/sort/zsortfunc.go#L78"
            if (_limit == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/sort/zsortfunc.go#L79"
                stdgo._internal.sort.Sort__heapsort_func._heapSort_func(_data?.__copy__(), _a, _b);
                //"file:///Users/o/.go/go1.21.3/src/sort/zsortfunc.go#L80"
                return;
            };
            //"file:///Users/o/.go/go1.21.3/src/sort/zsortfunc.go#L84"
            if (!_wasBalanced) {
                //"file:///Users/o/.go/go1.21.3/src/sort/zsortfunc.go#L85"
                stdgo._internal.sort.Sort__breakpatterns_func._breakPatterns_func(_data?.__copy__(), _a, _b);
                //"file:///Users/o/.go/go1.21.3/src/sort/zsortfunc.go#L86"
                _limit--;
            };
            var __tmp__ = stdgo._internal.sort.Sort__choosepivot_func._choosePivot_func(_data?.__copy__(), _a, _b), _pivot:stdgo.GoInt = __tmp__._0, _hint:stdgo._internal.sort.Sort_t_sortedhint.T_sortedHint = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/sort/zsortfunc.go#L90"
            if (_hint == ((2 : stdgo._internal.sort.Sort_t_sortedhint.T_sortedHint))) {
                //"file:///Users/o/.go/go1.21.3/src/sort/zsortfunc.go#L91"
                stdgo._internal.sort.Sort__reverserange_func._reverseRange_func(_data?.__copy__(), _a, _b);
                _pivot = (((_b - (1 : stdgo.GoInt) : stdgo.GoInt)) - ((_pivot - _a : stdgo.GoInt)) : stdgo.GoInt);
                _hint = (1 : stdgo._internal.sort.Sort_t_sortedhint.T_sortedHint);
            };
            //"file:///Users/o/.go/go1.21.3/src/sort/zsortfunc.go#L100"
            if (((_wasBalanced && _wasPartitioned : Bool) && (_hint == (1 : stdgo._internal.sort.Sort_t_sortedhint.T_sortedHint)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/sort/zsortfunc.go#L101"
                if (stdgo._internal.sort.Sort__partialinsertionsort_func._partialInsertionSort_func(_data?.__copy__(), _a, _b)) {
                    //"file:///Users/o/.go/go1.21.3/src/sort/zsortfunc.go#L102"
                    return;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/sort/zsortfunc.go#L108"
            if (((_a > (0 : stdgo.GoInt) : Bool) && !_data.less((_a - (1 : stdgo.GoInt) : stdgo.GoInt), _pivot) : Bool)) {
                var _mid = @:assignType (stdgo._internal.sort.Sort__partitionequal_func._partitionEqual_func(_data?.__copy__(), _a, _b, _pivot) : stdgo.GoInt);
                _a = _mid;
                //"file:///Users/o/.go/go1.21.3/src/sort/zsortfunc.go#L111"
                continue;
            };
            var __tmp__ = stdgo._internal.sort.Sort__partition_func._partition_func(_data?.__copy__(), _a, _b, _pivot), _mid:stdgo.GoInt = __tmp__._0, _alreadyPartitioned:Bool = __tmp__._1;
            _wasPartitioned = _alreadyPartitioned;
            var __0 = @:assignType (_mid - _a : stdgo.GoInt), __1 = @:assignType (_b - _mid : stdgo.GoInt);
var _rightLen = __1, _leftLen = __0;
            var _balanceThreshold = @:assignType (_length / (8 : stdgo.GoInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/sort/zsortfunc.go#L119"
            if ((_leftLen < _rightLen : Bool)) {
                _wasBalanced = (_leftLen >= _balanceThreshold : Bool);
                //"file:///Users/o/.go/go1.21.3/src/sort/zsortfunc.go#L121"
                stdgo._internal.sort.Sort__pdqsort_func._pdqsort_func(_data?.__copy__(), _a, _mid, _limit);
                _a = (_mid + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _wasBalanced = (_rightLen >= _balanceThreshold : Bool);
                //"file:///Users/o/.go/go1.21.3/src/sort/zsortfunc.go#L125"
                stdgo._internal.sort.Sort__pdqsort_func._pdqsort_func(_data?.__copy__(), (_mid + (1 : stdgo.GoInt) : stdgo.GoInt), _b, _limit);
                _b = _mid;
            };
        };
    }

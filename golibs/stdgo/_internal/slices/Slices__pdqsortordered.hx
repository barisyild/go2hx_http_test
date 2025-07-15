package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function _pdqsortOrdered__tp__0(_data:stdgo.Slice<stdgo.GoInt8>, _a:stdgo.GoInt, _b:stdgo.GoInt, _limit:stdgo.GoInt):Void {
        {};
        var _wasBalanced = true, _wasPartitioned = true;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L71"
        while (true) {
            var _length = (_b - _a : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L74"
            if ((_length <= (12 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L75"
                stdgo._internal.slices.Slices__insertionsortordered._insertionSortOrdered(_data, _a, _b);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L76"
                return;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L80"
            if (_limit == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L81"
                stdgo._internal.slices.Slices__heapsortordered._heapSortOrdered(_data, _a, _b);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L82"
                return;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L86"
            if (!_wasBalanced) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L87"
                stdgo._internal.slices.Slices__breakpatternsordered._breakPatternsOrdered(_data, _a, _b);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L88"
                _limit--;
            };
            var __tmp__ = (stdgo._internal.slices.Slices__choosepivotordered._choosePivotOrdered(_data, _a, _b) : { var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; }), _pivot:stdgo.GoInt = __tmp__._0, _hint:stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L92"
            if (_hint == ((2 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint))) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L93"
                stdgo._internal.slices.Slices__reverserangeordered._reverseRangeOrdered(_data, _a, _b);
                _pivot = (((_b - (1 : stdgo.GoInt) : stdgo.GoInt)) - ((_pivot - _a : stdgo.GoInt)) : stdgo.GoInt);
                _hint = (1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint);
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L102"
            if (((_wasBalanced && _wasPartitioned : Bool) && (_hint == (1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L103"
                if ((stdgo._internal.slices.Slices__partialinsertionsortordered._partialInsertionSortOrdered(_data, _a, _b) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L104"
                    return;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L110"
            if (((_a > (0 : stdgo.GoInt) : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_a - (1 : stdgo.GoInt) : stdgo.GoInt)], _data[(_pivot : stdgo.GoInt)]) : Bool) : Bool)) {
                var _mid = (stdgo._internal.slices.Slices__partitionequalordered._partitionEqualOrdered(_data, _a, _b, _pivot) : stdgo.GoInt);
                _a = _mid;
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L113"
                continue;
            };
            var __tmp__ = (stdgo._internal.slices.Slices__partitionordered._partitionOrdered(_data, _a, _b, _pivot) : { var _0 : stdgo.GoInt; var _1 : Bool; }), _mid:stdgo.GoInt = __tmp__._0, _alreadyPartitioned:Bool = __tmp__._1;
            _wasPartitioned = _alreadyPartitioned;
            var __0 = (_mid - _a : stdgo.GoInt), __1 = (_b - _mid : stdgo.GoInt);
var _rightLen = __1, _leftLen = __0;
            var _balanceThreshold = (_length / (8 : stdgo.GoInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L121"
            if ((_leftLen < _rightLen : Bool)) {
                _wasBalanced = (_leftLen >= _balanceThreshold : Bool);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L123"
                stdgo._internal.slices.Slices__pdqsortordered._pdqsortOrdered(_data, _a, _mid, _limit);
                _a = (_mid + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _wasBalanced = (_rightLen >= _balanceThreshold : Bool);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L127"
                stdgo._internal.slices.Slices__pdqsortordered._pdqsortOrdered(_data, (_mid + (1 : stdgo.GoInt) : stdgo.GoInt), _b, _limit);
                _b = _mid;
            };
        };
    }
overload inline extern function _pdqsortOrdered(_data:stdgo.Slice<stdgo.GoInt8>, _a:stdgo.GoInt, _b:stdgo.GoInt, _limit:stdgo.GoInt):Void _pdqsortOrdered__tp__0(_data, _a, _b, _limit);
private function _pdqsortOrdered__tp__1(_data:stdgo.Slice<stdgo.GoInt16>, _a:stdgo.GoInt, _b:stdgo.GoInt, _limit:stdgo.GoInt):Void {
        {};
        var _wasBalanced = true, _wasPartitioned = true;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L71"
        while (true) {
            var _length = (_b - _a : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L74"
            if ((_length <= (12 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L75"
                stdgo._internal.slices.Slices__insertionsortordered._insertionSortOrdered(_data, _a, _b);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L76"
                return;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L80"
            if (_limit == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L81"
                stdgo._internal.slices.Slices__heapsortordered._heapSortOrdered(_data, _a, _b);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L82"
                return;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L86"
            if (!_wasBalanced) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L87"
                stdgo._internal.slices.Slices__breakpatternsordered._breakPatternsOrdered(_data, _a, _b);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L88"
                _limit--;
            };
            var __tmp__ = (stdgo._internal.slices.Slices__choosepivotordered._choosePivotOrdered(_data, _a, _b) : { var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; }), _pivot:stdgo.GoInt = __tmp__._0, _hint:stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L92"
            if (_hint == ((2 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint))) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L93"
                stdgo._internal.slices.Slices__reverserangeordered._reverseRangeOrdered(_data, _a, _b);
                _pivot = (((_b - (1 : stdgo.GoInt) : stdgo.GoInt)) - ((_pivot - _a : stdgo.GoInt)) : stdgo.GoInt);
                _hint = (1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint);
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L102"
            if (((_wasBalanced && _wasPartitioned : Bool) && (_hint == (1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L103"
                if ((stdgo._internal.slices.Slices__partialinsertionsortordered._partialInsertionSortOrdered(_data, _a, _b) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L104"
                    return;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L110"
            if (((_a > (0 : stdgo.GoInt) : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_a - (1 : stdgo.GoInt) : stdgo.GoInt)], _data[(_pivot : stdgo.GoInt)]) : Bool) : Bool)) {
                var _mid = (stdgo._internal.slices.Slices__partitionequalordered._partitionEqualOrdered(_data, _a, _b, _pivot) : stdgo.GoInt);
                _a = _mid;
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L113"
                continue;
            };
            var __tmp__ = (stdgo._internal.slices.Slices__partitionordered._partitionOrdered(_data, _a, _b, _pivot) : { var _0 : stdgo.GoInt; var _1 : Bool; }), _mid:stdgo.GoInt = __tmp__._0, _alreadyPartitioned:Bool = __tmp__._1;
            _wasPartitioned = _alreadyPartitioned;
            var __0 = (_mid - _a : stdgo.GoInt), __1 = (_b - _mid : stdgo.GoInt);
var _rightLen = __1, _leftLen = __0;
            var _balanceThreshold = (_length / (8 : stdgo.GoInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L121"
            if ((_leftLen < _rightLen : Bool)) {
                _wasBalanced = (_leftLen >= _balanceThreshold : Bool);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L123"
                stdgo._internal.slices.Slices__pdqsortordered._pdqsortOrdered(_data, _a, _mid, _limit);
                _a = (_mid + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _wasBalanced = (_rightLen >= _balanceThreshold : Bool);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L127"
                stdgo._internal.slices.Slices__pdqsortordered._pdqsortOrdered(_data, (_mid + (1 : stdgo.GoInt) : stdgo.GoInt), _b, _limit);
                _b = _mid;
            };
        };
    }
overload inline extern function _pdqsortOrdered(_data:stdgo.Slice<stdgo.GoInt16>, _a:stdgo.GoInt, _b:stdgo.GoInt, _limit:stdgo.GoInt):Void _pdqsortOrdered__tp__1(_data, _a, _b, _limit);
private function _pdqsortOrdered__tp__2(_data:stdgo.Slice<stdgo.GoInt32>, _a:stdgo.GoInt, _b:stdgo.GoInt, _limit:stdgo.GoInt):Void {
        {};
        var _wasBalanced = true, _wasPartitioned = true;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L71"
        while (true) {
            var _length = (_b - _a : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L74"
            if ((_length <= (12 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L75"
                stdgo._internal.slices.Slices__insertionsortordered._insertionSortOrdered(_data, _a, _b);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L76"
                return;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L80"
            if (_limit == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L81"
                stdgo._internal.slices.Slices__heapsortordered._heapSortOrdered(_data, _a, _b);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L82"
                return;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L86"
            if (!_wasBalanced) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L87"
                stdgo._internal.slices.Slices__breakpatternsordered._breakPatternsOrdered(_data, _a, _b);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L88"
                _limit--;
            };
            var __tmp__ = (stdgo._internal.slices.Slices__choosepivotordered._choosePivotOrdered(_data, _a, _b) : { var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; }), _pivot:stdgo.GoInt = __tmp__._0, _hint:stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L92"
            if (_hint == ((2 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint))) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L93"
                stdgo._internal.slices.Slices__reverserangeordered._reverseRangeOrdered(_data, _a, _b);
                _pivot = (((_b - (1 : stdgo.GoInt) : stdgo.GoInt)) - ((_pivot - _a : stdgo.GoInt)) : stdgo.GoInt);
                _hint = (1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint);
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L102"
            if (((_wasBalanced && _wasPartitioned : Bool) && (_hint == (1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L103"
                if ((stdgo._internal.slices.Slices__partialinsertionsortordered._partialInsertionSortOrdered(_data, _a, _b) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L104"
                    return;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L110"
            if (((_a > (0 : stdgo.GoInt) : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_a - (1 : stdgo.GoInt) : stdgo.GoInt)], _data[(_pivot : stdgo.GoInt)]) : Bool) : Bool)) {
                var _mid = (stdgo._internal.slices.Slices__partitionequalordered._partitionEqualOrdered(_data, _a, _b, _pivot) : stdgo.GoInt);
                _a = _mid;
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L113"
                continue;
            };
            var __tmp__ = (stdgo._internal.slices.Slices__partitionordered._partitionOrdered(_data, _a, _b, _pivot) : { var _0 : stdgo.GoInt; var _1 : Bool; }), _mid:stdgo.GoInt = __tmp__._0, _alreadyPartitioned:Bool = __tmp__._1;
            _wasPartitioned = _alreadyPartitioned;
            var __0 = (_mid - _a : stdgo.GoInt), __1 = (_b - _mid : stdgo.GoInt);
var _rightLen = __1, _leftLen = __0;
            var _balanceThreshold = (_length / (8 : stdgo.GoInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L121"
            if ((_leftLen < _rightLen : Bool)) {
                _wasBalanced = (_leftLen >= _balanceThreshold : Bool);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L123"
                stdgo._internal.slices.Slices__pdqsortordered._pdqsortOrdered(_data, _a, _mid, _limit);
                _a = (_mid + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _wasBalanced = (_rightLen >= _balanceThreshold : Bool);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L127"
                stdgo._internal.slices.Slices__pdqsortordered._pdqsortOrdered(_data, (_mid + (1 : stdgo.GoInt) : stdgo.GoInt), _b, _limit);
                _b = _mid;
            };
        };
    }
overload inline extern function _pdqsortOrdered(_data:stdgo.Slice<stdgo.GoInt32>, _a:stdgo.GoInt, _b:stdgo.GoInt, _limit:stdgo.GoInt):Void _pdqsortOrdered__tp__2(_data, _a, _b, _limit);
private function _pdqsortOrdered__tp__3(_data:stdgo.Slice<stdgo.GoInt64>, _a:stdgo.GoInt, _b:stdgo.GoInt, _limit:stdgo.GoInt):Void {
        {};
        var _wasBalanced = true, _wasPartitioned = true;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L71"
        while (true) {
            var _length = (_b - _a : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L74"
            if ((_length <= (12 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L75"
                stdgo._internal.slices.Slices__insertionsortordered._insertionSortOrdered(_data, _a, _b);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L76"
                return;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L80"
            if (_limit == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L81"
                stdgo._internal.slices.Slices__heapsortordered._heapSortOrdered(_data, _a, _b);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L82"
                return;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L86"
            if (!_wasBalanced) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L87"
                stdgo._internal.slices.Slices__breakpatternsordered._breakPatternsOrdered(_data, _a, _b);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L88"
                _limit--;
            };
            var __tmp__ = (stdgo._internal.slices.Slices__choosepivotordered._choosePivotOrdered(_data, _a, _b) : { var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; }), _pivot:stdgo.GoInt = __tmp__._0, _hint:stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L92"
            if (_hint == ((2 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint))) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L93"
                stdgo._internal.slices.Slices__reverserangeordered._reverseRangeOrdered(_data, _a, _b);
                _pivot = (((_b - (1 : stdgo.GoInt) : stdgo.GoInt)) - ((_pivot - _a : stdgo.GoInt)) : stdgo.GoInt);
                _hint = (1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint);
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L102"
            if (((_wasBalanced && _wasPartitioned : Bool) && (_hint == (1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L103"
                if ((stdgo._internal.slices.Slices__partialinsertionsortordered._partialInsertionSortOrdered(_data, _a, _b) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L104"
                    return;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L110"
            if (((_a > (0 : stdgo.GoInt) : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_a - (1 : stdgo.GoInt) : stdgo.GoInt)], _data[(_pivot : stdgo.GoInt)]) : Bool) : Bool)) {
                var _mid = (stdgo._internal.slices.Slices__partitionequalordered._partitionEqualOrdered(_data, _a, _b, _pivot) : stdgo.GoInt);
                _a = _mid;
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L113"
                continue;
            };
            var __tmp__ = (stdgo._internal.slices.Slices__partitionordered._partitionOrdered(_data, _a, _b, _pivot) : { var _0 : stdgo.GoInt; var _1 : Bool; }), _mid:stdgo.GoInt = __tmp__._0, _alreadyPartitioned:Bool = __tmp__._1;
            _wasPartitioned = _alreadyPartitioned;
            var __0 = (_mid - _a : stdgo.GoInt), __1 = (_b - _mid : stdgo.GoInt);
var _rightLen = __1, _leftLen = __0;
            var _balanceThreshold = (_length / (8 : stdgo.GoInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L121"
            if ((_leftLen < _rightLen : Bool)) {
                _wasBalanced = (_leftLen >= _balanceThreshold : Bool);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L123"
                stdgo._internal.slices.Slices__pdqsortordered._pdqsortOrdered(_data, _a, _mid, _limit);
                _a = (_mid + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _wasBalanced = (_rightLen >= _balanceThreshold : Bool);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L127"
                stdgo._internal.slices.Slices__pdqsortordered._pdqsortOrdered(_data, (_mid + (1 : stdgo.GoInt) : stdgo.GoInt), _b, _limit);
                _b = _mid;
            };
        };
    }
overload inline extern function _pdqsortOrdered(_data:stdgo.Slice<stdgo.GoInt64>, _a:stdgo.GoInt, _b:stdgo.GoInt, _limit:stdgo.GoInt):Void _pdqsortOrdered__tp__3(_data, _a, _b, _limit);
private function _pdqsortOrdered__tp__4(_data:stdgo.Slice<stdgo.GoUInt8>, _a:stdgo.GoInt, _b:stdgo.GoInt, _limit:stdgo.GoInt):Void {
        {};
        var _wasBalanced = true, _wasPartitioned = true;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L71"
        while (true) {
            var _length = (_b - _a : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L74"
            if ((_length <= (12 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L75"
                stdgo._internal.slices.Slices__insertionsortordered._insertionSortOrdered(_data, _a, _b);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L76"
                return;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L80"
            if (_limit == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L81"
                stdgo._internal.slices.Slices__heapsortordered._heapSortOrdered(_data, _a, _b);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L82"
                return;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L86"
            if (!_wasBalanced) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L87"
                stdgo._internal.slices.Slices__breakpatternsordered._breakPatternsOrdered(_data, _a, _b);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L88"
                _limit--;
            };
            var __tmp__ = (stdgo._internal.slices.Slices__choosepivotordered._choosePivotOrdered(_data, _a, _b) : { var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; }), _pivot:stdgo.GoInt = __tmp__._0, _hint:stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L92"
            if (_hint == ((2 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint))) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L93"
                stdgo._internal.slices.Slices__reverserangeordered._reverseRangeOrdered(_data, _a, _b);
                _pivot = (((_b - (1 : stdgo.GoInt) : stdgo.GoInt)) - ((_pivot - _a : stdgo.GoInt)) : stdgo.GoInt);
                _hint = (1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint);
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L102"
            if (((_wasBalanced && _wasPartitioned : Bool) && (_hint == (1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L103"
                if ((stdgo._internal.slices.Slices__partialinsertionsortordered._partialInsertionSortOrdered(_data, _a, _b) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L104"
                    return;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L110"
            if (((_a > (0 : stdgo.GoInt) : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_a - (1 : stdgo.GoInt) : stdgo.GoInt)], _data[(_pivot : stdgo.GoInt)]) : Bool) : Bool)) {
                var _mid = (stdgo._internal.slices.Slices__partitionequalordered._partitionEqualOrdered(_data, _a, _b, _pivot) : stdgo.GoInt);
                _a = _mid;
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L113"
                continue;
            };
            var __tmp__ = (stdgo._internal.slices.Slices__partitionordered._partitionOrdered(_data, _a, _b, _pivot) : { var _0 : stdgo.GoInt; var _1 : Bool; }), _mid:stdgo.GoInt = __tmp__._0, _alreadyPartitioned:Bool = __tmp__._1;
            _wasPartitioned = _alreadyPartitioned;
            var __0 = (_mid - _a : stdgo.GoInt), __1 = (_b - _mid : stdgo.GoInt);
var _rightLen = __1, _leftLen = __0;
            var _balanceThreshold = (_length / (8 : stdgo.GoInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L121"
            if ((_leftLen < _rightLen : Bool)) {
                _wasBalanced = (_leftLen >= _balanceThreshold : Bool);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L123"
                stdgo._internal.slices.Slices__pdqsortordered._pdqsortOrdered(_data, _a, _mid, _limit);
                _a = (_mid + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _wasBalanced = (_rightLen >= _balanceThreshold : Bool);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L127"
                stdgo._internal.slices.Slices__pdqsortordered._pdqsortOrdered(_data, (_mid + (1 : stdgo.GoInt) : stdgo.GoInt), _b, _limit);
                _b = _mid;
            };
        };
    }
overload inline extern function _pdqsortOrdered(_data:stdgo.Slice<stdgo.GoUInt8>, _a:stdgo.GoInt, _b:stdgo.GoInt, _limit:stdgo.GoInt):Void _pdqsortOrdered__tp__4(_data, _a, _b, _limit);
private function _pdqsortOrdered__tp__5(_data:stdgo.Slice<stdgo.GoUInt16>, _a:stdgo.GoInt, _b:stdgo.GoInt, _limit:stdgo.GoInt):Void {
        {};
        var _wasBalanced = true, _wasPartitioned = true;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L71"
        while (true) {
            var _length = (_b - _a : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L74"
            if ((_length <= (12 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L75"
                stdgo._internal.slices.Slices__insertionsortordered._insertionSortOrdered(_data, _a, _b);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L76"
                return;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L80"
            if (_limit == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L81"
                stdgo._internal.slices.Slices__heapsortordered._heapSortOrdered(_data, _a, _b);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L82"
                return;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L86"
            if (!_wasBalanced) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L87"
                stdgo._internal.slices.Slices__breakpatternsordered._breakPatternsOrdered(_data, _a, _b);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L88"
                _limit--;
            };
            var __tmp__ = (stdgo._internal.slices.Slices__choosepivotordered._choosePivotOrdered(_data, _a, _b) : { var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; }), _pivot:stdgo.GoInt = __tmp__._0, _hint:stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L92"
            if (_hint == ((2 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint))) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L93"
                stdgo._internal.slices.Slices__reverserangeordered._reverseRangeOrdered(_data, _a, _b);
                _pivot = (((_b - (1 : stdgo.GoInt) : stdgo.GoInt)) - ((_pivot - _a : stdgo.GoInt)) : stdgo.GoInt);
                _hint = (1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint);
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L102"
            if (((_wasBalanced && _wasPartitioned : Bool) && (_hint == (1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L103"
                if ((stdgo._internal.slices.Slices__partialinsertionsortordered._partialInsertionSortOrdered(_data, _a, _b) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L104"
                    return;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L110"
            if (((_a > (0 : stdgo.GoInt) : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_a - (1 : stdgo.GoInt) : stdgo.GoInt)], _data[(_pivot : stdgo.GoInt)]) : Bool) : Bool)) {
                var _mid = (stdgo._internal.slices.Slices__partitionequalordered._partitionEqualOrdered(_data, _a, _b, _pivot) : stdgo.GoInt);
                _a = _mid;
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L113"
                continue;
            };
            var __tmp__ = (stdgo._internal.slices.Slices__partitionordered._partitionOrdered(_data, _a, _b, _pivot) : { var _0 : stdgo.GoInt; var _1 : Bool; }), _mid:stdgo.GoInt = __tmp__._0, _alreadyPartitioned:Bool = __tmp__._1;
            _wasPartitioned = _alreadyPartitioned;
            var __0 = (_mid - _a : stdgo.GoInt), __1 = (_b - _mid : stdgo.GoInt);
var _rightLen = __1, _leftLen = __0;
            var _balanceThreshold = (_length / (8 : stdgo.GoInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L121"
            if ((_leftLen < _rightLen : Bool)) {
                _wasBalanced = (_leftLen >= _balanceThreshold : Bool);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L123"
                stdgo._internal.slices.Slices__pdqsortordered._pdqsortOrdered(_data, _a, _mid, _limit);
                _a = (_mid + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _wasBalanced = (_rightLen >= _balanceThreshold : Bool);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L127"
                stdgo._internal.slices.Slices__pdqsortordered._pdqsortOrdered(_data, (_mid + (1 : stdgo.GoInt) : stdgo.GoInt), _b, _limit);
                _b = _mid;
            };
        };
    }
overload inline extern function _pdqsortOrdered(_data:stdgo.Slice<stdgo.GoUInt16>, _a:stdgo.GoInt, _b:stdgo.GoInt, _limit:stdgo.GoInt):Void _pdqsortOrdered__tp__5(_data, _a, _b, _limit);
private function _pdqsortOrdered__tp__6(_data:stdgo.Slice<stdgo.GoUInt32>, _a:stdgo.GoInt, _b:stdgo.GoInt, _limit:stdgo.GoInt):Void {
        {};
        var _wasBalanced = true, _wasPartitioned = true;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L71"
        while (true) {
            var _length = (_b - _a : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L74"
            if ((_length <= (12 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L75"
                stdgo._internal.slices.Slices__insertionsortordered._insertionSortOrdered(_data, _a, _b);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L76"
                return;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L80"
            if (_limit == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L81"
                stdgo._internal.slices.Slices__heapsortordered._heapSortOrdered(_data, _a, _b);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L82"
                return;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L86"
            if (!_wasBalanced) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L87"
                stdgo._internal.slices.Slices__breakpatternsordered._breakPatternsOrdered(_data, _a, _b);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L88"
                _limit--;
            };
            var __tmp__ = (stdgo._internal.slices.Slices__choosepivotordered._choosePivotOrdered(_data, _a, _b) : { var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; }), _pivot:stdgo.GoInt = __tmp__._0, _hint:stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L92"
            if (_hint == ((2 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint))) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L93"
                stdgo._internal.slices.Slices__reverserangeordered._reverseRangeOrdered(_data, _a, _b);
                _pivot = (((_b - (1 : stdgo.GoInt) : stdgo.GoInt)) - ((_pivot - _a : stdgo.GoInt)) : stdgo.GoInt);
                _hint = (1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint);
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L102"
            if (((_wasBalanced && _wasPartitioned : Bool) && (_hint == (1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L103"
                if ((stdgo._internal.slices.Slices__partialinsertionsortordered._partialInsertionSortOrdered(_data, _a, _b) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L104"
                    return;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L110"
            if (((_a > (0 : stdgo.GoInt) : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_a - (1 : stdgo.GoInt) : stdgo.GoInt)], _data[(_pivot : stdgo.GoInt)]) : Bool) : Bool)) {
                var _mid = (stdgo._internal.slices.Slices__partitionequalordered._partitionEqualOrdered(_data, _a, _b, _pivot) : stdgo.GoInt);
                _a = _mid;
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L113"
                continue;
            };
            var __tmp__ = (stdgo._internal.slices.Slices__partitionordered._partitionOrdered(_data, _a, _b, _pivot) : { var _0 : stdgo.GoInt; var _1 : Bool; }), _mid:stdgo.GoInt = __tmp__._0, _alreadyPartitioned:Bool = __tmp__._1;
            _wasPartitioned = _alreadyPartitioned;
            var __0 = (_mid - _a : stdgo.GoInt), __1 = (_b - _mid : stdgo.GoInt);
var _rightLen = __1, _leftLen = __0;
            var _balanceThreshold = (_length / (8 : stdgo.GoInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L121"
            if ((_leftLen < _rightLen : Bool)) {
                _wasBalanced = (_leftLen >= _balanceThreshold : Bool);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L123"
                stdgo._internal.slices.Slices__pdqsortordered._pdqsortOrdered(_data, _a, _mid, _limit);
                _a = (_mid + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _wasBalanced = (_rightLen >= _balanceThreshold : Bool);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L127"
                stdgo._internal.slices.Slices__pdqsortordered._pdqsortOrdered(_data, (_mid + (1 : stdgo.GoInt) : stdgo.GoInt), _b, _limit);
                _b = _mid;
            };
        };
    }
overload inline extern function _pdqsortOrdered(_data:stdgo.Slice<stdgo.GoUInt32>, _a:stdgo.GoInt, _b:stdgo.GoInt, _limit:stdgo.GoInt):Void _pdqsortOrdered__tp__6(_data, _a, _b, _limit);
private function _pdqsortOrdered__tp__7(_data:stdgo.Slice<stdgo.GoUInt64>, _a:stdgo.GoInt, _b:stdgo.GoInt, _limit:stdgo.GoInt):Void {
        {};
        var _wasBalanced = true, _wasPartitioned = true;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L71"
        while (true) {
            var _length = (_b - _a : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L74"
            if ((_length <= (12 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L75"
                stdgo._internal.slices.Slices__insertionsortordered._insertionSortOrdered(_data, _a, _b);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L76"
                return;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L80"
            if (_limit == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L81"
                stdgo._internal.slices.Slices__heapsortordered._heapSortOrdered(_data, _a, _b);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L82"
                return;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L86"
            if (!_wasBalanced) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L87"
                stdgo._internal.slices.Slices__breakpatternsordered._breakPatternsOrdered(_data, _a, _b);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L88"
                _limit--;
            };
            var __tmp__ = (stdgo._internal.slices.Slices__choosepivotordered._choosePivotOrdered(_data, _a, _b) : { var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; }), _pivot:stdgo.GoInt = __tmp__._0, _hint:stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L92"
            if (_hint == ((2 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint))) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L93"
                stdgo._internal.slices.Slices__reverserangeordered._reverseRangeOrdered(_data, _a, _b);
                _pivot = (((_b - (1 : stdgo.GoInt) : stdgo.GoInt)) - ((_pivot - _a : stdgo.GoInt)) : stdgo.GoInt);
                _hint = (1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint);
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L102"
            if (((_wasBalanced && _wasPartitioned : Bool) && (_hint == (1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L103"
                if ((stdgo._internal.slices.Slices__partialinsertionsortordered._partialInsertionSortOrdered(_data, _a, _b) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L104"
                    return;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L110"
            if (((_a > (0 : stdgo.GoInt) : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_a - (1 : stdgo.GoInt) : stdgo.GoInt)], _data[(_pivot : stdgo.GoInt)]) : Bool) : Bool)) {
                var _mid = (stdgo._internal.slices.Slices__partitionequalordered._partitionEqualOrdered(_data, _a, _b, _pivot) : stdgo.GoInt);
                _a = _mid;
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L113"
                continue;
            };
            var __tmp__ = (stdgo._internal.slices.Slices__partitionordered._partitionOrdered(_data, _a, _b, _pivot) : { var _0 : stdgo.GoInt; var _1 : Bool; }), _mid:stdgo.GoInt = __tmp__._0, _alreadyPartitioned:Bool = __tmp__._1;
            _wasPartitioned = _alreadyPartitioned;
            var __0 = (_mid - _a : stdgo.GoInt), __1 = (_b - _mid : stdgo.GoInt);
var _rightLen = __1, _leftLen = __0;
            var _balanceThreshold = (_length / (8 : stdgo.GoInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L121"
            if ((_leftLen < _rightLen : Bool)) {
                _wasBalanced = (_leftLen >= _balanceThreshold : Bool);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L123"
                stdgo._internal.slices.Slices__pdqsortordered._pdqsortOrdered(_data, _a, _mid, _limit);
                _a = (_mid + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _wasBalanced = (_rightLen >= _balanceThreshold : Bool);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L127"
                stdgo._internal.slices.Slices__pdqsortordered._pdqsortOrdered(_data, (_mid + (1 : stdgo.GoInt) : stdgo.GoInt), _b, _limit);
                _b = _mid;
            };
        };
    }
overload inline extern function _pdqsortOrdered(_data:stdgo.Slice<stdgo.GoUInt64>, _a:stdgo.GoInt, _b:stdgo.GoInt, _limit:stdgo.GoInt):Void _pdqsortOrdered__tp__7(_data, _a, _b, _limit);
private function _pdqsortOrdered__tp__8(_data:stdgo.Slice<stdgo.GoUIntptr>, _a:stdgo.GoInt, _b:stdgo.GoInt, _limit:stdgo.GoInt):Void {
        {};
        var _wasBalanced = true, _wasPartitioned = true;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L71"
        while (true) {
            var _length = (_b - _a : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L74"
            if ((_length <= (12 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L75"
                stdgo._internal.slices.Slices__insertionsortordered._insertionSortOrdered(_data, _a, _b);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L76"
                return;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L80"
            if (_limit == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L81"
                stdgo._internal.slices.Slices__heapsortordered._heapSortOrdered(_data, _a, _b);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L82"
                return;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L86"
            if (!_wasBalanced) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L87"
                stdgo._internal.slices.Slices__breakpatternsordered._breakPatternsOrdered(_data, _a, _b);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L88"
                _limit--;
            };
            var __tmp__ = (stdgo._internal.slices.Slices__choosepivotordered._choosePivotOrdered(_data, _a, _b) : { var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; }), _pivot:stdgo.GoInt = __tmp__._0, _hint:stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L92"
            if (_hint == ((2 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint))) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L93"
                stdgo._internal.slices.Slices__reverserangeordered._reverseRangeOrdered(_data, _a, _b);
                _pivot = (((_b - (1 : stdgo.GoInt) : stdgo.GoInt)) - ((_pivot - _a : stdgo.GoInt)) : stdgo.GoInt);
                _hint = (1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint);
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L102"
            if (((_wasBalanced && _wasPartitioned : Bool) && (_hint == (1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L103"
                if ((stdgo._internal.slices.Slices__partialinsertionsortordered._partialInsertionSortOrdered(_data, _a, _b) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L104"
                    return;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L110"
            if (((_a > (0 : stdgo.GoInt) : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_a - (1 : stdgo.GoInt) : stdgo.GoInt)], _data[(_pivot : stdgo.GoInt)]) : Bool) : Bool)) {
                var _mid = (stdgo._internal.slices.Slices__partitionequalordered._partitionEqualOrdered(_data, _a, _b, _pivot) : stdgo.GoInt);
                _a = _mid;
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L113"
                continue;
            };
            var __tmp__ = (stdgo._internal.slices.Slices__partitionordered._partitionOrdered(_data, _a, _b, _pivot) : { var _0 : stdgo.GoInt; var _1 : Bool; }), _mid:stdgo.GoInt = __tmp__._0, _alreadyPartitioned:Bool = __tmp__._1;
            _wasPartitioned = _alreadyPartitioned;
            var __0 = (_mid - _a : stdgo.GoInt), __1 = (_b - _mid : stdgo.GoInt);
var _rightLen = __1, _leftLen = __0;
            var _balanceThreshold = (_length / (8 : stdgo.GoInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L121"
            if ((_leftLen < _rightLen : Bool)) {
                _wasBalanced = (_leftLen >= _balanceThreshold : Bool);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L123"
                stdgo._internal.slices.Slices__pdqsortordered._pdqsortOrdered(_data, _a, _mid, _limit);
                _a = (_mid + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _wasBalanced = (_rightLen >= _balanceThreshold : Bool);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L127"
                stdgo._internal.slices.Slices__pdqsortordered._pdqsortOrdered(_data, (_mid + (1 : stdgo.GoInt) : stdgo.GoInt), _b, _limit);
                _b = _mid;
            };
        };
    }
overload inline extern function _pdqsortOrdered(_data:stdgo.Slice<stdgo.GoUIntptr>, _a:stdgo.GoInt, _b:stdgo.GoInt, _limit:stdgo.GoInt):Void _pdqsortOrdered__tp__8(_data, _a, _b, _limit);
private function _pdqsortOrdered__tp__9(_data:stdgo.Slice<stdgo.GoFloat32>, _a:stdgo.GoInt, _b:stdgo.GoInt, _limit:stdgo.GoInt):Void {
        {};
        var _wasBalanced = true, _wasPartitioned = true;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L71"
        while (true) {
            var _length = (_b - _a : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L74"
            if ((_length <= (12 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L75"
                stdgo._internal.slices.Slices__insertionsortordered._insertionSortOrdered(_data, _a, _b);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L76"
                return;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L80"
            if (_limit == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L81"
                stdgo._internal.slices.Slices__heapsortordered._heapSortOrdered(_data, _a, _b);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L82"
                return;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L86"
            if (!_wasBalanced) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L87"
                stdgo._internal.slices.Slices__breakpatternsordered._breakPatternsOrdered(_data, _a, _b);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L88"
                _limit--;
            };
            var __tmp__ = (stdgo._internal.slices.Slices__choosepivotordered._choosePivotOrdered(_data, _a, _b) : { var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; }), _pivot:stdgo.GoInt = __tmp__._0, _hint:stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L92"
            if (_hint == ((2 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint))) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L93"
                stdgo._internal.slices.Slices__reverserangeordered._reverseRangeOrdered(_data, _a, _b);
                _pivot = (((_b - (1 : stdgo.GoInt) : stdgo.GoInt)) - ((_pivot - _a : stdgo.GoInt)) : stdgo.GoInt);
                _hint = (1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint);
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L102"
            if (((_wasBalanced && _wasPartitioned : Bool) && (_hint == (1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L103"
                if ((stdgo._internal.slices.Slices__partialinsertionsortordered._partialInsertionSortOrdered(_data, _a, _b) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L104"
                    return;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L110"
            if (((_a > (0 : stdgo.GoInt) : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_a - (1 : stdgo.GoInt) : stdgo.GoInt)], _data[(_pivot : stdgo.GoInt)]) : Bool) : Bool)) {
                var _mid = (stdgo._internal.slices.Slices__partitionequalordered._partitionEqualOrdered(_data, _a, _b, _pivot) : stdgo.GoInt);
                _a = _mid;
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L113"
                continue;
            };
            var __tmp__ = (stdgo._internal.slices.Slices__partitionordered._partitionOrdered(_data, _a, _b, _pivot) : { var _0 : stdgo.GoInt; var _1 : Bool; }), _mid:stdgo.GoInt = __tmp__._0, _alreadyPartitioned:Bool = __tmp__._1;
            _wasPartitioned = _alreadyPartitioned;
            var __0 = (_mid - _a : stdgo.GoInt), __1 = (_b - _mid : stdgo.GoInt);
var _rightLen = __1, _leftLen = __0;
            var _balanceThreshold = (_length / (8 : stdgo.GoInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L121"
            if ((_leftLen < _rightLen : Bool)) {
                _wasBalanced = (_leftLen >= _balanceThreshold : Bool);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L123"
                stdgo._internal.slices.Slices__pdqsortordered._pdqsortOrdered(_data, _a, _mid, _limit);
                _a = (_mid + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _wasBalanced = (_rightLen >= _balanceThreshold : Bool);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L127"
                stdgo._internal.slices.Slices__pdqsortordered._pdqsortOrdered(_data, (_mid + (1 : stdgo.GoInt) : stdgo.GoInt), _b, _limit);
                _b = _mid;
            };
        };
    }
overload inline extern function _pdqsortOrdered(_data:stdgo.Slice<stdgo.GoFloat32>, _a:stdgo.GoInt, _b:stdgo.GoInt, _limit:stdgo.GoInt):Void _pdqsortOrdered__tp__9(_data, _a, _b, _limit);
private function _pdqsortOrdered__tp__10(_data:stdgo.Slice<stdgo.GoFloat64>, _a:stdgo.GoInt, _b:stdgo.GoInt, _limit:stdgo.GoInt):Void {
        {};
        var _wasBalanced = true, _wasPartitioned = true;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L71"
        while (true) {
            var _length = (_b - _a : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L74"
            if ((_length <= (12 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L75"
                stdgo._internal.slices.Slices__insertionsortordered._insertionSortOrdered(_data, _a, _b);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L76"
                return;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L80"
            if (_limit == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L81"
                stdgo._internal.slices.Slices__heapsortordered._heapSortOrdered(_data, _a, _b);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L82"
                return;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L86"
            if (!_wasBalanced) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L87"
                stdgo._internal.slices.Slices__breakpatternsordered._breakPatternsOrdered(_data, _a, _b);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L88"
                _limit--;
            };
            var __tmp__ = (stdgo._internal.slices.Slices__choosepivotordered._choosePivotOrdered(_data, _a, _b) : { var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; }), _pivot:stdgo.GoInt = __tmp__._0, _hint:stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L92"
            if (_hint == ((2 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint))) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L93"
                stdgo._internal.slices.Slices__reverserangeordered._reverseRangeOrdered(_data, _a, _b);
                _pivot = (((_b - (1 : stdgo.GoInt) : stdgo.GoInt)) - ((_pivot - _a : stdgo.GoInt)) : stdgo.GoInt);
                _hint = (1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint);
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L102"
            if (((_wasBalanced && _wasPartitioned : Bool) && (_hint == (1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L103"
                if ((stdgo._internal.slices.Slices__partialinsertionsortordered._partialInsertionSortOrdered(_data, _a, _b) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L104"
                    return;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L110"
            if (((_a > (0 : stdgo.GoInt) : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_a - (1 : stdgo.GoInt) : stdgo.GoInt)], _data[(_pivot : stdgo.GoInt)]) : Bool) : Bool)) {
                var _mid = (stdgo._internal.slices.Slices__partitionequalordered._partitionEqualOrdered(_data, _a, _b, _pivot) : stdgo.GoInt);
                _a = _mid;
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L113"
                continue;
            };
            var __tmp__ = (stdgo._internal.slices.Slices__partitionordered._partitionOrdered(_data, _a, _b, _pivot) : { var _0 : stdgo.GoInt; var _1 : Bool; }), _mid:stdgo.GoInt = __tmp__._0, _alreadyPartitioned:Bool = __tmp__._1;
            _wasPartitioned = _alreadyPartitioned;
            var __0 = (_mid - _a : stdgo.GoInt), __1 = (_b - _mid : stdgo.GoInt);
var _rightLen = __1, _leftLen = __0;
            var _balanceThreshold = (_length / (8 : stdgo.GoInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L121"
            if ((_leftLen < _rightLen : Bool)) {
                _wasBalanced = (_leftLen >= _balanceThreshold : Bool);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L123"
                stdgo._internal.slices.Slices__pdqsortordered._pdqsortOrdered(_data, _a, _mid, _limit);
                _a = (_mid + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _wasBalanced = (_rightLen >= _balanceThreshold : Bool);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L127"
                stdgo._internal.slices.Slices__pdqsortordered._pdqsortOrdered(_data, (_mid + (1 : stdgo.GoInt) : stdgo.GoInt), _b, _limit);
                _b = _mid;
            };
        };
    }
overload inline extern function _pdqsortOrdered(_data:stdgo.Slice<stdgo.GoFloat64>, _a:stdgo.GoInt, _b:stdgo.GoInt, _limit:stdgo.GoInt):Void _pdqsortOrdered__tp__10(_data, _a, _b, _limit);
private function _pdqsortOrdered__tp__11(_data:stdgo.Slice<stdgo.GoString>, _a:stdgo.GoInt, _b:stdgo.GoInt, _limit:stdgo.GoInt):Void {
        {};
        var _wasBalanced = true, _wasPartitioned = true;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L71"
        while (true) {
            var _length = (_b - _a : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L74"
            if ((_length <= (12 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L75"
                stdgo._internal.slices.Slices__insertionsortordered._insertionSortOrdered(_data, _a, _b);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L76"
                return;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L80"
            if (_limit == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L81"
                stdgo._internal.slices.Slices__heapsortordered._heapSortOrdered(_data, _a, _b);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L82"
                return;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L86"
            if (!_wasBalanced) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L87"
                stdgo._internal.slices.Slices__breakpatternsordered._breakPatternsOrdered(_data, _a, _b);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L88"
                _limit--;
            };
            var __tmp__ = (stdgo._internal.slices.Slices__choosepivotordered._choosePivotOrdered(_data, _a, _b) : { var _0 : stdgo.GoInt; var _1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint; }), _pivot:stdgo.GoInt = __tmp__._0, _hint:stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L92"
            if (_hint == ((2 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint))) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L93"
                stdgo._internal.slices.Slices__reverserangeordered._reverseRangeOrdered(_data, _a, _b);
                _pivot = (((_b - (1 : stdgo.GoInt) : stdgo.GoInt)) - ((_pivot - _a : stdgo.GoInt)) : stdgo.GoInt);
                _hint = (1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint);
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L102"
            if (((_wasBalanced && _wasPartitioned : Bool) && (_hint == (1 : stdgo._internal.slices.Slices_t_sortedhint.T_sortedHint)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L103"
                if ((stdgo._internal.slices.Slices__partialinsertionsortordered._partialInsertionSortOrdered(_data, _a, _b) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L104"
                    return;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L110"
            if (((_a > (0 : stdgo.GoInt) : Bool) && !(stdgo._internal.cmp.Cmp_less.less(_data[(_a - (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__(), _data[(_pivot : stdgo.GoInt)]?.__copy__()) : Bool) : Bool)) {
                var _mid = (stdgo._internal.slices.Slices__partitionequalordered._partitionEqualOrdered(_data, _a, _b, _pivot) : stdgo.GoInt);
                _a = _mid;
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L113"
                continue;
            };
            var __tmp__ = (stdgo._internal.slices.Slices__partitionordered._partitionOrdered(_data, _a, _b, _pivot) : { var _0 : stdgo.GoInt; var _1 : Bool; }), _mid:stdgo.GoInt = __tmp__._0, _alreadyPartitioned:Bool = __tmp__._1;
            _wasPartitioned = _alreadyPartitioned;
            var __0 = (_mid - _a : stdgo.GoInt), __1 = (_b - _mid : stdgo.GoInt);
var _rightLen = __1, _leftLen = __0;
            var _balanceThreshold = (_length / (8 : stdgo.GoInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L121"
            if ((_leftLen < _rightLen : Bool)) {
                _wasBalanced = (_leftLen >= _balanceThreshold : Bool);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L123"
                stdgo._internal.slices.Slices__pdqsortordered._pdqsortOrdered(_data, _a, _mid, _limit);
                _a = (_mid + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _wasBalanced = (_rightLen >= _balanceThreshold : Bool);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L127"
                stdgo._internal.slices.Slices__pdqsortordered._pdqsortOrdered(_data, (_mid + (1 : stdgo.GoInt) : stdgo.GoInt), _b, _limit);
                _b = _mid;
            };
        };
    }
overload inline extern function _pdqsortOrdered(_data:stdgo.Slice<stdgo.GoString>, _a:stdgo.GoInt, _b:stdgo.GoInt, _limit:stdgo.GoInt):Void _pdqsortOrdered__tp__11(_data, _a, _b, _limit);

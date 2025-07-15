package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function _stableCmpFunc__tp__0<E>(_data:stdgo.Slice<E>, _n:stdgo.GoInt, _cmp:(E, E) -> stdgo.GoInt):Void {
        var _blockSize = (20 : stdgo.GoInt);
        var __0 = (0 : stdgo.GoInt), __1 = (_blockSize : stdgo.GoInt);
var _b = __1, _a = __0;
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L338"
        while ((_b <= _n : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L339"
            stdgo._internal.slices.Slices__insertionsortcmpfunc._insertionSortCmpFunc(_data, _a, _b, _cmp);
            _a = _b;
            _b = (_b + (_blockSize) : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L343"
        stdgo._internal.slices.Slices__insertionsortcmpfunc._insertionSortCmpFunc(_data, _a, _n, _cmp);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L345"
        while ((_blockSize < _n : Bool)) {
            {
                final __tmp__0 = (0 : stdgo.GoInt);
                final __tmp__1 = ((2 : stdgo.GoInt) * _blockSize : stdgo.GoInt);
                _a = @:binopAssign __tmp__0;
                _b = @:binopAssign __tmp__1;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L347"
            while ((_b <= _n : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L348"
                stdgo._internal.slices.Slices__symmergecmpfunc._symMergeCmpFunc(_data, _a, (_a + _blockSize : stdgo.GoInt), _b, _cmp);
                _a = _b;
                _b = (_b + (((2 : stdgo.GoInt) * _blockSize : stdgo.GoInt)) : stdgo.GoInt);
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L352"
            {
                var _m = (_a + _blockSize : stdgo.GoInt);
                if ((_m < _n : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L353"
                    stdgo._internal.slices.Slices__symmergecmpfunc._symMergeCmpFunc(_data, _a, _m, _n, _cmp);
                };
            };
            _blockSize = (_blockSize * ((2 : stdgo.GoInt)) : stdgo.GoInt);
        };
    }
overload inline extern function _stableCmpFunc<E>(_data:stdgo.Slice<E>, _n:stdgo.GoInt, _cmp:(E, E) -> stdgo.GoInt):Void _stableCmpFunc__tp__0(_data, _n, _cmp);

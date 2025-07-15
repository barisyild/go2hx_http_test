package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function reverse__tp__0<E>(_s:stdgo.Slice<E>):Void {
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L495"
        {
            var __0 = (0 : stdgo.GoInt), __1 = ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
var _j = __1, _i = __0;
            while ((_i < _j : Bool)) {
                {
                    final __tmp__0 = _s[(_j : stdgo.GoInt)];
                    final __tmp__1 = _s[(_i : stdgo.GoInt)];
                    final __tmp__2 = _s;
                    final __tmp__3 = (_i : stdgo.GoInt);
                    final __tmp__4 = _s;
                    final __tmp__5 = (_j : stdgo.GoInt);
                    __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                    __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                };
                {
                    final __tmp__0 = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                    final __tmp__1 = (_j - (1 : stdgo.GoInt) : stdgo.GoInt);
                    _i = @:binopAssign __tmp__0;
                    _j = @:binopAssign __tmp__1;
                };
            };
        };
    }
overload inline extern function reverse<E>(_s:stdgo.Slice<E>):Void reverse__tp__0(_s);

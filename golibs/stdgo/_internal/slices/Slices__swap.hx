package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function _swap__tp__0<E>(_x:stdgo.Slice<E>, _y:stdgo.Slice<E>):Void {
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L460"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_x.length) : Bool)) {
                {
                    final __tmp__0 = _y[(_i : stdgo.GoInt)];
                    final __tmp__1 = _x[(_i : stdgo.GoInt)];
                    final __tmp__2 = _x;
                    final __tmp__3 = (_i : stdgo.GoInt);
                    final __tmp__4 = _y;
                    final __tmp__5 = (_i : stdgo.GoInt);
                    __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                    __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                };
                _i++;
            };
        };
    }
overload inline extern function _swap<E>(_x:stdgo.Slice<E>, _y:stdgo.Slice<E>):Void _swap__tp__0(_x, _y);

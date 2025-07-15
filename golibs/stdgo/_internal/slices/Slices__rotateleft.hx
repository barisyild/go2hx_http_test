package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function _rotateLeft__tp__0<E>(_s:stdgo.Slice<E>, _r:stdgo.GoInt):Void {
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L444"
        while (((_r != (0 : stdgo.GoInt)) && (_r != (_s.length)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L445"
            if (((_r * (2 : stdgo.GoInt) : stdgo.GoInt) <= (_s.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L446"
                stdgo._internal.slices.Slices__swap._swap((_s.__slice__(0, _r) : stdgo.Slice<E>), (_s.__slice__(((_s.length) - _r : stdgo.GoInt)) : stdgo.Slice<E>));
                _s = (_s.__slice__(0, ((_s.length) - _r : stdgo.GoInt)) : stdgo.Slice<E>);
            } else {
                //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L449"
                stdgo._internal.slices.Slices__swap._swap((_s.__slice__(0, ((_s.length) - _r : stdgo.GoInt)) : stdgo.Slice<E>), (_s.__slice__(_r) : stdgo.Slice<E>));
                {
                    final __tmp__0 = (_s.__slice__(((_s.length) - _r : stdgo.GoInt)) : stdgo.Slice<E>);
                    final __tmp__1 = ((_r * (2 : stdgo.GoInt) : stdgo.GoInt) - (_s.length) : stdgo.GoInt);
                    _s = @:binopAssign __tmp__0;
                    _r = @:binopAssign __tmp__1;
                };
            };
        };
    }
overload inline extern function _rotateLeft<E>(_s:stdgo.Slice<E>, _r:stdgo.GoInt):Void _rotateLeft__tp__0(_s, _r);

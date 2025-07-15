package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function _rotateRight__tp__0<E>(_s:stdgo.Slice<E>, _r:stdgo.GoInt):Void {
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L455"
        stdgo._internal.slices.Slices__rotateleft._rotateLeft(_s, ((_s.length) - _r : stdgo.GoInt));
    }
overload inline extern function _rotateRight<E>(_s:stdgo.Slice<E>, _r:stdgo.GoInt):Void _rotateRight__tp__0(_s, _r);

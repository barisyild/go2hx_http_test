package stdgo._internal.math.rand;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.math.Math;
function shuffle(_n:stdgo.GoInt, _swap:(stdgo.GoInt, stdgo.GoInt) -> Void):Void {
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L470"
        stdgo._internal.math.rand.Rand__globalrand._globalRand().shuffle(_n, _swap);
    }

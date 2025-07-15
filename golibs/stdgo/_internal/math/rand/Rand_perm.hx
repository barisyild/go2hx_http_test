package stdgo._internal.math.rand;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.math.Math;
function perm(_n:stdgo.GoInt):stdgo.Slice<stdgo.GoInt> {
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L465"
        return stdgo._internal.math.rand.Rand__globalrand._globalRand().perm(_n);
    }

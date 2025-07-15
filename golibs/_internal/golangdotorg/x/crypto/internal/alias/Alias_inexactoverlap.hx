package _internal.golangdotorg.x.crypto.internal.alias;
import stdgo._internal.reflect.Reflect;
function inexactOverlap(_x:stdgo.Slice<stdgo.GoUInt8>, _y:stdgo.Slice<stdgo.GoUInt8>):Bool {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/internal/alias/alias_purego.go#L31"
        if ((((_x.length) == ((0 : stdgo.GoInt)) || (_y.length) == ((0 : stdgo.GoInt)) : Bool) || (stdgo.Go.pointer(_x[(0 : stdgo.GoInt)]) == stdgo.Go.pointer(_y[(0 : stdgo.GoInt)])) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/internal/alias/alias_purego.go#L32"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/internal/alias/alias_purego.go#L34"
        return _internal.golangdotorg.x.crypto.internal.alias.Alias_anyoverlap.anyOverlap(_x, _y);
    }

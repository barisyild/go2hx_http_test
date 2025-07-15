package _internal.golangdotorg.x.crypto.internal.poly1305;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.encoding.binary.Binary;
function _bitsMul64(_x:stdgo.GoUInt64, _y:stdgo.GoUInt64):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; } {
        var _hi = (0 : stdgo.GoUInt64), _lo = (0 : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/internal/poly1305/bits_go1.13.go#L21"
        return stdgo._internal.math.bits.Bits_mul64.mul64(_x, _y);
    }

package _internal.golangdotorg.x.crypto.internal.poly1305;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.encoding.binary.Binary;
function _select64(_v:stdgo.GoUInt64, _x:stdgo.GoUInt64, _y:stdgo.GoUInt64):stdgo.GoUInt64 {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/internal/poly1305/sum_generic.go#L270"
        return (((-1 ^ (_v - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) & _x : stdgo.GoUInt64) | (((_v - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) & _y : stdgo.GoUInt64) : stdgo.GoUInt64);
    }

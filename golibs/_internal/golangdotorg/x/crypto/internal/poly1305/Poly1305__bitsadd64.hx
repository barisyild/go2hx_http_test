package _internal.golangdotorg.x.crypto.internal.poly1305;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.encoding.binary.Binary;
function _bitsAdd64(_x:stdgo.GoUInt64, _y:stdgo.GoUInt64, _carry:stdgo.GoUInt64):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; } {
        var _sum = (0 : stdgo.GoUInt64), _carryOut = (0 : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/internal/poly1305/bits_go1.13.go#L13"
        return stdgo._internal.math.bits.Bits_add64.add64(_x, _y, _carry);
    }

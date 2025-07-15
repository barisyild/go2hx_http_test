package _internal.golangdotorg.x.crypto.internal.poly1305;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.encoding.binary.Binary;
function _mul64(_a:stdgo.GoUInt64, _b:stdgo.GoUInt64):_internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_t_uint128.T_uint128 {
        var __tmp__ = _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305__bitsmul64._bitsMul64(_a, _b), _hi:stdgo.GoUInt64 = __tmp__._0, _lo:stdgo.GoUInt64 = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/internal/poly1305/sum_generic.go#L118"
        return (new _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_t_uint128.T_uint128(_lo, _hi) : _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_t_uint128.T_uint128);
    }

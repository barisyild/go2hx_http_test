package _internal.golangdotorg.x.crypto.internal.poly1305;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.encoding.binary.Binary;
function _shiftRightBy2(_a:_internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_t_uint128.T_uint128):_internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_t_uint128.T_uint128 {
        _a._lo = ((_a._lo >> (2i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | (((_a._hi & (3i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) << (62i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        _a._hi = (_a._hi >> (2i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/internal/poly1305/sum_generic.go#L133"
        return _a?.__copy__();
    }

package _internal.golangdotorg.x.crypto.internal.poly1305;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.encoding.binary.Binary;
function _add128(_a:_internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_t_uint128.T_uint128, _b:_internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_t_uint128.T_uint128):_internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_t_uint128.T_uint128 {
        var __tmp__ = _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305__bitsadd64._bitsAdd64(_a._lo, _b._lo, (0i64 : stdgo.GoUInt64)), _lo:stdgo.GoUInt64 = __tmp__._0, _c:stdgo.GoUInt64 = __tmp__._1;
        var __tmp__ = _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305__bitsadd64._bitsAdd64(_a._hi, _b._hi, _c), _hi:stdgo.GoUInt64 = __tmp__._0, _c:stdgo.GoUInt64 = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/internal/poly1305/sum_generic.go#L124"
        if (_c != ((0i64 : stdgo.GoUInt64))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/internal/poly1305/sum_generic.go#L125"
            throw new stdgo.AnyInterface(("poly1305: unexpected overflow" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/internal/poly1305/sum_generic.go#L127"
        return (new _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_t_uint128.T_uint128(_lo, _hi) : _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_t_uint128.T_uint128);
    }

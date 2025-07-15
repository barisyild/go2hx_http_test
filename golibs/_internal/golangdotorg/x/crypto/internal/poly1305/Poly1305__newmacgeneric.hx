package _internal.golangdotorg.x.crypto.internal.poly1305;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.encoding.binary.Binary;
function _newMACGeneric(_key:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):_internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_t_macgeneric.T_macGeneric {
        var _m = @:assignType (new _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_t_macgeneric.T_macGeneric() : _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_t_macgeneric.T_macGeneric);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/internal/poly1305/sum_generic.go#L36"
        _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305__initialize._initialize(_key, (stdgo.Go.setRef(_m._macState, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotinternaldotpoly1305dotpoly1305_t_macstatedott_macstate.__type___internaldotgolangdotorgdotxdotcryptodotinternaldotpoly1305dotPoly1305_t_macstatedotT_macState })) : stdgo.Ref<_internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_t_macstate.T_macState>));
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/internal/poly1305/sum_generic.go#L37"
        return _m?.__copy__();
    }

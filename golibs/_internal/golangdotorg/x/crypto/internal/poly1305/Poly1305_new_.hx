package _internal.golangdotorg.x.crypto.internal.poly1305;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.encoding.binary.Binary;
function new_(_key:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):stdgo.Ref<_internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_mac.MAC> {
        var _m = (stdgo.Go.setRef((new _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_mac.MAC() : _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_mac.MAC), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotinternaldotpoly1305dotpoly1305_macdotmac.__type___internaldotgolangdotorgdotxdotcryptodotinternaldotpoly1305dotPoly1305_macdotMAC })) : stdgo.Ref<_internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_mac.MAC>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/internal/poly1305/poly1305.go#L52"
        _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305__initialize._initialize(_key, (stdgo.Go.setRef((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mac._macGeneric._macState, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotinternaldotpoly1305dotpoly1305_t_macstatedott_macstate.__type___internaldotgolangdotorgdotxdotcryptodotinternaldotpoly1305dotPoly1305_t_macstatedotT_macState })) : stdgo.Ref<_internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_t_macstate.T_macState>));
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/internal/poly1305/poly1305.go#L53"
        return _m;
    }

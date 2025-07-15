package _internal.golangdotorg.x.crypto.internal.poly1305;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.encoding.binary.Binary;
function _sumGeneric(_out:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>, _msg:stdgo.Slice<stdgo.GoUInt8>, _key:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):Void {
        var _h = @:assignType (_internal.golangdotorg.x.crypto.internal.poly1305.Poly1305__newmacgeneric._newMACGeneric(_key)?.__copy__() : _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_t_macgeneric.T_macGeneric);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/internal/poly1305/sum_generic.go#L30"
        _h.write(_msg);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/internal/poly1305/sum_generic.go#L31"
        _h.sum(_out);
    }

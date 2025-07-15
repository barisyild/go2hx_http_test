package _internal.golangdotorg.x.crypto.internal.poly1305;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.encoding.binary.Binary;
function sum(_out:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>, _m:stdgo.Slice<stdgo.GoUInt8>, _key:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):Void {
        var _h = _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_new_.new_(_key);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/internal/poly1305/poly1305.go#L30"
        _h.write(_m);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/internal/poly1305/poly1305.go#L31"
        _h.sum((_out.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
    }

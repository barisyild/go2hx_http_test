package _internal.golangdotorg.x.crypto.internal.poly1305;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.encoding.binary.Binary;
function verify(_mac:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>, _m:stdgo.Slice<stdgo.GoUInt8>, _key:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):Bool {
        var _tmp:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16).__setNumber32__();
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/internal/poly1305/poly1305.go#L37"
        _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_sum.sum((stdgo.Go.setRef(_tmp, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 16) })) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>), _m, _key);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/internal/poly1305/poly1305.go#L38"
        return stdgo._internal.crypto.subtle.Subtle_constanttimecompare.constantTimeCompare((_tmp.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_mac.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)) == ((1 : stdgo.GoInt));
    }

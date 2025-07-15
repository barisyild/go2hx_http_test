package _internal.golangdotorg.x.crypto.chacha20poly1305;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import _internal.golangdotorg.x.crypto.internal.alias.Alias;
import _internal.golangdotorg.x.crypto.chacha20.Chacha20;
import _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305;
function _writeUint64(_p:stdgo.Ref<_internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_mac.MAC>, _n:stdgo.GoInt):Void {
        var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(8, 8).__setNumber32__();
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/chacha20poly1305_generic.go#L26"
        stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.putUint64((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_n : stdgo.GoUInt64));
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/chacha20poly1305_generic.go#L27"
        _p.write((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
    }

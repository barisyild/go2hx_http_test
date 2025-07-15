package stdgo._internal.crypto.sha512;
import stdgo._internal.crypto.Crypto;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
function sum512_256(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8> {
        var _d = @:assignType ({ _function : (15u32 : stdgo._internal.crypto.Crypto_hash.Hash) } : stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest);
        //"file:///Users/o/.go/go1.21.3/src/crypto/sha512/sha512.go#L379"
        _d.reset();
        //"file:///Users/o/.go/go1.21.3/src/crypto/sha512/sha512.go#L380"
        _d.write(_data);
        var _sum = _d._checkSum()?.__copy__();
        var _ap = ((_sum.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/sha512/sha512.go#L383"
        return (_ap : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__();
    }

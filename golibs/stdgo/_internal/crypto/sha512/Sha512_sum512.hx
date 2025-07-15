package stdgo._internal.crypto.sha512;
import stdgo._internal.crypto.Crypto;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
function sum512(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8> {
        //"file:///Users/o/.go/go1.21.3/src/crypto/sha512/sha512.go#L344"
        if (false) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/sha512/sha512.go#L345"
            return stdgo._internal.crypto.internal.boring.Boring_sha512.sHA512(_data)?.__copy__();
        };
        var _d = @:assignType ({ _function : (7u32 : stdgo._internal.crypto.Crypto_hash.Hash) } : stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest);
        //"file:///Users/o/.go/go1.21.3/src/crypto/sha512/sha512.go#L348"
        _d.reset();
        //"file:///Users/o/.go/go1.21.3/src/crypto/sha512/sha512.go#L349"
        _d.write(_data);
        //"file:///Users/o/.go/go1.21.3/src/crypto/sha512/sha512.go#L350"
        return _d._checkSum()?.__copy__();
    }

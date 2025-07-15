package stdgo._internal.crypto.sha256;
import stdgo._internal.crypto.Crypto;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.errors.Errors;
function sum256(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8> {
        //"file:///Users/o/.go/go1.21.3/src/crypto/sha256/sha256.go#L254"
        if (false) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/sha256/sha256.go#L255"
            return stdgo._internal.crypto.internal.boring.Boring_sha256.sHA256(_data)?.__copy__();
        };
        var _d:stdgo._internal.crypto.sha256.Sha256_t_digest.T_digest = ({} : stdgo._internal.crypto.sha256.Sha256_t_digest.T_digest);
        //"file:///Users/o/.go/go1.21.3/src/crypto/sha256/sha256.go#L258"
        _d.reset();
        //"file:///Users/o/.go/go1.21.3/src/crypto/sha256/sha256.go#L259"
        _d.write(_data);
        //"file:///Users/o/.go/go1.21.3/src/crypto/sha256/sha256.go#L260"
        return _d._checkSum()?.__copy__();
    }

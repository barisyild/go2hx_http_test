package stdgo._internal.crypto.sha256;
import stdgo._internal.crypto.Crypto;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.errors.Errors;
function sum224(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8> {
        //"file:///Users/o/.go/go1.21.3/src/crypto/sha256/sha256.go#L265"
        if (false) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/sha256/sha256.go#L266"
            return stdgo._internal.crypto.internal.boring.Boring_sha224.sHA224(_data)?.__copy__();
        };
        var _d:stdgo._internal.crypto.sha256.Sha256_t_digest.T_digest = ({} : stdgo._internal.crypto.sha256.Sha256_t_digest.T_digest);
        _d._is224 = true;
        //"file:///Users/o/.go/go1.21.3/src/crypto/sha256/sha256.go#L270"
        _d.reset();
        //"file:///Users/o/.go/go1.21.3/src/crypto/sha256/sha256.go#L271"
        _d.write(_data);
        var _sum = _d._checkSum()?.__copy__();
        var _ap = ((_sum.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/sha256/sha256.go#L274"
        return (_ap : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__();
    }

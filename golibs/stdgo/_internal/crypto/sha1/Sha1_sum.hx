package stdgo._internal.crypto.sha1;
import stdgo._internal.crypto.Crypto;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.errors.Errors;
function sum(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8> {
        //"file:///Users/o/.go/go1.21.3/src/crypto/sha1/sha1.go#L257"
        if (false) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/sha1/sha1.go#L258"
            return stdgo._internal.crypto.sha1.Sha1__boringsha1._boringSHA1(_data)?.__copy__();
        };
        var _d:stdgo._internal.crypto.sha1.Sha1_t_digest.T_digest = ({} : stdgo._internal.crypto.sha1.Sha1_t_digest.T_digest);
        //"file:///Users/o/.go/go1.21.3/src/crypto/sha1/sha1.go#L261"
        _d.reset();
        //"file:///Users/o/.go/go1.21.3/src/crypto/sha1/sha1.go#L262"
        _d.write(_data);
        //"file:///Users/o/.go/go1.21.3/src/crypto/sha1/sha1.go#L263"
        return _d._checkSum()?.__copy__();
    }

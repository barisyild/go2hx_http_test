package stdgo._internal.crypto.md5;
import stdgo._internal.crypto.Crypto;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.errors.Errors;
function sum(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8> {
        var _d:stdgo._internal.crypto.md5.Md5_t_digest.T_digest = ({} : stdgo._internal.crypto.md5.Md5_t_digest.T_digest);
        //"file:///Users/o/.go/go1.21.3/src/crypto/md5/md5.go#L180"
        _d.reset();
        //"file:///Users/o/.go/go1.21.3/src/crypto/md5/md5.go#L181"
        _d.write(_data);
        //"file:///Users/o/.go/go1.21.3/src/crypto/md5/md5.go#L182"
        return _d._checkSum()?.__copy__();
    }

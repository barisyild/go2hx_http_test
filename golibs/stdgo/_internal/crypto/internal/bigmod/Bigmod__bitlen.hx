package stdgo._internal.crypto.internal.bigmod;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.errors.Errors;
import stdgo._internal.unsafe.Unsafe;
function _bitLen(_n:stdgo.GoUInt):stdgo.GoInt {
        var _len:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/bigmod/nat.go#L375"
        while (_n != ((0u32 : stdgo.GoUInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/bigmod/nat.go#L376"
            _len++;
            _n = (_n >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/bigmod/nat.go#L379"
        return _len;
    }

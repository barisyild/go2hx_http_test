package stdgo._internal.crypto.sha256;
import stdgo._internal.crypto.Crypto;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.errors.Errors;
function _consumeUint64(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.GoUInt64; } {
        _b[(7 : stdgo.GoInt)];
        var _x = @:assignType ((((((((_b[(7 : stdgo.GoInt)] : stdgo.GoUInt64) | ((_b[(6 : stdgo.GoInt)] : stdgo.GoUInt64) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_b[(5 : stdgo.GoInt)] : stdgo.GoUInt64) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_b[(4 : stdgo.GoInt)] : stdgo.GoUInt64) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_b[(3 : stdgo.GoInt)] : stdgo.GoUInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_b[(2 : stdgo.GoInt)] : stdgo.GoUInt64) << (40i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_b[(1 : stdgo.GoInt)] : stdgo.GoUInt64) << (48i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_b[(0 : stdgo.GoInt)] : stdgo.GoUInt64) << (56i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/crypto/sha256/sha256.go#L113"
        return { _0 : (_b.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _1 : _x };
    }

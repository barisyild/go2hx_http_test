package stdgo._internal.crypto.internal.bigmod;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.errors.Errors;
import stdgo._internal.unsafe.Unsafe;
function _minusInverseModW(_x:stdgo.GoUInt):stdgo.GoUInt {
        var _y = @:assignType (_x : stdgo.GoUInt);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/bigmod/nat.go#L344"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (5 : stdgo.GoInt) : Bool)) {
                _y = (_y * (((2u32 : stdgo.GoUInt) - (_x * _y : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/bigmod/nat.go#L347"
        return -_y;
    }

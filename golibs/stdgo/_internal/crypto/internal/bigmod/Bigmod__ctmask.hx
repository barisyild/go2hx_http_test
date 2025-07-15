package stdgo._internal.crypto.internal.bigmod;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.errors.Errors;
import stdgo._internal.unsafe.Unsafe;
function _ctMask(_on:stdgo._internal.crypto.internal.bigmod.Bigmod_t_choice.T_choice):stdgo.GoUInt {
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/bigmod/nat.go#L32"
        return -(_on : stdgo.GoUInt);
    }

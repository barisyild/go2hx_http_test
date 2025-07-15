package stdgo._internal.crypto.internal.bigmod;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.errors.Errors;
import stdgo._internal.unsafe.Unsafe;
function _not(_c:stdgo._internal.crypto.internal.bigmod.Bigmod_t_choice.T_choice):stdgo._internal.crypto.internal.bigmod.Bigmod_t_choice.T_choice {
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/bigmod/nat.go#L26"
        return ((1u32 : stdgo._internal.crypto.internal.bigmod.Bigmod_t_choice.T_choice) ^ _c : stdgo._internal.crypto.internal.bigmod.Bigmod_t_choice.T_choice);
    }

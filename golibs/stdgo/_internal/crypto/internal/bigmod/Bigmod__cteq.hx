package stdgo._internal.crypto.internal.bigmod;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.errors.Errors;
import stdgo._internal.unsafe.Unsafe;
function _ctEq(_x:stdgo.GoUInt, _y:stdgo.GoUInt):stdgo._internal.crypto.internal.bigmod.Bigmod_t_choice.T_choice {
        var __tmp__ = stdgo._internal.math.bits.Bits_sub.sub(_x, _y, (0u32 : stdgo.GoUInt)), __0:stdgo.GoUInt = __tmp__._0, _c1:stdgo.GoUInt = __tmp__._1;
        var __tmp__ = stdgo._internal.math.bits.Bits_sub.sub(_y, _x, (0u32 : stdgo.GoUInt)), __1:stdgo.GoUInt = __tmp__._0, _c2:stdgo.GoUInt = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/bigmod/nat.go#L40"
        return stdgo._internal.crypto.internal.bigmod.Bigmod__not._not(((_c1 | _c2 : stdgo.GoUInt) : stdgo._internal.crypto.internal.bigmod.Bigmod_t_choice.T_choice));
    }

package stdgo._internal.crypto.internal.edwards25519;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.subtle.Subtle;
var _basepointTablePrecomp : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t__struct_7.T__struct_7 = ({ _table : new stdgo.GoArray<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinelookuptable.T_affineLookupTable>(32, 32, ...[for (i in 0 ... (32 > 32 ? 32 : 32 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinelookuptable.T_affineLookupTable)]), _initOnce : ({} : stdgo._internal.sync.Sync_once.Once) } : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t__struct_7.T__struct_7);

package stdgo._internal.crypto.internal.edwards25519;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.subtle.Subtle;
var _basepointNafTablePrecomp : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t__struct_8.T__struct_8 = ({ _table : ({} : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_naflookuptable8.T_nafLookupTable8), _initOnce : ({} : stdgo._internal.sync.Sync_once.Once) } : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t__struct_8.T__struct_8);

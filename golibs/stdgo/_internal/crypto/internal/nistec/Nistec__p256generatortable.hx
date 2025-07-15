package stdgo._internal.crypto.internal.nistec;
import stdgo._internal.errors.Errors;
import stdgo._internal.crypto.subtle.Subtle;
var _p256GeneratorTable : stdgo.Ref<stdgo.GoArray<stdgo._internal.crypto.internal.nistec.Nistec_t_p256table.T_p256Table>> = new stdgo.GoArray<stdgo._internal.crypto.internal.nistec.Nistec_t_p256table.T_p256Table>(64, 64, ...[for (i in 0 ... (64 > 64 ? 64 : 64 : stdgo.GoInt).toBasic()) new stdgo._internal.crypto.internal.nistec.Nistec_t_p256table.T_p256Table(15, 15, ...[for (i in 0 ... 15) (null : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>)])]).__setNil__();

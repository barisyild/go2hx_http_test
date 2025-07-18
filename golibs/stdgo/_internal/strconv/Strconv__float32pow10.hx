package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
var _float32pow10 : stdgo.Slice<stdgo.GoFloat32> = (new stdgo.Slice<stdgo.GoFloat32>(11, 11, ...[
(1 : stdgo.GoFloat64),
(10 : stdgo.GoFloat64),
(100 : stdgo.GoFloat64),
(1000 : stdgo.GoFloat64),
(10000 : stdgo.GoFloat64),
(100000 : stdgo.GoFloat64),
(1e+06 : stdgo.GoFloat64),
(1e+07 : stdgo.GoFloat64),
(1e+08 : stdgo.GoFloat64),
(1e+09 : stdgo.GoFloat64),
(1e+10 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat32>);

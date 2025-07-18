package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
var _uint64pow10 : stdgo.GoArray<stdgo.GoUInt64> = (new stdgo.GoArray<stdgo.GoUInt64>(20, 20, ...[
(1i64 : stdgo.GoUInt64),
(10i64 : stdgo.GoUInt64),
(100i64 : stdgo.GoUInt64),
(1000i64 : stdgo.GoUInt64),
(10000i64 : stdgo.GoUInt64),
(100000i64 : stdgo.GoUInt64),
(1000000i64 : stdgo.GoUInt64),
(10000000i64 : stdgo.GoUInt64),
(100000000i64 : stdgo.GoUInt64),
(1000000000i64 : stdgo.GoUInt64),
(10000000000i64 : stdgo.GoUInt64),
(100000000000i64 : stdgo.GoUInt64),
(1000000000000i64 : stdgo.GoUInt64),
(10000000000000i64 : stdgo.GoUInt64),
(100000000000000i64 : stdgo.GoUInt64),
(1000000000000000i64 : stdgo.GoUInt64),
(10000000000000000i64 : stdgo.GoUInt64),
(100000000000000000i64 : stdgo.GoUInt64),
(1000000000000000000i64 : stdgo.GoUInt64),
(-8446744073709551616i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>);

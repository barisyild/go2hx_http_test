package stdgo._internal.math.big;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.math.Math;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.math.rand.Rand;
var _pow5tab : stdgo.GoArray<stdgo.GoUInt64> = (new stdgo.GoArray<stdgo.GoUInt64>(28, 28, ...[
(1i64 : stdgo.GoUInt64),
(5i64 : stdgo.GoUInt64),
(25i64 : stdgo.GoUInt64),
(125i64 : stdgo.GoUInt64),
(625i64 : stdgo.GoUInt64),
(3125i64 : stdgo.GoUInt64),
(15625i64 : stdgo.GoUInt64),
(78125i64 : stdgo.GoUInt64),
(390625i64 : stdgo.GoUInt64),
(1953125i64 : stdgo.GoUInt64),
(9765625i64 : stdgo.GoUInt64),
(48828125i64 : stdgo.GoUInt64),
(244140625i64 : stdgo.GoUInt64),
(1220703125i64 : stdgo.GoUInt64),
(6103515625i64 : stdgo.GoUInt64),
(30517578125i64 : stdgo.GoUInt64),
(152587890625i64 : stdgo.GoUInt64),
(762939453125i64 : stdgo.GoUInt64),
(3814697265625i64 : stdgo.GoUInt64),
(19073486328125i64 : stdgo.GoUInt64),
(95367431640625i64 : stdgo.GoUInt64),
(476837158203125i64 : stdgo.GoUInt64),
(2384185791015625i64 : stdgo.GoUInt64),
(11920928955078125i64 : stdgo.GoUInt64),
(59604644775390625i64 : stdgo.GoUInt64),
(298023223876953125i64 : stdgo.GoUInt64),
(1490116119384765625i64 : stdgo.GoUInt64),
(7450580596923828125i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>);

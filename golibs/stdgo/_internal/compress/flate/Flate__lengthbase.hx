package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
var _lengthBase : stdgo.Slice<stdgo.GoUInt32> = (new stdgo.Slice<stdgo.GoUInt32>(29, 29, ...[
(0u32 : stdgo.GoUInt32),
(1u32 : stdgo.GoUInt32),
(2u32 : stdgo.GoUInt32),
(3u32 : stdgo.GoUInt32),
(4u32 : stdgo.GoUInt32),
(5u32 : stdgo.GoUInt32),
(6u32 : stdgo.GoUInt32),
(7u32 : stdgo.GoUInt32),
(8u32 : stdgo.GoUInt32),
(10u32 : stdgo.GoUInt32),
(12u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(16u32 : stdgo.GoUInt32),
(20u32 : stdgo.GoUInt32),
(24u32 : stdgo.GoUInt32),
(28u32 : stdgo.GoUInt32),
(32u32 : stdgo.GoUInt32),
(40u32 : stdgo.GoUInt32),
(48u32 : stdgo.GoUInt32),
(56u32 : stdgo.GoUInt32),
(64u32 : stdgo.GoUInt32),
(80u32 : stdgo.GoUInt32),
(96u32 : stdgo.GoUInt32),
(112u32 : stdgo.GoUInt32),
(128u32 : stdgo.GoUInt32),
(160u32 : stdgo.GoUInt32),
(192u32 : stdgo.GoUInt32),
(224u32 : stdgo.GoUInt32),
(255u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);

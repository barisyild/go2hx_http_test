package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
var _offsetBase : stdgo.Slice<stdgo.GoUInt32> = (new stdgo.Slice<stdgo.GoUInt32>(30, 30, ...[
(0u32 : stdgo.GoUInt32),
(1u32 : stdgo.GoUInt32),
(2u32 : stdgo.GoUInt32),
(3u32 : stdgo.GoUInt32),
(4u32 : stdgo.GoUInt32),
(6u32 : stdgo.GoUInt32),
(8u32 : stdgo.GoUInt32),
(12u32 : stdgo.GoUInt32),
(16u32 : stdgo.GoUInt32),
(24u32 : stdgo.GoUInt32),
(32u32 : stdgo.GoUInt32),
(48u32 : stdgo.GoUInt32),
(64u32 : stdgo.GoUInt32),
(96u32 : stdgo.GoUInt32),
(128u32 : stdgo.GoUInt32),
(192u32 : stdgo.GoUInt32),
(256u32 : stdgo.GoUInt32),
(384u32 : stdgo.GoUInt32),
(512u32 : stdgo.GoUInt32),
(768u32 : stdgo.GoUInt32),
(1024u32 : stdgo.GoUInt32),
(1536u32 : stdgo.GoUInt32),
(2048u32 : stdgo.GoUInt32),
(3072u32 : stdgo.GoUInt32),
(4096u32 : stdgo.GoUInt32),
(6144u32 : stdgo.GoUInt32),
(8192u32 : stdgo.GoUInt32),
(12288u32 : stdgo.GoUInt32),
(16384u32 : stdgo.GoUInt32),
(24576u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);

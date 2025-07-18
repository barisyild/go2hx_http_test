package stdgo._internal.crypto.sha256;
import stdgo._internal.crypto.Crypto;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.errors.Errors;
var __K : stdgo.Slice<stdgo.GoUInt32> = (new stdgo.Slice<stdgo.GoUInt32>(64, 64, ...[
(1116352408u32 : stdgo.GoUInt32),
(1899447441u32 : stdgo.GoUInt32),
(-1245643825u32 : stdgo.GoUInt32),
(-373957723u32 : stdgo.GoUInt32),
(961987163u32 : stdgo.GoUInt32),
(1508970993u32 : stdgo.GoUInt32),
(-1841331548u32 : stdgo.GoUInt32),
(-1424204075u32 : stdgo.GoUInt32),
(-670586216u32 : stdgo.GoUInt32),
(310598401u32 : stdgo.GoUInt32),
(607225278u32 : stdgo.GoUInt32),
(1426881987u32 : stdgo.GoUInt32),
(1925078388u32 : stdgo.GoUInt32),
(-2132889090u32 : stdgo.GoUInt32),
(-1680079193u32 : stdgo.GoUInt32),
(-1046744716u32 : stdgo.GoUInt32),
(-459576895u32 : stdgo.GoUInt32),
(-272742522u32 : stdgo.GoUInt32),
(264347078u32 : stdgo.GoUInt32),
(604807628u32 : stdgo.GoUInt32),
(770255983u32 : stdgo.GoUInt32),
(1249150122u32 : stdgo.GoUInt32),
(1555081692u32 : stdgo.GoUInt32),
(1996064986u32 : stdgo.GoUInt32),
(-1740746414u32 : stdgo.GoUInt32),
(-1473132947u32 : stdgo.GoUInt32),
(-1341970488u32 : stdgo.GoUInt32),
(-1084653625u32 : stdgo.GoUInt32),
(-958395405u32 : stdgo.GoUInt32),
(-710438585u32 : stdgo.GoUInt32),
(113926993u32 : stdgo.GoUInt32),
(338241895u32 : stdgo.GoUInt32),
(666307205u32 : stdgo.GoUInt32),
(773529912u32 : stdgo.GoUInt32),
(1294757372u32 : stdgo.GoUInt32),
(1396182291u32 : stdgo.GoUInt32),
(1695183700u32 : stdgo.GoUInt32),
(1986661051u32 : stdgo.GoUInt32),
(-2117940946u32 : stdgo.GoUInt32),
(-1838011259u32 : stdgo.GoUInt32),
(-1564481375u32 : stdgo.GoUInt32),
(-1474664885u32 : stdgo.GoUInt32),
(-1035236496u32 : stdgo.GoUInt32),
(-949202525u32 : stdgo.GoUInt32),
(-778901479u32 : stdgo.GoUInt32),
(-694614492u32 : stdgo.GoUInt32),
(-200395387u32 : stdgo.GoUInt32),
(275423344u32 : stdgo.GoUInt32),
(430227734u32 : stdgo.GoUInt32),
(506948616u32 : stdgo.GoUInt32),
(659060556u32 : stdgo.GoUInt32),
(883997877u32 : stdgo.GoUInt32),
(958139571u32 : stdgo.GoUInt32),
(1322822218u32 : stdgo.GoUInt32),
(1537002063u32 : stdgo.GoUInt32),
(1747873779u32 : stdgo.GoUInt32),
(1955562222u32 : stdgo.GoUInt32),
(2024104815u32 : stdgo.GoUInt32),
(-2067236844u32 : stdgo.GoUInt32),
(-1933114872u32 : stdgo.GoUInt32),
(-1866530822u32 : stdgo.GoUInt32),
(-1538233109u32 : stdgo.GoUInt32),
(-1090935817u32 : stdgo.GoUInt32),
(-965641998u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);

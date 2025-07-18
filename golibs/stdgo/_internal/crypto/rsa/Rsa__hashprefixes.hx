package stdgo._internal.crypto.rsa;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.big.Big;
import stdgo._internal.crypto.internal.randutil.Randutil;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.crypto.internal.boring.bbig.Bbig;
import stdgo._internal.crypto.internal.bigmod.Bigmod;
import stdgo._internal.math.Math;
import stdgo._internal.crypto.rand.Rand;
var _hashPrefixes : stdgo.GoMap<stdgo._internal.crypto.Crypto_hash.Hash, stdgo.Slice<stdgo.GoUInt8>> = ({
        final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo.GoUInt8>>();
        x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoUInt8>);
        x.set((2u32 : stdgo._internal.crypto.Crypto_hash.Hash), (new stdgo.Slice<stdgo.GoUInt8>(18, 18, ...[
(48 : stdgo.GoUInt8),
(32 : stdgo.GoUInt8),
(48 : stdgo.GoUInt8),
(12 : stdgo.GoUInt8),
(6 : stdgo.GoUInt8),
(8 : stdgo.GoUInt8),
(42 : stdgo.GoUInt8),
(134 : stdgo.GoUInt8),
(72 : stdgo.GoUInt8),
(134 : stdgo.GoUInt8),
(247 : stdgo.GoUInt8),
(13 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(16 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
x.set((3u32 : stdgo._internal.crypto.Crypto_hash.Hash), (new stdgo.Slice<stdgo.GoUInt8>(15, 15, ...[
(48 : stdgo.GoUInt8),
(33 : stdgo.GoUInt8),
(48 : stdgo.GoUInt8),
(9 : stdgo.GoUInt8),
(6 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8),
(43 : stdgo.GoUInt8),
(14 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(26 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(20 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
x.set((4u32 : stdgo._internal.crypto.Crypto_hash.Hash), (new stdgo.Slice<stdgo.GoUInt8>(19, 19, ...[
(48 : stdgo.GoUInt8),
(45 : stdgo.GoUInt8),
(48 : stdgo.GoUInt8),
(13 : stdgo.GoUInt8),
(6 : stdgo.GoUInt8),
(9 : stdgo.GoUInt8),
(96 : stdgo.GoUInt8),
(134 : stdgo.GoUInt8),
(72 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(101 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(28 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
x.set((5u32 : stdgo._internal.crypto.Crypto_hash.Hash), (new stdgo.Slice<stdgo.GoUInt8>(19, 19, ...[
(48 : stdgo.GoUInt8),
(49 : stdgo.GoUInt8),
(48 : stdgo.GoUInt8),
(13 : stdgo.GoUInt8),
(6 : stdgo.GoUInt8),
(9 : stdgo.GoUInt8),
(96 : stdgo.GoUInt8),
(134 : stdgo.GoUInt8),
(72 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(101 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(32 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
x.set((6u32 : stdgo._internal.crypto.Crypto_hash.Hash), (new stdgo.Slice<stdgo.GoUInt8>(19, 19, ...[
(48 : stdgo.GoUInt8),
(65 : stdgo.GoUInt8),
(48 : stdgo.GoUInt8),
(13 : stdgo.GoUInt8),
(6 : stdgo.GoUInt8),
(9 : stdgo.GoUInt8),
(96 : stdgo.GoUInt8),
(134 : stdgo.GoUInt8),
(72 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(101 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(48 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
x.set((7u32 : stdgo._internal.crypto.Crypto_hash.Hash), (new stdgo.Slice<stdgo.GoUInt8>(19, 19, ...[
(48 : stdgo.GoUInt8),
(81 : stdgo.GoUInt8),
(48 : stdgo.GoUInt8),
(13 : stdgo.GoUInt8),
(6 : stdgo.GoUInt8),
(9 : stdgo.GoUInt8),
(96 : stdgo.GoUInt8),
(134 : stdgo.GoUInt8),
(72 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(101 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(64 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
x.set((8u32 : stdgo._internal.crypto.Crypto_hash.Hash), (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
x.set((9u32 : stdgo._internal.crypto.Crypto_hash.Hash), (new stdgo.Slice<stdgo.GoUInt8>(14, 14, ...[
(48 : stdgo.GoUInt8),
(32 : stdgo.GoUInt8),
(48 : stdgo.GoUInt8),
(8 : stdgo.GoUInt8),
(6 : stdgo.GoUInt8),
(6 : stdgo.GoUInt8),
(40 : stdgo.GoUInt8),
(207 : stdgo.GoUInt8),
(6 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(49 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(20 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
        x;
    } : stdgo.GoMap<stdgo._internal.crypto.Crypto_hash.Hash, stdgo.Slice<stdgo.GoUInt8>>);

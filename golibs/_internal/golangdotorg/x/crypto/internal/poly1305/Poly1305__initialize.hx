package _internal.golangdotorg.x.crypto.internal.poly1305;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.encoding.binary.Binary;
function _initialize(_key:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>, _m:stdgo.Ref<_internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_t_macstate.T_macState>):Void {
        (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r[(0 : stdgo.GoInt)] = (stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint64((_key.__slice__((0 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) & (1152921487695413247i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r[(1 : stdgo.GoInt)] = (stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint64((_key.__slice__((8 : stdgo.GoInt), (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) & (1152921487695413244i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._s[(0 : stdgo.GoInt)] = stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint64((_key.__slice__((16 : stdgo.GoInt), (24 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._s[(1 : stdgo.GoInt)] = stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint64((_key.__slice__((24 : stdgo.GoInt), (32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
    }

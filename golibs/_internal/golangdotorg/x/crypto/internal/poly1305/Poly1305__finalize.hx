package _internal.golangdotorg.x.crypto.internal.poly1305;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.encoding.binary.Binary;
function _finalize(_out:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>, _h:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>, _s:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>):Void {
        var __0 = @:assignType (_h[(0 : stdgo.GoInt)] : stdgo.GoUInt64), __1 = @:assignType (_h[(1 : stdgo.GoInt)] : stdgo.GoUInt64), __2 = @:assignType (_h[(2 : stdgo.GoInt)] : stdgo.GoUInt64);
var _h2 = __2, _h1 = __1, _h0 = __0;
        var __tmp__ = _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305__bitssub64._bitsSub64(_h0, (-5i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64)), _hMinusP0:stdgo.GoUInt64 = __tmp__._0, _b:stdgo.GoUInt64 = __tmp__._1;
        var __tmp__ = _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305__bitssub64._bitsSub64(_h1, (-1i64 : stdgo.GoUInt64), _b), _hMinusP1:stdgo.GoUInt64 = __tmp__._0, _b:stdgo.GoUInt64 = __tmp__._1;
        {
            var __tmp__ = _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305__bitssub64._bitsSub64(_h2, (3i64 : stdgo.GoUInt64), _b);
            _b = @:tmpset0 __tmp__._1;
        };
        _h0 = _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305__select64._select64(_b, _h0, _hMinusP0);
        _h1 = _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305__select64._select64(_b, _h1, _hMinusP1);
        var __tmp__ = _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305__bitsadd64._bitsAdd64(_h0, _s[(0 : stdgo.GoInt)], (0i64 : stdgo.GoUInt64)), _h0:stdgo.GoUInt64 = __tmp__._0, _c:stdgo.GoUInt64 = __tmp__._1;
        {
            var __tmp__ = _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305__bitsadd64._bitsAdd64(_h1, _s[(1 : stdgo.GoInt)], _c);
            _h1 = @:tmpset0 __tmp__._0;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/internal/poly1305/sum_generic.go#L307"
        stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.putUint64((_out.__slice__((0 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _h0);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/internal/poly1305/sum_generic.go#L308"
        stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.putUint64((_out.__slice__((8 : stdgo.GoInt), (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _h1);
    }

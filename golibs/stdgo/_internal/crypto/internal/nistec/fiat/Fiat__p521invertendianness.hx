package stdgo._internal.crypto.internal.nistec.fiat;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.errors.Errors;
function _p521InvertEndianness(_v:stdgo.Slice<stdgo.GoUInt8>):Void {
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521.go#L131"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < ((_v.length) / (2 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                {
                    final __tmp__0 = _v[(((_v.length) - (1 : stdgo.GoInt) : stdgo.GoInt) - _i : stdgo.GoInt)];
                    final __tmp__1 = _v[(_i : stdgo.GoInt)];
                    final __tmp__2 = _v;
                    final __tmp__3 = (_i : stdgo.GoInt);
                    final __tmp__4 = _v;
                    final __tmp__5 = (((_v.length) - (1 : stdgo.GoInt) : stdgo.GoInt) - _i : stdgo.GoInt);
                    __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                    __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                };
                _i++;
            };
        };
    }

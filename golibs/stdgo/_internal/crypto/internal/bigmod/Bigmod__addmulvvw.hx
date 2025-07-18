package stdgo._internal.crypto.internal.bigmod;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.errors.Errors;
import stdgo._internal.unsafe.Unsafe;
function _addMulVVW(_z:stdgo.Slice<stdgo.GoUInt>, _x:stdgo.Slice<stdgo.GoUInt>, _y:stdgo.GoUInt):stdgo.GoUInt {
        var _carry = (0 : stdgo.GoUInt);
        _x[((_z.length) - (1 : stdgo.GoInt) : stdgo.GoInt)];
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/bigmod/nat.go#L674"
        if (_z != null) for (_i => _ in _z) {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul.mul(_x[(_i : stdgo.GoInt)], _y), _hi:stdgo.GoUInt = __tmp__._0, _lo:stdgo.GoUInt = __tmp__._1;
            var __tmp__ = stdgo._internal.math.bits.Bits_add.add(_lo, _z[(_i : stdgo.GoInt)], (0u32 : stdgo.GoUInt)), _lo:stdgo.GoUInt = __tmp__._0, _c:stdgo.GoUInt = __tmp__._1;
            {
                var __tmp__ = stdgo._internal.math.bits.Bits_add.add(_hi, (0u32 : stdgo.GoUInt), _c);
                _hi = @:tmpset0 __tmp__._0;
            };
            {
                var __tmp__ = stdgo._internal.math.bits.Bits_add.add(_lo, _carry, (0u32 : stdgo.GoUInt));
                _lo = @:tmpset0 __tmp__._0;
                _c = @:tmpset0 __tmp__._1;
            };
            {
                var __tmp__ = stdgo._internal.math.bits.Bits_add.add(_hi, (0u32 : stdgo.GoUInt), _c);
                _hi = @:tmpset0 __tmp__._0;
            };
            _carry = _hi;
            _z[(_i : stdgo.GoInt)] = _lo;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/bigmod/nat.go#L685"
        return _carry;
    }

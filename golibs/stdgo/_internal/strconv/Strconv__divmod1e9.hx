package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function _divmod1e9(_x:stdgo.GoUInt64):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; } {
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L562"
        if (false) {
            //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L563"
            return { _0 : ((_x / (1000000000i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt32), _1 : ((_x % (1000000000i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt32) };
        };
        var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64((_x >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64), (-8543223759426509416i64 : stdgo.GoUInt64)), _hi:stdgo.GoUInt64 = __tmp__._0, __0:stdgo.GoUInt64 = __tmp__._1;
        var _q = @:assignType (_hi >> (28i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L568"
        return { _0 : (_q : stdgo.GoUInt32), _1 : ((_x - (_q * (1000000000i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt32) };
    }

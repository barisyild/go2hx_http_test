package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function _formatDecimal(_d:stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimalslice.T_decimalSlice>, _m:stdgo.GoUInt64, _trunc:Bool, _roundUp:Bool, _prec:stdgo.GoInt):Void {
        var _max = @:assignType (stdgo._internal.strconv.Strconv__uint64pow10._uint64pow10[(_prec : stdgo.GoInt)] : stdgo.GoUInt64);
        var _trimmed = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L170"
        while ((_m >= _max : Bool)) {
            var __0 = @:assignType (_m / (10i64 : stdgo.GoUInt64) : stdgo.GoUInt64), __1 = @:assignType (_m % (10i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
var _b = __1, _a = __0;
            _m = _a;
            //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L173"
            _trimmed++;
            //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L174"
            if ((_b > (5i64 : stdgo.GoUInt64) : Bool)) {
                _roundUp = true;
            } else if ((_b < (5i64 : stdgo.GoUInt64) : Bool)) {
                _roundUp = false;
            } else {
                _roundUp = (_trunc || ((_m & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == (1i64 : stdgo.GoUInt64)) : Bool);
            };
            //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L183"
            if (_b != ((0i64 : stdgo.GoUInt64))) {
                _trunc = true;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L187"
        if (_roundUp) {
            //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L188"
            _m++;
        };
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L190"
        if ((_m >= _max : Bool)) {
            _m = (_m / ((10i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L193"
            _trimmed++;
        };
        var _n = @:assignType (_prec : stdgo.GoUInt);
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nd = _prec;
        var _v = @:assignType (_m : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L199"
        while ((_v >= (100i64 : stdgo.GoUInt64) : Bool)) {
            var _v1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), _v2:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
            //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L201"
            if ((_v >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == ((0i64 : stdgo.GoUInt64))) {
                {
                    final __tmp__0 = (((_v : stdgo.GoUInt32) / (100u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt64);
                    final __tmp__1 = (((_v : stdgo.GoUInt32) % (100u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt64);
                    _v1 = @:binopAssign __tmp__0;
                    _v2 = @:binopAssign __tmp__1;
                };
            } else {
                {
                    final __tmp__0 = (_v / (100i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    final __tmp__1 = (_v % (100i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _v1 = @:binopAssign __tmp__0;
                    _v2 = @:binopAssign __tmp__1;
                };
            };
            _n = (_n - ((2u32 : stdgo.GoUInt)) : stdgo.GoUInt);
            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._d[((_n + (1u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)] = ("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899" : stdgo.GoString)[((((2i64 : stdgo.GoUInt64) * _v2 : stdgo.GoUInt64) + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt)];
            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._d[((_n + (0u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)] = ("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899" : stdgo.GoString)[((((2i64 : stdgo.GoUInt64) * _v2 : stdgo.GoUInt64) + (0i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt)];
            _v = _v1;
        };
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L211"
        if ((_v > (0i64 : stdgo.GoUInt64) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L212"
            _n--;
            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._d[(_n : stdgo.GoInt)] = ("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899" : stdgo.GoString)[((((2i64 : stdgo.GoUInt64) * _v : stdgo.GoUInt64) + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt)];
        };
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L215"
        if ((_v >= (10i64 : stdgo.GoUInt64) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L216"
            _n--;
            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._d[(_n : stdgo.GoInt)] = ("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899" : stdgo.GoString)[(((2i64 : stdgo.GoUInt64) * _v : stdgo.GoUInt64) : stdgo.GoInt)];
        };
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L219"
        while ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._d[((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nd - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
            //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L220"
            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nd--;
            //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L221"
            _trimmed++;
        };
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dp = ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nd + _trimmed : stdgo.GoInt);
    }

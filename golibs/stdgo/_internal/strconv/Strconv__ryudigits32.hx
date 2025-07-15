package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function _ryuDigits32(_d:stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimalslice.T_decimalSlice>, _lower:stdgo.GoUInt32, _central:stdgo.GoUInt32, _upper:stdgo.GoUInt32, _c0:Bool, _cup:Bool, _endindex:stdgo.GoInt):Void {
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L414"
        if (_upper == ((0u32 : stdgo.GoUInt32))) {
            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dp = (_endindex + (1 : stdgo.GoInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L416"
            return;
        };
        var _trimmed = @:assignType (0 : stdgo.GoInt);
        var _cNextDigit = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L422"
        while ((_upper > (0u32 : stdgo.GoUInt32) : Bool)) {
            var _l = @:assignType (((_lower + (9u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) / (10u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
            var __0 = @:assignType (_central / (10u32 : stdgo.GoUInt32) : stdgo.GoUInt32), __1 = @:assignType (_central % (10u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
var _cdigit = __1, _c = __0;
            var _u = @:assignType (_upper / (10u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
            //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L431"
            if ((_l > _u : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L434"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L445"
            if (((_l == (_c + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) && (_c < _u : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L446"
                _c++;
                _cdigit = (0u32 : stdgo.GoUInt32);
                _cup = false;
            };
            //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L450"
            _trimmed++;
            _c0 = (_c0 && (_cNextDigit == (0 : stdgo.GoInt)) : Bool);
            _cNextDigit = (_cdigit : stdgo.GoInt);
            {
                final __tmp__0 = _l;
                final __tmp__1 = _c;
                final __tmp__2 = _u;
                _lower = @:binopAssign __tmp__0;
                _central = @:binopAssign __tmp__1;
                _upper = @:binopAssign __tmp__2;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L457"
        if ((_trimmed > (0 : stdgo.GoInt) : Bool)) {
            _cup = (((_cNextDigit > (5 : stdgo.GoInt) : Bool) || (((_cNextDigit == (5 : stdgo.GoInt)) && !_c0 : Bool)) : Bool) || (((_cNextDigit == ((5 : stdgo.GoInt)) && _c0 : Bool) && ((_central & (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == (1u32 : stdgo.GoUInt32)) : Bool)) : Bool);
        };
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L462"
        if (((_central < _upper : Bool) && _cup : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L463"
            _central++;
        };
        _endindex = (_endindex - (_trimmed) : stdgo.GoInt);
        var _v = @:assignType (_central : stdgo.GoUInt32);
        var _n = @:assignType (_endindex : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L469"
        while ((_n > (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nd : Bool)) {
            var __0 = @:assignType (_v / (100u32 : stdgo.GoUInt32) : stdgo.GoUInt32), __1 = @:assignType (_v % (100u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
var _v2 = __1, _v1 = __0;
            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._d[(_n : stdgo.GoInt)] = ("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899" : stdgo.GoString)[((((2u32 : stdgo.GoUInt32) * _v2 : stdgo.GoUInt32) + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)];
            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._d[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = ("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899" : stdgo.GoString)[((((2u32 : stdgo.GoUInt32) * _v2 : stdgo.GoUInt32) + (0u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)];
            _n = (_n - ((2 : stdgo.GoInt)) : stdgo.GoInt);
            _v = _v1;
        };
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L476"
        if (_n == ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nd)) {
            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._d[(_n : stdgo.GoInt)] = ((_v + (48u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt8);
        };
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nd = (_endindex + (1 : stdgo.GoInt) : stdgo.GoInt);
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dp = ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nd + _trimmed : stdgo.GoInt);
    }

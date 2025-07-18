package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function _computeBounds(_mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _flt:stdgo.Ref<stdgo._internal.strconv.Strconv_t_floatinfo.T_floatInfo>):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; var _2 : stdgo.GoUInt64; var _3 : stdgo.GoInt; } {
        var _lower = (0 : stdgo.GoUInt64), _central = (0 : stdgo.GoUInt64), _upper = (0 : stdgo.GoUInt64), _e2 = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L353"
        if (((_mant != ((1i64 : stdgo.GoUInt64) << (@:checkr _flt ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mantbits : stdgo.GoUInt64)) || (_exp == (((@:checkr _flt ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bias + (1 : stdgo.GoInt) : stdgo.GoInt) - ((@:checkr _flt ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mantbits : stdgo.GoInt) : stdgo.GoInt)) : Bool)) {
            {
                final __tmp__0 = (((2i64 : stdgo.GoUInt64) * _mant : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                final __tmp__1 = ((2i64 : stdgo.GoUInt64) * _mant : stdgo.GoUInt64);
                final __tmp__2 = (((2i64 : stdgo.GoUInt64) * _mant : stdgo.GoUInt64) + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                _lower = @:binopAssign __tmp__0;
                _central = @:binopAssign __tmp__1;
                _upper = @:binopAssign __tmp__2;
            };
            _e2 = (_exp - (1 : stdgo.GoInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L357"
            return { _0 : _lower, _1 : _central, _2 : _upper, _3 : _e2 };
        } else {
            {
                final __tmp__0 = (((4i64 : stdgo.GoUInt64) * _mant : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                final __tmp__1 = ((4i64 : stdgo.GoUInt64) * _mant : stdgo.GoUInt64);
                final __tmp__2 = (((4i64 : stdgo.GoUInt64) * _mant : stdgo.GoUInt64) + (2i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                _lower = @:binopAssign __tmp__0;
                _central = @:binopAssign __tmp__1;
                _upper = @:binopAssign __tmp__2;
            };
            _e2 = (_exp - (2 : stdgo.GoInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L362"
            return { _0 : _lower, _1 : _central, _2 : _upper, _3 : _e2 };
        };
    }

package stdgo._internal.math.big;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.math.Math;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.math.rand.Rand;
function _lehmerSimulate(a:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, b:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):{ var _0 : stdgo._internal.math.big.Big_word.Word; var _1 : stdgo._internal.math.big.Big_word.Word; var _2 : stdgo._internal.math.big.Big_word.Word; var _3 : stdgo._internal.math.big.Big_word.Word; var _4 : Bool; } {
        var _u0 = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word), _u1 = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word), _v0 = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word), _v1 = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word), _even = false;
        var _a1:stdgo._internal.math.big.Big_word.Word = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word), _a2:stdgo._internal.math.big.Big_word.Word = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word), _u2:stdgo._internal.math.big.Big_word.Word = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word), _v2:stdgo._internal.math.big.Big_word.Word = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word);
        var _m = @:assignType ((@:checkr b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._abs.length : stdgo.GoInt);
        var _n = @:assignType ((@:checkr a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._abs.length : stdgo.GoInt);
        var _h = @:assignType (stdgo._internal.math.big.Big__nlz._nlz((@:checkr a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._abs[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoUInt);
        _a1 = (((@:checkr a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._abs[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] << _h : stdgo._internal.math.big.Big_word.Word) | ((@:checkr a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._abs[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)] >> (((32u32 : stdgo.GoUInt) - _h : stdgo.GoUInt)) : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word);
        //"file:///Users/o/.go/go1.21.3/src/math/big/int.go#L673"
        if (_n == (_m)) {
            _a2 = (((@:checkr b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._abs[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] << _h : stdgo._internal.math.big.Big_word.Word) | ((@:checkr b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._abs[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)] >> (((32u32 : stdgo.GoUInt) - _h : stdgo.GoUInt)) : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word);
        } else if (_n == ((_m + (1 : stdgo.GoInt) : stdgo.GoInt))) {
            _a2 = ((@:checkr b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._abs[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)] >> (((32u32 : stdgo.GoUInt) - _h : stdgo.GoUInt)) : stdgo._internal.math.big.Big_word.Word);
        } else {
            _a2 = (0u32 : stdgo._internal.math.big.Big_word.Word);
        };
        _even = false;
        {
            final __tmp__0 = (0u32 : stdgo._internal.math.big.Big_word.Word);
            final __tmp__1 = (1u32 : stdgo._internal.math.big.Big_word.Word);
            final __tmp__2 = (0u32 : stdgo._internal.math.big.Big_word.Word);
            _u0 = @:binopAssign __tmp__0;
            _u1 = @:binopAssign __tmp__1;
            _u2 = @:binopAssign __tmp__2;
        };
        {
            final __tmp__0 = (0u32 : stdgo._internal.math.big.Big_word.Word);
            final __tmp__1 = (0u32 : stdgo._internal.math.big.Big_word.Word);
            final __tmp__2 = (1u32 : stdgo._internal.math.big.Big_word.Word);
            _v0 = @:binopAssign __tmp__0;
            _v1 = @:binopAssign __tmp__1;
            _v2 = @:binopAssign __tmp__2;
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/int.go#L696"
        while (((_a2 >= _v2 : Bool) && ((_a1 - _a2 : stdgo._internal.math.big.Big_word.Word) >= (_v1 + _v2 : stdgo._internal.math.big.Big_word.Word) : Bool) : Bool)) {
            var __0 = @:assignType (_a1 / _a2 : stdgo._internal.math.big.Big_word.Word), __1 = @:assignType (_a1 % _a2 : stdgo._internal.math.big.Big_word.Word);
var _r = __1, _q = __0;
            {
                final __tmp__0 = _a2;
                final __tmp__1 = _r;
                _a1 = @:binopAssign __tmp__0;
                _a2 = @:binopAssign __tmp__1;
            };
            {
                final __tmp__0 = _u1;
                final __tmp__1 = _u2;
                final __tmp__2 = (_u1 + (_q * _u2 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word);
                _u0 = @:binopAssign __tmp__0;
                _u1 = @:binopAssign __tmp__1;
                _u2 = @:binopAssign __tmp__2;
            };
            {
                final __tmp__0 = _v1;
                final __tmp__1 = _v2;
                final __tmp__2 = (_v1 + (_q * _v2 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word);
                _v0 = @:binopAssign __tmp__0;
                _v1 = @:binopAssign __tmp__1;
                _v2 = @:binopAssign __tmp__2;
            };
            _even = !_even;
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/int.go#L703"
        return { _0 : _u0, _1 : _u1, _2 : _v0, _3 : _v1, _4 : _even };
    }

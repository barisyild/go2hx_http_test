package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function _eiselLemire32(_man:stdgo.GoUInt64, _exp10:stdgo.GoInt, _neg:Bool):{ var _0 : stdgo.GoFloat32; var _1 : Bool; } {
        var _f = (0 : stdgo.GoFloat32), _ok = false;
        //"file:///Users/o/.go/go1.21.3/src/strconv/eisel_lemire.go#L105"
        if (_man == ((0i64 : stdgo.GoUInt64))) {
            //"file:///Users/o/.go/go1.21.3/src/strconv/eisel_lemire.go#L106"
            if (_neg) {
                _f = stdgo._internal.math.Math_float32frombits.float32frombits((-2147483648u32 : stdgo.GoUInt32));
            };
            //"file:///Users/o/.go/go1.21.3/src/strconv/eisel_lemire.go#L109"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoFloat32; var _1 : Bool; } = { _0 : _f, _1 : true };
                _f = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/strconv/eisel_lemire.go#L111"
        if (((_exp10 < (-348 : stdgo.GoInt) : Bool) || ((347 : stdgo.GoInt) < _exp10 : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/strconv/eisel_lemire.go#L112"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoFloat32; var _1 : Bool; } = { _0 : (0 : stdgo.GoFloat64), _1 : false };
                _f = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        var _clz = @:assignType (stdgo._internal.math.bits.Bits_leadingzeros64.leadingZeros64(_man) : stdgo.GoInt);
        _man = (_man << ((_clz : stdgo.GoUInt)) : stdgo.GoUInt64);
        {};
        var _retExp2 = @:assignType (((((((217706 : stdgo.GoInt) * _exp10 : stdgo.GoInt) >> (16i64 : stdgo.GoUInt64) : stdgo.GoInt) + (64 : stdgo.GoInt) : stdgo.GoInt) + (127 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt64) - (_clz : stdgo.GoUInt64) : stdgo.GoUInt64);
        var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_man, stdgo._internal.strconv.Strconv__detailedpowersoften._detailedPowersOfTen[(_exp10 - (-348 : stdgo.GoInt) : stdgo.GoInt)][(1 : stdgo.GoInt)]), _xHi:stdgo.GoUInt64 = __tmp__._0, _xLo:stdgo.GoUInt64 = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/strconv/eisel_lemire.go#L125"
        if ((((_xHi & (274877906943i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == (274877906943i64 : stdgo.GoUInt64)) && ((_xLo + _man : stdgo.GoUInt64) < _man : Bool) : Bool)) {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_man, stdgo._internal.strconv.Strconv__detailedpowersoften._detailedPowersOfTen[(_exp10 - (-348 : stdgo.GoInt) : stdgo.GoInt)][(0 : stdgo.GoInt)]), _yHi:stdgo.GoUInt64 = __tmp__._0, _yLo:stdgo.GoUInt64 = __tmp__._1;
            var __0 = @:assignType (_xHi : stdgo.GoUInt64), __1 = @:assignType (_xLo + _yHi : stdgo.GoUInt64);
var _mergedLo = __1, _mergedHi = __0;
            //"file:///Users/o/.go/go1.21.3/src/strconv/eisel_lemire.go#L128"
            if ((_mergedLo < _xLo : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/strconv/eisel_lemire.go#L129"
                _mergedHi++;
            };
            //"file:///Users/o/.go/go1.21.3/src/strconv/eisel_lemire.go#L131"
            if ((((_mergedHi & (274877906943i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == ((274877906943i64 : stdgo.GoUInt64)) && (_mergedLo + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == ((0i64 : stdgo.GoUInt64)) : Bool) && ((_yLo + _man : stdgo.GoUInt64) < _man : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/strconv/eisel_lemire.go#L132"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoFloat32; var _1 : Bool; } = { _0 : (0 : stdgo.GoFloat64), _1 : false };
                    _f = __tmp__._0;
                    _ok = __tmp__._1;
                    __tmp__;
                };
            };
            {
                final __tmp__0 = _mergedHi;
                final __tmp__1 = _mergedLo;
                _xHi = @:binopAssign __tmp__0;
                _xLo = @:binopAssign __tmp__1;
            };
        };
        var _msb = @:assignType (_xHi >> (63i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _retMantissa = @:assignType (_xHi >> ((_msb + (38i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _retExp2 = (_retExp2 - (((1i64 : stdgo.GoUInt64) ^ _msb : stdgo.GoUInt64)) : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/strconv/eisel_lemire.go#L143"
        if (((_xLo == ((0i64 : stdgo.GoUInt64)) && (_xHi & (274877906943i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == ((0i64 : stdgo.GoUInt64)) : Bool) && ((_retMantissa & (3i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == (1i64 : stdgo.GoUInt64)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/strconv/eisel_lemire.go#L144"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoFloat32; var _1 : Bool; } = { _0 : (0 : stdgo.GoFloat64), _1 : false };
                _f = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        _retMantissa = (_retMantissa + ((_retMantissa & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _retMantissa = (_retMantissa >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/strconv/eisel_lemire.go#L150"
        if (((_retMantissa >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt64) > (0i64 : stdgo.GoUInt64) : Bool)) {
            _retMantissa = (_retMantissa >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            _retExp2 = (_retExp2 + ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        //"file:///Users/o/.go/go1.21.3/src/strconv/eisel_lemire.go#L159"
        if (((_retExp2 - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >= (254i64 : stdgo.GoUInt64) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/strconv/eisel_lemire.go#L160"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoFloat32; var _1 : Bool; } = { _0 : (0 : stdgo.GoFloat64), _1 : false };
                _f = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        var _retBits = @:assignType ((_retExp2 << (23i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | (_retMantissa & (8388607i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/strconv/eisel_lemire.go#L163"
        if (_neg) {
            _retBits = (_retBits | ((2147483648i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        //"file:///Users/o/.go/go1.21.3/src/strconv/eisel_lemire.go#L166"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoFloat32; var _1 : Bool; } = { _0 : stdgo._internal.math.Math_float32frombits.float32frombits((_retBits : stdgo.GoUInt32)), _1 : true };
            _f = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }

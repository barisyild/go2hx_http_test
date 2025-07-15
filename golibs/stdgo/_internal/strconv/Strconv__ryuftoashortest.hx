package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function _ryuFtoaShortest(_d:stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimalslice.T_decimalSlice>, _mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _flt:stdgo.Ref<stdgo._internal.strconv.Strconv_t_floatinfo.T_floatInfo>):Void {
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L228"
        if (_mant == ((0i64 : stdgo.GoUInt64))) {
            {
                final __tmp__0 = (0 : stdgo.GoInt);
                final __tmp__1 = (0 : stdgo.GoInt);
                (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nd = @:binopAssign __tmp__0;
                (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dp = @:binopAssign __tmp__1;
            };
            //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L230"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L234"
        if (((_exp <= (0 : stdgo.GoInt) : Bool) && (stdgo._internal.math.bits.Bits_trailingzeros64.trailingZeros64(_mant) >= -_exp : Bool) : Bool)) {
            _mant = (_mant >> ((-_exp : stdgo.GoUInt)) : stdgo.GoUInt64);
            //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L236"
            stdgo._internal.strconv.Strconv__ryudigits._ryuDigits(_d, _mant, _mant, _mant, true, false);
            //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L237"
            return;
        };
        var __tmp__ = stdgo._internal.strconv.Strconv__computebounds._computeBounds(_mant, _exp, _flt), _ml:stdgo.GoUInt64 = __tmp__._0, _mc:stdgo.GoUInt64 = __tmp__._1, _mu:stdgo.GoUInt64 = __tmp__._2, _e2:stdgo.GoInt = __tmp__._3;
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L240"
        if (_e2 == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L241"
            stdgo._internal.strconv.Strconv__ryudigits._ryuDigits(_d, _ml, _mc, _mu, true, false);
            //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L242"
            return;
        };
        var _q = @:assignType (stdgo._internal.strconv.Strconv__mulbylog2log10._mulByLog2Log10(-_e2) + (1 : stdgo.GoInt) : stdgo.GoInt);
        var _dl:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), _dc:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), _du:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _dl0:Bool = false, _dc0:Bool = false, _du0:Bool = false;
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L251"
        if (_flt == ((stdgo.Go.setRef(stdgo._internal.strconv.Strconv__float32info._float32info, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstrconvdotstrconv_t_floatinfodott_floatinfo.__type__stdgodot_internaldotstrconvdotStrconv_t_floatinfodotT_floatInfo })) : stdgo.Ref<stdgo._internal.strconv.Strconv_t_floatinfo.T_floatInfo>))) {
            var _dl32:stdgo.GoUInt32 = (0 : stdgo.GoUInt32), _dc32:stdgo.GoUInt32 = (0 : stdgo.GoUInt32), _du32:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
            {
                var __tmp__ = stdgo._internal.strconv.Strconv__mult64bitpow10._mult64bitPow10((_ml : stdgo.GoUInt32), _e2, _q);
                _dl32 = @:tmpset0 __tmp__._0;
                _dl0 = @:tmpset0 __tmp__._2;
            };
            {
                var __tmp__ = stdgo._internal.strconv.Strconv__mult64bitpow10._mult64bitPow10((_mc : stdgo.GoUInt32), _e2, _q);
                _dc32 = @:tmpset0 __tmp__._0;
                _dc0 = @:tmpset0 __tmp__._2;
            };
            {
                var __tmp__ = stdgo._internal.strconv.Strconv__mult64bitpow10._mult64bitPow10((_mu : stdgo.GoUInt32), _e2, _q);
                _du32 = @:tmpset0 __tmp__._0;
                _e2 = @:tmpset0 __tmp__._1;
                _du0 = @:tmpset0 __tmp__._2;
            };
            {
                final __tmp__0 = (_dl32 : stdgo.GoUInt64);
                final __tmp__1 = (_dc32 : stdgo.GoUInt64);
                final __tmp__2 = (_du32 : stdgo.GoUInt64);
                _dl = @:binopAssign __tmp__0;
                _dc = @:binopAssign __tmp__1;
                _du = @:binopAssign __tmp__2;
            };
        } else {
            {
                var __tmp__ = stdgo._internal.strconv.Strconv__mult128bitpow10._mult128bitPow10(_ml, _e2, _q);
                _dl = @:tmpset0 __tmp__._0;
                _dl0 = @:tmpset0 __tmp__._2;
            };
            {
                var __tmp__ = stdgo._internal.strconv.Strconv__mult128bitpow10._mult128bitPow10(_mc, _e2, _q);
                _dc = @:tmpset0 __tmp__._0;
                _dc0 = @:tmpset0 __tmp__._2;
            };
            {
                var __tmp__ = stdgo._internal.strconv.Strconv__mult128bitpow10._mult128bitPow10(_mu, _e2, _q);
                _du = @:tmpset0 __tmp__._0;
                _e2 = @:tmpset0 __tmp__._1;
                _du0 = @:tmpset0 __tmp__._2;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L262"
        if ((_e2 >= (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L263"
            throw new stdgo.AnyInterface(("not enough significant bits after mult128bitPow10" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L266"
        if ((_q > (55 : stdgo.GoInt) : Bool)) {
            {
                final __tmp__0 = false;
                final __tmp__1 = false;
                final __tmp__2 = false;
                _dl0 = @:binopAssign __tmp__0;
                _dc0 = @:binopAssign __tmp__1;
                _du0 = @:binopAssign __tmp__2;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L270"
        if (((_q < (0 : stdgo.GoInt) : Bool) && (_q >= (-24 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L273"
            if (stdgo._internal.strconv.Strconv__divisiblebypower5._divisibleByPower5(_ml, -_q)) {
                _dl0 = true;
            };
            //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L276"
            if (stdgo._internal.strconv.Strconv__divisiblebypower5._divisibleByPower5(_mc, -_q)) {
                _dc0 = true;
            };
            //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L279"
            if (stdgo._internal.strconv.Strconv__divisiblebypower5._divisibleByPower5(_mu, -_q)) {
                _du0 = true;
            };
        };
        var _extra = @:assignType (-_e2 : stdgo.GoUInt);
        var _extraMask = @:assignType ((((1i64 : stdgo.GoUInt64) << _extra : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var __0 = @:assignType (_dl >> _extra : stdgo.GoUInt64), __1 = @:assignType (_dl & _extraMask : stdgo.GoUInt64);
var _fracl = __1, _dl = __0;
        var __0 = @:assignType (_dc >> _extra : stdgo.GoUInt64), __1 = @:assignType (_dc & _extraMask : stdgo.GoUInt64);
var _fracc = __1, _dc = __0;
        var __0 = @:assignType (_du >> _extra : stdgo.GoUInt64), __1 = @:assignType (_du & _extraMask : stdgo.GoUInt64);
var _fracu = __1, _du = __0;
        var _uok = @:assignType (!_du0 || (_fracu > (0i64 : stdgo.GoUInt64) : Bool) : Bool);
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L296"
        if ((_du0 && (_fracu == (0i64 : stdgo.GoUInt64)) : Bool)) {
            _uok = (_mant & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == ((0i64 : stdgo.GoUInt64));
        };
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L299"
        if (!_uok) {
            //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L300"
            _du--;
        };
        var _cup = @:assignType (false : Bool);
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L305"
        if (_dc0) {
            _cup = ((_fracc > ((1i64 : stdgo.GoUInt64) << ((_extra - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt64) : Bool) || (((_fracc == ((1i64 : stdgo.GoUInt64) << ((_extra - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt64)) && ((_dc & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == (1i64 : stdgo.GoUInt64)) : Bool)) : Bool);
        } else {
            _cup = (_fracc >> ((_extra - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt64) == ((1i64 : stdgo.GoUInt64));
        };
        var _lok = @:assignType ((_dl0 && _fracl == ((0i64 : stdgo.GoUInt64)) : Bool) && ((_mant & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == (0i64 : stdgo.GoUInt64)) : Bool);
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L319"
        if (!_lok) {
            //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L320"
            _dl++;
        };
        var _c0 = @:assignType (_dc0 && (_fracc == (0i64 : stdgo.GoUInt64)) : Bool);
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L325"
        stdgo._internal.strconv.Strconv__ryudigits._ryuDigits(_d, _dl, _dc, _du, _c0, _cup);
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dp = ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dp - (_q) : stdgo.GoInt);
    }

package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function _roundShortest(_d:stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimal.T_decimal>, _mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _flt:stdgo.Ref<stdgo._internal.strconv.Strconv_t_floatinfo.T_floatInfo>):Void {
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L238"
        if (_mant == ((0i64 : stdgo.GoUInt64))) {
            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nd = (0 : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L240"
            return;
        };
        var _minexp = @:assignType ((@:checkr _flt ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bias + (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L258"
        if (((_exp > _minexp : Bool) && (((332 : stdgo.GoInt) * (((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dp - (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nd : stdgo.GoInt)) : stdgo.GoInt) >= ((100 : stdgo.GoInt) * ((_exp - ((@:checkr _flt ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mantbits : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L260"
            return;
        };
        var _upper = (stdgo.Go.setRef(({} : stdgo._internal.strconv.Strconv_t_decimal.T_decimal), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstrconvdotstrconv_t_decimaldott_decimal.__type__stdgodot_internaldotstrconvdotStrconv_t_decimaldotT_decimal })) : stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimal.T_decimal>);
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L267"
        _upper.assign(((_mant * (2i64 : stdgo.GoUInt64) : stdgo.GoUInt64) + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64));
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L268"
        _upper.shift(((_exp - ((@:checkr _flt ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mantbits : stdgo.GoInt) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt));
        var _mantlo:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _explo:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L278"
        if (((_mant > ((1i64 : stdgo.GoUInt64) << (@:checkr _flt ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mantbits : stdgo.GoUInt64) : Bool) || (_exp == _minexp) : Bool)) {
            _mantlo = (_mant - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            _explo = _exp;
        } else {
            _mantlo = ((_mant * (2i64 : stdgo.GoUInt64) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            _explo = (_exp - (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _lower = (stdgo.Go.setRef(({} : stdgo._internal.strconv.Strconv_t_decimal.T_decimal), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstrconvdotstrconv_t_decimaldott_decimal.__type__stdgodot_internaldotstrconvdotStrconv_t_decimaldotT_decimal })) : stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimal.T_decimal>);
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L286"
        _lower.assign(((_mantlo * (2i64 : stdgo.GoUInt64) : stdgo.GoUInt64) + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64));
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L287"
        _lower.shift(((_explo - ((@:checkr _flt ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mantbits : stdgo.GoInt) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt));
        var _inclusive = @:assignType ((_mant % (2i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == ((0i64 : stdgo.GoUInt64)) : Bool);
        var _upperdelta:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L309"
        {
            var _ui = @:assignType (0 : stdgo.GoInt);
            while (true) {
                var _mi = @:assignType ((_ui - (@:checkr _upper ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dp : stdgo.GoInt) + (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dp : stdgo.GoInt);
//"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L314"
                if ((_mi >= (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nd : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L315"
                    break;
                };
var _li = @:assignType ((_ui - (@:checkr _upper ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dp : stdgo.GoInt) + (@:checkr _lower ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dp : stdgo.GoInt);
var _l = @:assignType ((48 : stdgo.GoUInt8) : stdgo.GoUInt8);
//"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L319"
                if (((_li >= (0 : stdgo.GoInt) : Bool) && (_li < (@:checkr _lower ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nd : Bool) : Bool)) {
                    _l = (@:checkr _lower ?? throw stdgo.Error._nullPointerDereference.__underlying__())._d[(_li : stdgo.GoInt)];
                };
var _m = @:assignType ((48 : stdgo.GoUInt8) : stdgo.GoUInt8);
//"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L323"
                if ((_mi >= (0 : stdgo.GoInt) : Bool)) {
                    _m = (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._d[(_mi : stdgo.GoInt)];
                };
var _u = @:assignType ((48 : stdgo.GoUInt8) : stdgo.GoUInt8);
//"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L327"
                if ((_ui < (@:checkr _upper ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nd : Bool)) {
                    _u = (@:checkr _upper ?? throw stdgo.Error._nullPointerDereference.__underlying__())._d[(_ui : stdgo.GoInt)];
                };
var _okdown = @:assignType ((_l != _m) || (_inclusive && (_li + (1 : stdgo.GoInt) : stdgo.GoInt) == ((@:checkr _lower ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nd) : Bool) : Bool);
//"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L336"
                if (((_upperdelta == (0 : stdgo.GoUInt8)) && ((_m + (1 : stdgo.GoUInt8) : stdgo.GoUInt8) < _u : Bool) : Bool)) {
                    _upperdelta = (2 : stdgo.GoUInt8);
                } else if (((_upperdelta == (0 : stdgo.GoUInt8)) && (_m != _u) : Bool)) {
                    _upperdelta = (1 : stdgo.GoUInt8);
                } else if (((_upperdelta == (1 : stdgo.GoUInt8)) && (((_m != (57 : stdgo.GoUInt8)) || (_u != (48 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                    _upperdelta = (2 : stdgo.GoUInt8);
                };
var _okup = @:assignType ((_upperdelta > (0 : stdgo.GoUInt8) : Bool) && (((_inclusive || (_upperdelta > (1 : stdgo.GoUInt8) : Bool) : Bool) || ((_ui + (1 : stdgo.GoInt) : stdgo.GoInt) < (@:checkr _upper ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nd : Bool) : Bool)) : Bool);
//"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L359"
                if ((_okdown && _okup : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L361"
                    _d.round((_mi + (1 : stdgo.GoInt) : stdgo.GoInt));
                    //"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L362"
                    return;
                } else if (_okdown) {
                    //"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L364"
                    _d.roundDown((_mi + (1 : stdgo.GoInt) : stdgo.GoInt));
                    //"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L365"
                    return;
                } else if (_okup) {
                    //"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L367"
                    _d.roundUp((_mi + (1 : stdgo.GoInt) : stdgo.GoInt));
                    //"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L368"
                    return;
                };
                _ui++;
            };
        };
    }

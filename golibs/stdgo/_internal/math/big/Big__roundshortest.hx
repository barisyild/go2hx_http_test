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
function _roundShortest(_d:stdgo.Ref<stdgo._internal.math.big.Big_t_decimal.T_decimal>, _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/math/big/ftoa.go#L171"
        if (((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mant.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/ftoa.go#L172"
            return;
        };
        var _mant = @:assignType ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._set((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mant) : stdgo._internal.math.big.Big_t_nat.T_nat);
        var _exp = @:assignType (((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._exp : stdgo.GoInt) - _mant._bitLen() : stdgo.GoInt);
        var _s = @:assignType (_mant._bitLen() - (((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prec + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/math/big/ftoa.go#L189"
        if ((_s < (0 : stdgo.GoInt) : Bool)) {
            _mant = _mant._shl(_mant, (-_s : stdgo.GoUInt));
        } else if ((_s > (0 : stdgo.GoInt) : Bool)) {
            _mant = _mant._shr(_mant, (_s : stdgo.GoUInt));
        };
        _exp = (_exp + (_s) : stdgo.GoInt);
        var _lower:stdgo._internal.math.big.Big_t_decimal.T_decimal = ({} : stdgo._internal.math.big.Big_t_decimal.T_decimal);
        var _tmp:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
        //"file:///Users/o/.go/go1.21.3/src/math/big/ftoa.go#L201"
        _lower._init(_tmp._sub(_mant, stdgo._internal.math.big.Big__natone._natOne), _exp);
        var _upper:stdgo._internal.math.big.Big_t_decimal.T_decimal = ({} : stdgo._internal.math.big.Big_t_decimal.T_decimal);
        //"file:///Users/o/.go/go1.21.3/src/math/big/ftoa.go#L205"
        _upper._init(_tmp._add(_mant, stdgo._internal.math.big.Big__natone._natOne), _exp);
        var _inclusive = @:assignType ((_mant[(0 : stdgo.GoInt)] & (2u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word) == ((0u32 : stdgo._internal.math.big.Big_word.Word)) : Bool);
        //"file:///Users/o/.go/go1.21.3/src/math/big/ftoa.go#L214"
        if ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mant != null) for (_i => _m in (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mant) {
            var _l = @:assignType (_lower._at(_i) : stdgo.GoUInt8);
            var _u = @:assignType (_upper._at(_i) : stdgo.GoUInt8);
            var _okdown = @:assignType ((_l != _m) || (_inclusive && (_i + (1 : stdgo.GoInt) : stdgo.GoInt) == ((_lower._mant.length)) : Bool) : Bool);
            var _okup = @:assignType ((_m != _u) && (((_inclusive || ((_m + (1 : stdgo.GoUInt8) : stdgo.GoUInt8) < _u : Bool) : Bool) || ((_i + (1 : stdgo.GoInt) : stdgo.GoInt) < (_upper._mant.length) : Bool) : Bool)) : Bool);
            //"file:///Users/o/.go/go1.21.3/src/math/big/ftoa.go#L229"
            if ((_okdown && _okup : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/math/big/ftoa.go#L231"
                _d._round((_i + (1 : stdgo.GoInt) : stdgo.GoInt));
                //"file:///Users/o/.go/go1.21.3/src/math/big/ftoa.go#L232"
                return;
            } else if (_okdown) {
                //"file:///Users/o/.go/go1.21.3/src/math/big/ftoa.go#L234"
                _d._roundDown((_i + (1 : stdgo.GoInt) : stdgo.GoInt));
                //"file:///Users/o/.go/go1.21.3/src/math/big/ftoa.go#L235"
                return;
            } else if (_okup) {
                //"file:///Users/o/.go/go1.21.3/src/math/big/ftoa.go#L237"
                _d._roundUp((_i + (1 : stdgo.GoInt) : stdgo.GoInt));
                //"file:///Users/o/.go/go1.21.3/src/math/big/ftoa.go#L238"
                return;
            };
        };
    }

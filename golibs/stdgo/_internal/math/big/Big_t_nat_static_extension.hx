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
@:keep @:allow(stdgo._internal.math.big.Big.T_nat_asInterface) class T_nat_static_extension {
    @:keep
    @:tdfield
    static public function _probablyPrimeLucas( _n:stdgo._internal.math.big.Big_t_nat.T_nat):Bool {
        @:recv var _n:stdgo._internal.math.big.Big_t_nat.T_nat = _n;
        //"file:///Users/o/.go/go1.21.3/src/math/big/prime.go#L152"
        if (((_n.length == (0 : stdgo.GoInt)) || (_n._cmp(stdgo._internal.math.big.Big__natone._natOne) == (0 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/prime.go#L153"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/prime.go#L157"
        if ((_n[(0 : stdgo.GoInt)] & (1u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word) == ((0u32 : stdgo._internal.math.big.Big_word.Word))) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/prime.go#L158"
            return _n._cmp(stdgo._internal.math.big.Big__nattwo._natTwo) == ((0 : stdgo.GoInt));
        };
        var _p = @:assignType ((3u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word);
        var _d = @:assignType (new stdgo.Slice<stdgo._internal.math.big.Big_word.Word>(1, 1, ...[(1u32 : stdgo._internal.math.big.Big_word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_t_nat.T_nat);
        var _t1 = @:assignType ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat) : stdgo._internal.math.big.Big_t_nat.T_nat);
        var _intD = (stdgo.Go.setRef(({ _abs : _d } : stdgo._internal.math.big.Big_int_.Int_), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _intN = (stdgo.Go.setRef(({ _abs : _n } : stdgo._internal.math.big.Big_int_.Int_), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        //"file:///Users/o/.go/go1.21.3/src/math/big/prime.go#L173"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/prime.go#L174"
            if ((_p > (10000u32 : stdgo._internal.math.big.Big_word.Word) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/math/big/prime.go#L177"
                throw new stdgo.AnyInterface((("math/big: internal error: cannot find (D/n) = -1 for " : stdgo.GoString) + (_intN.string() : stdgo.GoString).__copy__() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
_d[(0 : stdgo.GoInt)] = ((_p * _p : stdgo._internal.math.big.Big_word.Word) - (4u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word);
var _j = @:assignType (stdgo._internal.math.big.Big_jacobi.jacobi(_intD, _intN) : stdgo.GoInt);
//"file:///Users/o/.go/go1.21.3/src/math/big/prime.go#L181"
            if (_j == ((-1 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/math/big/prime.go#L182"
                break;
            };
//"file:///Users/o/.go/go1.21.3/src/math/big/prime.go#L184"
            if (_j == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/math/big/prime.go#L190"
                return ((_n.length == (1 : stdgo.GoInt)) && (_n[(0 : stdgo.GoInt)] == (_p + (2u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word)) : Bool);
            };
//"file:///Users/o/.go/go1.21.3/src/math/big/prime.go#L192"
            if (_p == ((40u32 : stdgo._internal.math.big.Big_word.Word))) {
                _t1 = _t1._sqrt(_n);
                _t1 = _t1._sqr(_t1);
                //"file:///Users/o/.go/go1.21.3/src/math/big/prime.go#L198"
                if (_t1._cmp(_n) == ((0 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/math/big/prime.go#L199"
                    return false;
                };
            };
            _p++;
        };
        var _s = @:assignType ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._add(_n, stdgo._internal.math.big.Big__natone._natOne) : stdgo._internal.math.big.Big_t_nat.T_nat);
        var _r = @:assignType (_s._trailingZeroBits() : stdgo.GoInt);
        _s = _s._shr(_s, (_r : stdgo.GoUInt));
        var _nm2 = @:assignType ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._sub(_n, stdgo._internal.math.big.Big__nattwo._natTwo) : stdgo._internal.math.big.Big_t_nat.T_nat);
        var _natP = @:assignType ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._setWord(_p) : stdgo._internal.math.big.Big_t_nat.T_nat);
        var _vk = @:assignType ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._setWord((2u32 : stdgo._internal.math.big.Big_word.Word)) : stdgo._internal.math.big.Big_t_nat.T_nat);
        var _vk1 = @:assignType ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._setWord(_p) : stdgo._internal.math.big.Big_t_nat.T_nat);
        var _t2 = @:assignType ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat) : stdgo._internal.math.big.Big_t_nat.T_nat);
        //"file:///Users/o/.go/go1.21.3/src/math/big/prime.go#L253"
        {
            var _i = @:assignType (_s._bitLen() : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/math/big/prime.go#L254"
                if (_s._bit((_i : stdgo.GoUInt)) != ((0u32 : stdgo.GoUInt))) {
                    _t1 = _t1._mul(_vk, _vk1);
                    _t1 = _t1._add(_t1, _n);
                    _t1 = _t1._sub(_t1, _natP);
                    {
                        var __tmp__ = _t2._div(_vk, _t1, _n);
                        _t2 = @:tmpset0 __tmp__._0;
                        _vk = @:tmpset0 __tmp__._1;
                    };
                    _t1 = _t1._sqr(_vk1);
                    _t1 = _t1._add(_t1, _nm2);
                    {
                        var __tmp__ = _t2._div(_vk1, _t1, _n);
                        _t2 = @:tmpset0 __tmp__._0;
                        _vk1 = @:tmpset0 __tmp__._1;
                    };
                } else {
                    _t1 = _t1._mul(_vk, _vk1);
                    _t1 = _t1._add(_t1, _n);
                    _t1 = _t1._sub(_t1, _natP);
                    {
                        var __tmp__ = _t2._div(_vk1, _t1, _n);
                        _t2 = @:tmpset0 __tmp__._0;
                        _vk1 = @:tmpset0 __tmp__._1;
                    };
                    _t1 = _t1._sqr(_vk);
                    _t1 = _t1._add(_t1, _nm2);
                    {
                        var __tmp__ = _t2._div(_vk, _t1, _n);
                        _t2 = @:tmpset0 __tmp__._0;
                        _vk = @:tmpset0 __tmp__._1;
                    };
                };
                _i--;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/prime.go#L280"
        if (((_vk._cmp(stdgo._internal.math.big.Big__nattwo._natTwo) == (0 : stdgo.GoInt)) || (_vk._cmp(_nm2) == (0 : stdgo.GoInt)) : Bool)) {
            var _t1 = @:assignType (_t1._mul(_vk, _natP) : stdgo._internal.math.big.Big_t_nat.T_nat);
            var _t2 = @:assignType (_t2._shl(_vk1, (1u32 : stdgo.GoUInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
            //"file:///Users/o/.go/go1.21.3/src/math/big/prime.go#L290"
            if ((_t1._cmp(_t2) < (0 : stdgo.GoInt) : Bool)) {
                {
                    final __tmp__0 = _t2;
                    final __tmp__1 = _t1;
                    _t1 = @:binopAssign __tmp__0;
                    _t2 = @:binopAssign __tmp__1;
                };
            };
            _t1 = _t1._sub(_t1, _t2);
            var _t3 = @:assignType (_vk1 : stdgo._internal.math.big.Big_t_nat.T_nat);
            _vk1 = null;
            _vk1;
            {
                var __tmp__ = _t2._div(_t3, _t1, _n);
                _t2 = @:tmpset0 __tmp__._0;
                _t3 = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/math/big/prime.go#L298"
            if ((_t3.length) == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/math/big/prime.go#L299"
                return true;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/prime.go#L304"
        {
            var _t = @:assignType (0 : stdgo.GoInt);
            while ((_t < (_r - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/math/big/prime.go#L305"
                if ((_vk.length) == ((0 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/math/big/prime.go#L306"
                    return true;
                };
//"file:///Users/o/.go/go1.21.3/src/math/big/prime.go#L310"
                if (((_vk.length == (1 : stdgo.GoInt)) && (_vk[(0 : stdgo.GoInt)] == (2u32 : stdgo._internal.math.big.Big_word.Word)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/math/big/prime.go#L311"
                    return false;
                };
_t1 = _t1._sqr(_vk);
_t1 = _t1._sub(_t1, stdgo._internal.math.big.Big__nattwo._natTwo);
{
                    var __tmp__ = _t2._div(_vk, _t1, _n);
                    _t2 = @:tmpset0 __tmp__._0;
                    _vk = @:tmpset0 __tmp__._1;
                };
                _t++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/prime.go#L319"
        return false;
    }
    @:keep
    @:tdfield
    static public function _probablyPrimeMillerRabin( _n:stdgo._internal.math.big.Big_t_nat.T_nat, _reps:stdgo.GoInt, _force2:Bool):Bool {
        @:recv var _n:stdgo._internal.math.big.Big_t_nat.T_nat = _n;
        var _y_289:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
        var _rand_287:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand> = (null : stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>);
        var _nm3_286:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
        var _q_285:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
        var _k_284:stdgo.GoUInt = (0 : stdgo.GoUInt);
        var _nm1_283:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
        var nextRandomBreak = false;
        var _j_293:stdgo.GoUInt = (0 : stdgo.GoUInt);
        var _i_292:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nm3Len_291:stdgo.GoInt = (0 : stdgo.GoInt);
        var _quotient_290:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
        var _x_288:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _nm1_283 = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._sub(_n, stdgo._internal.math.big.Big__natone._natOne);
                    _k_284 = _nm1_283._trailingZeroBits();
                    _q_285 = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._shr(_nm1_283, _k_284);
                    _nm3_286 = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._sub(_nm1_283, stdgo._internal.math.big.Big__nattwo._natTwo);
                    _rand_287 = stdgo._internal.math.rand.Rand_new_.new_(stdgo._internal.math.rand.Rand_newsource.newSource((_n[(0 : stdgo.GoInt)] : stdgo.GoInt64)));
                    _nm3Len_291 = _nm3_286._bitLen();
                    _gotoNext = 5134092i64;
                } else if (__value__ == (5134092i64)) {
                    _i_292 = (0 : stdgo.GoInt);
                    nextRandomBreak = false;
                    _gotoNext = 5134105i64;
                } else if (__value__ == (5134105i64)) {
                    //"file://#L0"
                    if (!nextRandomBreak && ((_i_292 < _reps : Bool))) {
                        _gotoNext = 5134131i64;
                    } else {
                        _gotoNext = 5134562i64;
                    };
                } else if (__value__ == (5134131i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/math/big/prime.go#L100"
                    if (((_i_292 == (_reps - (1 : stdgo.GoInt) : stdgo.GoInt)) && _force2 : Bool)) {
                        _gotoNext = 5134160i64;
                    } else {
                        _gotoNext = 5134192i64;
                    };
                } else if (__value__ == (5134160i64)) {
                    _x_288 = _x_288._set(stdgo._internal.math.big.Big__nattwo._natTwo);
                    _gotoNext = 5134259i64;
                } else if (__value__ == (5134192i64)) {
                    _gotoNext = 5134192i64;
                    _x_288 = _x_288._random(_rand_287, _nm3_286, _nm3Len_291);
                    _x_288 = _x_288._add(_x_288, stdgo._internal.math.big.Big__nattwo._natTwo);
                    0i64;
                    _gotoNext = 5134259i64;
                } else if (__value__ == (5134259i64)) {
                    _y_289 = _y_289._expNN(_x_288, _q_285, _n, false);
                    //"file:///Users/o/.go/go1.21.3/src/math/big/prime.go#L107"
                    if (((_y_289._cmp(stdgo._internal.math.big.Big__natone._natOne) == (0 : stdgo.GoInt)) || (_y_289._cmp(_nm1_283) == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5134330i64;
                    } else {
                        _gotoNext = 5134350i64;
                    };
                } else if (__value__ == (5134330i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/math/big/prime.go#L99"
                    _i_292++;
                    _gotoNext = 5134105i64;
                } else if (__value__ == (5134350i64)) {
                    _j_293 = (1u32 : stdgo.GoUInt);
                    _gotoNext = 5134350i64;
                    //"file://#L0"
                    if ((_j_293 < _k_284 : Bool)) {
                        _gotoNext = 5134379i64;
                    } else {
                        _gotoNext = 5134544i64;
                    };
                } else if (__value__ == (5134375i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/math/big/prime.go#L110"
                    _j_293++;
                    _gotoNext = 5134350i64;
                } else if (__value__ == (5134379i64)) {
                    _y_289 = _y_289._sqr(_y_289);
                    {
                        var __tmp__ = _quotient_290._div(_y_289, _y_289, _n);
                        _quotient_290 = @:tmpset0 __tmp__._0;
                        _y_289 = @:tmpset0 __tmp__._1;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/math/big/prime.go#L113"
                    if (_y_289._cmp(_nm1_283) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5134458i64;
                    } else {
                        _gotoNext = 5134492i64;
                    };
                } else if (__value__ == (5134458i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/math/big/prime.go#L99"
                    _i_292++;
                    _gotoNext = 5134105i64;
                } else if (__value__ == (5134492i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/math/big/prime.go#L116"
                    if (_y_289._cmp(stdgo._internal.math.big.Big__natone._natOne) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5134514i64;
                    } else {
                        _gotoNext = 5134375i64;
                    };
                } else if (__value__ == (5134514i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/math/big/prime.go#L117"
                    return false;
                    _gotoNext = 5134375i64;
                } else if (__value__ == (5134544i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/math/big/prime.go#L120"
                    return false;
                    //"file:///Users/o/.go/go1.21.3/src/math/big/prime.go#L99"
                    _i_292++;
                    _gotoNext = 5134105i64;
                } else if (__value__ == (5134562i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/math/big/prime.go#L123"
                    return true;
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw new stdgo.AnyInterface(("unreachable goto control flow" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.invalidType));
    }
    @:keep
    @:tdfield
    static public function _divRecursiveStep( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _u:stdgo._internal.math.big.Big_t_nat.T_nat, _v:stdgo._internal.math.big.Big_t_nat.T_nat, _depth:stdgo.GoInt, _tmp:stdgo.Ref<stdgo._internal.math.big.Big_t_nat.T_nat>, _temps:stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_t_nat.T_nat>>):Void {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        _u = _u._norm();
        _v = _v._norm();
        //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L760"
        if ((_u.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L761"
            _z._clear();
            //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L762"
            return;
        };
        var _n = @:assignType (_v.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L767"
        if ((_n < (100 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L768"
            _z._divBasic(_u, _v);
            //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L769"
            return;
        };
        var _m = @:assignType ((_u.length) - _n : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L774"
        if ((_m < (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L775"
            return;
        };
        var b = @:assignType (_n / (2 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L787"
        if (({
            final value = _temps[(_depth : stdgo.GoInt)];
            (value == null || (value : Dynamic).__nil__);
        })) {
            _temps[(_depth : stdgo.GoInt)] = stdgo._internal.math.big.Big__getnat._getNat(_n);
        } else {
            @:_1 (_temps[(_depth : stdgo.GoInt)] : stdgo._internal.math.big.Big_t_nat.T_nat).__setData__((@:checkr _temps[(_depth : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__())._make((b + (1 : stdgo.GoInt) : stdgo.GoInt)));
        };
        var _j = @:assignType (_m : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L800"
        while ((_j > b : Bool)) {
            var _s = @:assignType ((b - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
            var _uu = @:assignType (_u.__slice__((_j - b : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
            var _qhat = @:assignType (_temps[(_depth : stdgo.GoInt)] : stdgo._internal.math.big.Big_t_nat.T_nat);
            //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L819"
            _qhat._clear();
            //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L820"
            _qhat._divRecursiveStep((_uu.__slice__(_s, (b + _n : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat), (_v.__slice__(_s) : stdgo._internal.math.big.Big_t_nat.T_nat), (_depth + (1 : stdgo.GoInt) : stdgo.GoInt), _tmp, _temps);
            _qhat = _qhat._norm();
            var _qhatv = @:assignType ((@:checkr _tmp ?? throw stdgo.Error._nullPointerDereference.__underlying__())._make(((3 : stdgo.GoInt) * _n : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
            //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L836"
            _qhatv._clear();
            _qhatv = _qhatv._mul(_qhat, (_v.__slice__(0, _s) : stdgo._internal.math.big.Big_t_nat.T_nat));
            //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L838"
            {
                var _i = @:assignType (0 : stdgo.GoInt);
                while ((_i < (2 : stdgo.GoInt) : Bool)) {
                    var _e = @:assignType (_qhatv._cmp(_uu._norm()) : stdgo.GoInt);
//"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L840"
                    if ((_e <= (0 : stdgo.GoInt) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L841"
                        break;
                    };
//"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L843"
                    stdgo._internal.math.big.Big__subvw._subVW(_qhat, _qhat, (1u32 : stdgo._internal.math.big.Big_word.Word));
var _c = @:assignType (stdgo._internal.math.big.Big__subvv._subVV((_qhatv.__slice__(0, _s) : stdgo._internal.math.big.Big_t_nat.T_nat), (_qhatv.__slice__(0, _s) : stdgo._internal.math.big.Big_t_nat.T_nat), (_v.__slice__(0, _s) : stdgo._internal.math.big.Big_t_nat.T_nat)) : stdgo._internal.math.big.Big_word.Word);
//"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L845"
                    if (((_qhatv.length) > _s : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L846"
                        stdgo._internal.math.big.Big__subvw._subVW((_qhatv.__slice__(_s) : stdgo._internal.math.big.Big_t_nat.T_nat), (_qhatv.__slice__(_s) : stdgo._internal.math.big.Big_t_nat.T_nat), _c);
                    };
//"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L848"
                    stdgo._internal.math.big.Big__addat._addAt((_uu.__slice__(_s) : stdgo._internal.math.big.Big_t_nat.T_nat), (_v.__slice__(_s) : stdgo._internal.math.big.Big_t_nat.T_nat), (0 : stdgo.GoInt));
                    _i++;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L850"
            if ((_qhatv._cmp(_uu._norm()) > (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L851"
                throw new stdgo.AnyInterface(("impossible" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
            var _c = @:assignType (stdgo._internal.math.big.Big__subvv._subVV((_uu.__slice__(0, (_qhatv.length)) : stdgo._internal.math.big.Big_t_nat.T_nat), (_uu.__slice__(0, (_qhatv.length)) : stdgo._internal.math.big.Big_t_nat.T_nat), _qhatv) : stdgo._internal.math.big.Big_word.Word);
            //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L854"
            if ((_c > (0u32 : stdgo._internal.math.big.Big_word.Word) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L855"
                stdgo._internal.math.big.Big__subvw._subVW((_uu.__slice__((_qhatv.length)) : stdgo._internal.math.big.Big_t_nat.T_nat), (_uu.__slice__((_qhatv.length)) : stdgo._internal.math.big.Big_t_nat.T_nat), _c);
            };
            //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L857"
            stdgo._internal.math.big.Big__addat._addAt(_z, _qhat, (_j - b : stdgo.GoInt));
            _j = (_j - (b) : stdgo.GoInt);
        };
        var _s = @:assignType (b - (1 : stdgo.GoInt) : stdgo.GoInt);
        var _qhat = @:assignType (_temps[(_depth : stdgo.GoInt)] : stdgo._internal.math.big.Big_t_nat.T_nat);
        //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L867"
        _qhat._clear();
        //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L868"
        _qhat._divRecursiveStep((_u.__slice__(_s) : stdgo._internal.math.big.Big_t_nat.T_nat)._norm(), (_v.__slice__(_s) : stdgo._internal.math.big.Big_t_nat.T_nat), (_depth + (1 : stdgo.GoInt) : stdgo.GoInt), _tmp, _temps);
        _qhat = _qhat._norm();
        var _qhatv = @:assignType ((@:checkr _tmp ?? throw stdgo.Error._nullPointerDereference.__underlying__())._make(((3 : stdgo.GoInt) * _n : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
        //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L871"
        _qhatv._clear();
        _qhatv = _qhatv._mul(_qhat, (_v.__slice__(0, _s) : stdgo._internal.math.big.Big_t_nat.T_nat));
        //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L874"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (2 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L875"
                {
                    var _e = @:assignType (_qhatv._cmp(_u._norm()) : stdgo.GoInt);
                    if ((_e > (0 : stdgo.GoInt) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L876"
                        stdgo._internal.math.big.Big__subvw._subVW(_qhat, _qhat, (1u32 : stdgo._internal.math.big.Big_word.Word));
                        var _c = @:assignType (stdgo._internal.math.big.Big__subvv._subVV((_qhatv.__slice__(0, _s) : stdgo._internal.math.big.Big_t_nat.T_nat), (_qhatv.__slice__(0, _s) : stdgo._internal.math.big.Big_t_nat.T_nat), (_v.__slice__(0, _s) : stdgo._internal.math.big.Big_t_nat.T_nat)) : stdgo._internal.math.big.Big_word.Word);
                        //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L878"
                        if (((_qhatv.length) > _s : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L879"
                            stdgo._internal.math.big.Big__subvw._subVW((_qhatv.__slice__(_s) : stdgo._internal.math.big.Big_t_nat.T_nat), (_qhatv.__slice__(_s) : stdgo._internal.math.big.Big_t_nat.T_nat), _c);
                        };
                        //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L881"
                        stdgo._internal.math.big.Big__addat._addAt((_u.__slice__(_s) : stdgo._internal.math.big.Big_t_nat.T_nat), (_v.__slice__(_s) : stdgo._internal.math.big.Big_t_nat.T_nat), (0 : stdgo.GoInt));
                    };
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L884"
        if ((_qhatv._cmp(_u._norm()) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L885"
            throw new stdgo.AnyInterface(("impossible" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        var _c = @:assignType (stdgo._internal.math.big.Big__subvv._subVV((_u.__slice__((0 : stdgo.GoInt), (_qhatv.length)) : stdgo._internal.math.big.Big_t_nat.T_nat), (_u.__slice__((0 : stdgo.GoInt), (_qhatv.length)) : stdgo._internal.math.big.Big_t_nat.T_nat), _qhatv) : stdgo._internal.math.big.Big_word.Word);
        //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L888"
        if ((_c > (0u32 : stdgo._internal.math.big.Big_word.Word) : Bool)) {
            _c = stdgo._internal.math.big.Big__subvw._subVW((_u.__slice__((_qhatv.length)) : stdgo._internal.math.big.Big_t_nat.T_nat), (_u.__slice__((_qhatv.length)) : stdgo._internal.math.big.Big_t_nat.T_nat), _c);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L891"
        if ((_c > (0u32 : stdgo._internal.math.big.Big_word.Word) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L892"
            throw new stdgo.AnyInterface(("impossible" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L896"
        stdgo._internal.math.big.Big__addat._addAt(_z, _qhat._norm(), (0 : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function _divRecursive( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _u:stdgo._internal.math.big.Big_t_nat.T_nat, _v:stdgo._internal.math.big.Big_t_nat.T_nat):Void {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        var _recDepth = @:assignType ((2 : stdgo.GoInt) * stdgo._internal.math.bits.Bits_len.len((_v.length : stdgo.GoUInt)) : stdgo.GoInt);
        var _tmp = stdgo._internal.math.big.Big__getnat._getNat(((3 : stdgo.GoInt) * (_v.length) : stdgo.GoInt));
        var _temps = (new stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_t_nat.T_nat>>((_recDepth : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_t_nat.T_nat>>);
        //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L737"
        _z._clear();
        //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L738"
        _z._divRecursiveStep(_u, _v, (0 : stdgo.GoInt), _tmp, _temps);
        //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L741"
        if (_temps != null) for (__7 => _n in _temps) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L742"
            if (({
                final value = _n;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L743"
                stdgo._internal.math.big.Big__putnat._putNat(_n);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L746"
        stdgo._internal.math.big.Big__putnat._putNat(_tmp);
    }
    @:keep
    @:tdfield
    static public function _divBasic( _q:stdgo._internal.math.big.Big_t_nat.T_nat, _u:stdgo._internal.math.big.Big_t_nat.T_nat, _v:stdgo._internal.math.big.Big_t_nat.T_nat):Void {
        @:recv var _q:stdgo._internal.math.big.Big_t_nat.T_nat = _q;
        var _n = @:assignType (_v.length : stdgo.GoInt);
        var _m = @:assignType ((_u.length) - _n : stdgo.GoInt);
        var _qhatvp = stdgo._internal.math.big.Big__getnat._getNat((_n + (1 : stdgo.GoInt) : stdgo.GoInt));
        var _qhatv = @:assignType (_qhatvp : stdgo._internal.math.big.Big_t_nat.T_nat);
        var _vn1 = @:assignType (_v[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo._internal.math.big.Big_word.Word);
        var _rec = @:assignType (stdgo._internal.math.big.Big__reciprocalword._reciprocalWord(_vn1) : stdgo._internal.math.big.Big_word.Word);
        //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L646"
        {
            var _j = @:assignType (_m : stdgo.GoInt);
            while ((_j >= (0 : stdgo.GoInt) : Bool)) {
                var _qhat = @:assignType ((-1u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word);
var _ujn:stdgo._internal.math.big.Big_word.Word = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word);
//"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L651"
                if (((_j + _n : stdgo.GoInt) < (_u.length) : Bool)) {
                    _ujn = _u[(_j + _n : stdgo.GoInt)];
                };
//"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L658"
                if (_ujn != (_vn1)) {
                    var _rhat:stdgo._internal.math.big.Big_word.Word = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word);
                    {
                        var __tmp__ = stdgo._internal.math.big.Big__divww._divWW(_ujn, _u[((_j + _n : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)], _vn1, _rec);
                        _qhat = @:tmpset0 __tmp__._0;
                        _rhat = @:tmpset0 __tmp__._1;
                    };
                    var _vn2 = @:assignType (_v[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)] : stdgo._internal.math.big.Big_word.Word);
                    var __tmp__ = stdgo._internal.math.big.Big__mulww._mulWW(_qhat, _vn2), _x1:stdgo._internal.math.big.Big_word.Word = __tmp__._0, _x2:stdgo._internal.math.big.Big_word.Word = __tmp__._1;
                    var _ujn2 = @:assignType (_u[((_j + _n : stdgo.GoInt) - (2 : stdgo.GoInt) : stdgo.GoInt)] : stdgo._internal.math.big.Big_word.Word);
                    //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L666"
                    while (stdgo._internal.math.big.Big__greaterthan._greaterThan(_x1, _x2, _rhat, _ujn2)) {
                        //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L667"
                        _qhat--;
                        var _prevRhat = @:assignType (_rhat : stdgo._internal.math.big.Big_word.Word);
                        _rhat = (_rhat + (_vn1) : stdgo._internal.math.big.Big_word.Word);
                        //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L672"
                        if ((_rhat < _prevRhat : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L673"
                            break;
                        };
                        {
                            var __tmp__ = stdgo._internal.math.big.Big__mulww._mulWW(_qhat, _vn2);
                            _x1 = @:tmpset0 __tmp__._0;
                            _x2 = @:tmpset0 __tmp__._1;
                        };
                    };
                };
_qhatv[(_n : stdgo.GoInt)] = stdgo._internal.math.big.Big__muladdvww._mulAddVWW((_qhatv.__slice__((0 : stdgo.GoInt), _n) : stdgo._internal.math.big.Big_t_nat.T_nat), _v, _qhat, (0u32 : stdgo._internal.math.big.Big_word.Word));
var _qhl = @:assignType (_qhatv.length : stdgo.GoInt);
//"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L684"
                if ((((_j + _qhl : stdgo.GoInt) > (_u.length) : Bool) && (_qhatv[(_n : stdgo.GoInt)] == (0u32 : stdgo._internal.math.big.Big_word.Word)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L685"
                    _qhl--;
                };
var _c = @:assignType (stdgo._internal.math.big.Big__subvv._subVV((_u.__slice__(_j, (_j + _qhl : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat), (_u.__slice__(_j) : stdgo._internal.math.big.Big_t_nat.T_nat), _qhatv) : stdgo._internal.math.big.Big_word.Word);
//"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L692"
                if (_c != ((0u32 : stdgo._internal.math.big.Big_word.Word))) {
                    var _c = @:assignType (stdgo._internal.math.big.Big__addvv._addVV((_u.__slice__(_j, (_j + _n : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat), (_u.__slice__(_j) : stdgo._internal.math.big.Big_t_nat.T_nat), _v) : stdgo._internal.math.big.Big_word.Word);
                    //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L696"
                    if ((_n < _qhl : Bool)) {
                        _u[(_j + _n : stdgo.GoInt)] = (_u[(_j + _n : stdgo.GoInt)] + (_c) : stdgo._internal.math.big.Big_word.Word);
                    };
                    //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L699"
                    _qhat--;
                };
//"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L704"
                if (((_j == (_m) && _m == ((_q.length)) : Bool) && (_qhat == (0u32 : stdgo._internal.math.big.Big_word.Word)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L705"
                    {
                        _j--;
                        continue;
                    };
                };
_q[(_j : stdgo.GoInt)] = _qhat;
                _j--;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L710"
        stdgo._internal.math.big.Big__putnat._putNat(_qhatvp);
    }
    @:keep
    @:tdfield
    static public function _divLarge( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _u:stdgo._internal.math.big.Big_t_nat.T_nat, _uIn:stdgo._internal.math.big.Big_t_nat.T_nat, _vIn:stdgo._internal.math.big.Big_t_nat.T_nat):{ var _0 : stdgo._internal.math.big.Big_t_nat.T_nat; var _1 : stdgo._internal.math.big.Big_t_nat.T_nat; } {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        var _q = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat), _r = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
        var _n = @:assignType (_vIn.length : stdgo.GoInt);
        var _m = @:assignType ((_uIn.length) - _n : stdgo.GoInt);
        var _shift = @:assignType (stdgo._internal.math.big.Big__nlz._nlz(_vIn[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoUInt);
        var _vp = stdgo._internal.math.big.Big__getnat._getNat(_n);
        var _v = @:assignType (_vp : stdgo._internal.math.big.Big_t_nat.T_nat);
        //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L603"
        stdgo._internal.math.big.Big__shlvu._shlVU(_v, _vIn, _shift);
        _u = _u._make(((_uIn.length) + (1 : stdgo.GoInt) : stdgo.GoInt));
        _u[(_uIn.length : stdgo.GoInt)] = stdgo._internal.math.big.Big__shlvu._shlVU((_u.__slice__((0 : stdgo.GoInt), (_uIn.length)) : stdgo._internal.math.big.Big_t_nat.T_nat), _uIn, _shift);
        //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L609"
        if (stdgo._internal.math.big.Big__alias._alias(_z, _u)) {
            _z = null;
        };
        _q = _z._make((_m + (1 : stdgo.GoInt) : stdgo.GoInt));
        //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L615"
        if ((_n < (100 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L616"
            _q._divBasic(_u, _v);
        } else {
            //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L618"
            _q._divRecursive(_u, _v);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L620"
        stdgo._internal.math.big.Big__putnat._putNat(_vp);
        _q = _q._norm();
        //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L625"
        stdgo._internal.math.big.Big__shrvu._shrVU(_u, _u, _shift);
        _r = _u._norm();
        //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L628"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.math.big.Big_t_nat.T_nat; var _1 : stdgo._internal.math.big.Big_t_nat.T_nat; } = { _0 : _q, _1 : _r };
            _q = __tmp__._0;
            _r = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _modW( _x:stdgo._internal.math.big.Big_t_nat.T_nat, _d:stdgo._internal.math.big.Big_word.Word):stdgo._internal.math.big.Big_word.Word {
        @:recv var _x:stdgo._internal.math.big.Big_t_nat.T_nat = _x;
        var _r = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word);
        var _q:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
        _q = _q._make((_x.length));
        //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L569"
        return _r = stdgo._internal.math.big.Big__divwvw._divWVW(_q, (0u32 : stdgo._internal.math.big.Big_word.Word), _x, _d);
    }
    @:keep
    @:tdfield
    static public function _divW( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_t_nat.T_nat, _y:stdgo._internal.math.big.Big_word.Word):{ var _0 : stdgo._internal.math.big.Big_t_nat.T_nat; var _1 : stdgo._internal.math.big.Big_word.Word; } {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        var _q = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat), _r = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word);
        var _m = @:assignType (_x.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L547"
        if (_y == ((0u32 : stdgo._internal.math.big.Big_word.Word))) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L549"
            throw new stdgo.AnyInterface(("division by zero" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        } else if (_y == ((1u32 : stdgo._internal.math.big.Big_word.Word))) {
            _q = _z._set(_x);
            //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L552"
            return { _0 : _q, _1 : _r };
        } else if (_m == ((0 : stdgo.GoInt))) {
            _q = (_z.__slice__(0, (0 : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
            //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L555"
            return { _0 : _q, _1 : _r };
        };
        _z = _z._make(_m);
        _r = stdgo._internal.math.big.Big__divwvw._divWVW(_z, (0u32 : stdgo._internal.math.big.Big_word.Word), _x, _y);
        _q = _z._norm();
        //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L561"
        return { _0 : _q, _1 : _r };
    }
    @:keep
    @:tdfield
    static public function _div( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _z2:stdgo._internal.math.big.Big_t_nat.T_nat, _u:stdgo._internal.math.big.Big_t_nat.T_nat, _v:stdgo._internal.math.big.Big_t_nat.T_nat):{ var _0 : stdgo._internal.math.big.Big_t_nat.T_nat; var _1 : stdgo._internal.math.big.Big_t_nat.T_nat; } {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        var _q = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat), _r = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
        //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L519"
        if ((_v.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L520"
            throw new stdgo.AnyInterface(("division by zero" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L523"
        if ((_u._cmp(_v) < (0 : stdgo.GoInt) : Bool)) {
            _q = (_z.__slice__(0, (0 : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
            _r = _z2._set(_u);
            //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L526"
            return { _0 : _q, _1 : _r };
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L529"
        if ((_v.length) == ((1 : stdgo.GoInt))) {
            var _r2:stdgo._internal.math.big.Big_word.Word = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word);
            {
                var __tmp__ = _z._divW(_u, _v[(0 : stdgo.GoInt)]);
                _q = @:tmpset0 __tmp__._0;
                _r2 = @:tmpset0 __tmp__._1;
            };
            _r = _z2._setWord(_r2);
            //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L535"
            return { _0 : _q, _1 : _r };
        };
        {
            var __tmp__ = _z._divLarge(_z2, _u, _v);
            _q = @:tmpset0 __tmp__._0;
            _r = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L539"
        return { _0 : _q, _1 : _r };
    }
    @:keep
    @:tdfield
    static public function _rem( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _u:stdgo._internal.math.big.Big_t_nat.T_nat, _v:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        var _r = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
        //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L506"
        if (stdgo._internal.math.big.Big__alias._alias(_z, _u)) {
            _z = null;
        };
        var _qp = stdgo._internal.math.big.Big__getnat._getNat((0 : stdgo.GoInt));
        var __tmp__ = (@:checkr _qp ?? throw stdgo.Error._nullPointerDereference.__underlying__())._div(_z, _u, _v), _q:stdgo._internal.math.big.Big_t_nat.T_nat = __tmp__._0, _r:stdgo._internal.math.big.Big_t_nat.T_nat = __tmp__._1;
        @:_1 (_qp : stdgo._internal.math.big.Big_t_nat.T_nat).__setData__(_q);
        //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L512"
        stdgo._internal.math.big.Big__putnat._putNat(_qp);
        //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L513"
        return _r;
    }
    @:keep
    @:tdfield
    static public function _expWW( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_word.Word, _y:stdgo._internal.math.big.Big_word.Word):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L455"
        return _z._expNN((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._setWord(_x), (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._setWord(_y), null, false);
    }
    @:keep
    @:tdfield
    static public function _convertWords( _q:stdgo._internal.math.big.Big_t_nat.T_nat, _s:stdgo.Slice<stdgo.GoUInt8>, _b:stdgo._internal.math.big.Big_word.Word, _ndigits:stdgo.GoInt, _bb:stdgo._internal.math.big.Big_word.Word, _table:stdgo.Slice<stdgo._internal.math.big.Big_t_divisor.T_divisor>):Void {
        @:recv var _q:stdgo._internal.math.big.Big_t_nat.T_nat = _q;
        //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L370"
        if (_table != null) {
            var _r:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
            var _index = @:assignType ((_table.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L374"
            while (((_q.length) > stdgo._internal.math.big.Big__leafsize._leafSize : Bool)) {
                var _maxLength = @:assignType (_q._bitLen() : stdgo.GoInt);
                var _minLength = @:assignType (_maxLength >> (1i64 : stdgo.GoUInt64) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L378"
                while (((_index > (0 : stdgo.GoInt) : Bool) && (_table[(_index - (1 : stdgo.GoInt) : stdgo.GoInt)]._nbits > _minLength : Bool) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L379"
                    _index--;
                };
                //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L381"
                if (((_table[(_index : stdgo.GoInt)]._nbits >= _maxLength : Bool) && (_table[(_index : stdgo.GoInt)]._bbb._cmp(_q) >= (0 : stdgo.GoInt) : Bool) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L382"
                    _index--;
                    //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L383"
                    if ((_index < (0 : stdgo.GoInt) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L384"
                        throw new stdgo.AnyInterface(("internal inconsistency" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                    };
                };
                {
                    var __tmp__ = _q._div(_r, _q, _table[(_index : stdgo.GoInt)]._bbb);
                    _q = @:tmpset0 __tmp__._0;
                    _r = @:tmpset0 __tmp__._1;
                };
                var _h = @:assignType ((_s.length) - _table[(_index : stdgo.GoInt)]._ndigits : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L393"
                _r._convertWords((_s.__slice__(_h) : stdgo.Slice<stdgo.GoUInt8>), _b, _ndigits, _bb, (_table.__slice__((0 : stdgo.GoInt), _index) : stdgo.Slice<stdgo._internal.math.big.Big_t_divisor.T_divisor>));
                _s = (_s.__slice__(0, _h) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        var _i = @:assignType (_s.length : stdgo.GoInt);
        var _r:stdgo._internal.math.big.Big_word.Word = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word);
        //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L401"
        if (_b == ((10u32 : stdgo._internal.math.big.Big_word.Word))) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L403"
            while (((_q.length) > (0 : stdgo.GoInt) : Bool)) {
                {
                    var __tmp__ = _q._divW(_q, _bb);
                    _q = @:tmpset0 __tmp__._0;
                    _r = @:tmpset0 __tmp__._1;
                };
                //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L406"
                {
                    var _j = @:assignType (0 : stdgo.GoInt);
                    while (((_j < _ndigits : Bool) && (_i > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L407"
                        _i--;
var _t = @:assignType (_r / (10u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word);
_s[(_i : stdgo.GoInt)] = ((48 : stdgo.GoUInt8) + ((_r - (_t * (10u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word) : stdgo.GoUInt8) : stdgo.GoUInt8);
_r = _t;
                        _j++;
                    };
                };
            };
        } else {
            //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L417"
            while (((_q.length) > (0 : stdgo.GoInt) : Bool)) {
                {
                    var __tmp__ = _q._divW(_q, _bb);
                    _q = @:tmpset0 __tmp__._0;
                    _r = @:tmpset0 __tmp__._1;
                };
                //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L420"
                {
                    var _j = @:assignType (0 : stdgo.GoInt);
                    while (((_j < _ndigits : Bool) && (_i > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L421"
                        _i--;
_s[(_i : stdgo.GoInt)] = ("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ" : stdgo.GoString)[((_r % _b : stdgo._internal.math.big.Big_word.Word) : stdgo.GoInt)];
_r = (_r / (_b) : stdgo._internal.math.big.Big_word.Word);
                        _j++;
                    };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L429"
        while ((_i > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L430"
            _i--;
            _s[(_i : stdgo.GoInt)] = (48 : stdgo.GoUInt8);
        };
    }
    @:keep
    @:tdfield
    static public function _itoa( _x:stdgo._internal.math.big.Big_t_nat.T_nat, _neg:Bool, _base:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _x:stdgo._internal.math.big.Big_t_nat.T_nat = _x;
        //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L264"
        if (((_base < (2 : stdgo.GoInt) : Bool) || (_base > (62 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L265"
            throw new stdgo.AnyInterface(("invalid base" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L269"
        if ((_x.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L270"
            return ((("0" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _i = @:assignType ((((_x._bitLen() : stdgo.GoFloat64) / stdgo._internal.math.Math_log2.log2((_base : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L276"
        if (_neg) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L277"
            _i++;
        };
        var _s = (new stdgo.Slice<stdgo.GoUInt8>((_i : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L282"
        {
            var _b = @:assignType (_base : stdgo._internal.math.big.Big_word.Word);
            if (_b == ((_b & -_b : stdgo._internal.math.big.Big_word.Word))) {
                var _shift = @:assignType (stdgo._internal.math.bits.Bits_trailingzeros.trailingZeros((_b : stdgo.GoUInt)) : stdgo.GoUInt);
                var _mask = @:assignType ((((1u32 : stdgo._internal.math.big.Big_word.Word) << _shift : stdgo._internal.math.big.Big_word.Word) - (1u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word);
                var _w = @:assignType (_x[(0 : stdgo.GoInt)] : stdgo._internal.math.big.Big_word.Word);
                var _nbits = @:assignType ((32u32 : stdgo.GoUInt) : stdgo.GoUInt);
                //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L290"
                {
                    var _k = @:assignType (1 : stdgo.GoInt);
                    while ((_k < (_x.length) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L292"
                        while ((_nbits >= _shift : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L293"
                            _i--;
                            _s[(_i : stdgo.GoInt)] = ("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ" : stdgo.GoString)[((_w & _mask : stdgo._internal.math.big.Big_word.Word) : stdgo.GoInt)];
                            _w = (_w >> (_shift) : stdgo._internal.math.big.Big_word.Word);
                            _nbits = (_nbits - (_shift) : stdgo.GoUInt);
                        };
//"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L300"
                        if (_nbits == ((0u32 : stdgo.GoUInt))) {
                            _w = _x[(_k : stdgo.GoInt)];
                            _nbits = (32u32 : stdgo.GoUInt);
                        } else {
                            _w = (_w | ((_x[(_k : stdgo.GoInt)] << _nbits : stdgo._internal.math.big.Big_word.Word)) : stdgo._internal.math.big.Big_word.Word);
                            //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L307"
                            _i--;
                            _s[(_i : stdgo.GoInt)] = ("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ" : stdgo.GoString)[((_w & _mask : stdgo._internal.math.big.Big_word.Word) : stdgo.GoInt)];
                            _w = (_x[(_k : stdgo.GoInt)] >> ((_shift - _nbits : stdgo.GoUInt)) : stdgo._internal.math.big.Big_word.Word);
                            _nbits = ((32u32 : stdgo.GoUInt) - ((_shift - _nbits : stdgo.GoUInt)) : stdgo.GoUInt);
                        };
                        _k++;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L317"
                while (_w != ((0u32 : stdgo._internal.math.big.Big_word.Word))) {
                    //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L318"
                    _i--;
                    _s[(_i : stdgo.GoInt)] = ("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ" : stdgo.GoString)[((_w & _mask : stdgo._internal.math.big.Big_word.Word) : stdgo.GoInt)];
                    _w = (_w >> (_shift) : stdgo._internal.math.big.Big_word.Word);
                };
            } else {
                var __tmp__ = stdgo._internal.math.big.Big__maxpow._maxPow(_b), _bb:stdgo._internal.math.big.Big_word.Word = __tmp__._0, _ndigits:stdgo.GoInt = __tmp__._1;
                var _table = stdgo._internal.math.big.Big__divisors._divisors((_x.length), _b, _ndigits, _bb);
                var _q = @:assignType ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._set(_x) : stdgo._internal.math.big.Big_t_nat.T_nat);
                //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L334"
                _q._convertWords(_s, _b, _ndigits, _bb, _table);
                _i = (0 : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L340"
                while (_s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                    //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L341"
                    _i++;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L345"
        if (_neg) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L346"
            _i--;
            _s[(_i : stdgo.GoInt)] = (45 : stdgo.GoUInt8);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L350"
        return (_s.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function _utoa( _x:stdgo._internal.math.big.Big_t_nat.T_nat, _base:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _x:stdgo._internal.math.big.Big_t_nat.T_nat = _x;
        //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L259"
        return _x._itoa(false, _base);
    }
    @:keep
    @:tdfield
    static public function _scan( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _r:stdgo._internal.io.Io_bytescanner.ByteScanner, _base:stdgo.GoInt, _fracOk:Bool):{ var _0 : stdgo._internal.math.big.Big_t_nat.T_nat; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo.Error; } {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        var _res = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat), _b = (0 : stdgo.GoInt), _count = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _baseOk = @:assignType ((_base == ((0 : stdgo.GoInt)) || ((!_fracOk && ((2 : stdgo.GoInt) <= _base : Bool) : Bool) && (_base <= (62 : stdgo.GoInt) : Bool) : Bool) : Bool) || (_fracOk && ((((_base == ((2 : stdgo.GoInt)) || _base == ((8 : stdgo.GoInt)) : Bool) || _base == ((10 : stdgo.GoInt)) : Bool) || (_base == (16 : stdgo.GoInt)) : Bool)) : Bool) : Bool);
        //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L113"
        if (!_baseOk) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L114"
            throw new stdgo.AnyInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("invalid number base %d" : stdgo.GoString), new stdgo.AnyInterface(_base, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        var _prev = @:assignType (46 : stdgo.GoInt32);
        var _invalSep = @:assignType (false : Bool);
        var __tmp__ = _r.readByte(), _ch:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        var __0 = @:assignType (_base : stdgo.GoInt), __1 = @:assignType (0 : stdgo.GoInt);
var _prefix = __1, _b = __0;
        //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L129"
        if (_base == ((0 : stdgo.GoInt))) {
            _b = (10 : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L132"
            if (((_err == null) && (_ch == (48 : stdgo.GoUInt8)) : Bool)) {
                _prev = (48 : stdgo.GoInt32);
                _count = (1 : stdgo.GoInt);
                {
                    var __tmp__ = _r.readByte();
                    _ch = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L136"
                if (_err == null) {
                    //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L138"
                    {
                        final __value__ = _ch;
                        if (__value__ == ((98 : stdgo.GoUInt8)) || __value__ == ((66 : stdgo.GoUInt8))) {
                            {
                                final __tmp__0 = (2 : stdgo.GoInt);
                                final __tmp__1 = (98 : stdgo.GoInt);
                                _b = @:binopAssign __tmp__0;
                                _prefix = @:binopAssign __tmp__1;
                            };
                        } else if (__value__ == ((111 : stdgo.GoUInt8)) || __value__ == ((79 : stdgo.GoUInt8))) {
                            {
                                final __tmp__0 = (8 : stdgo.GoInt);
                                final __tmp__1 = (111 : stdgo.GoInt);
                                _b = @:binopAssign __tmp__0;
                                _prefix = @:binopAssign __tmp__1;
                            };
                        } else if (__value__ == ((120 : stdgo.GoUInt8)) || __value__ == ((88 : stdgo.GoUInt8))) {
                            {
                                final __tmp__0 = (16 : stdgo.GoInt);
                                final __tmp__1 = (120 : stdgo.GoInt);
                                _b = @:binopAssign __tmp__0;
                                _prefix = @:binopAssign __tmp__1;
                            };
                        } else {
                            //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L146"
                            if (!_fracOk) {
                                {
                                    final __tmp__0 = (8 : stdgo.GoInt);
                                    final __tmp__1 = (48 : stdgo.GoInt);
                                    _b = @:binopAssign __tmp__0;
                                    _prefix = @:binopAssign __tmp__1;
                                };
                            };
                        };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L150"
                    if (_prefix != ((0 : stdgo.GoInt))) {
                        _count = (0 : stdgo.GoInt);
                        //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L152"
                        if (_prefix != ((48 : stdgo.GoInt))) {
                            {
                                var __tmp__ = _r.readByte();
                                _ch = @:tmpset0 __tmp__._0;
                                _err = @:tmpset0 __tmp__._1;
                            };
                        };
                    };
                };
            };
        };
        _z = (_z.__slice__(0, (0 : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
        var _b1 = @:assignType (_b : stdgo._internal.math.big.Big_word.Word);
        var __tmp__ = stdgo._internal.math.big.Big__maxpow._maxPow(_b1), _bn:stdgo._internal.math.big.Big_word.Word = __tmp__._0, _n:stdgo.GoInt = __tmp__._1;
        var _di = @:assignType ((0u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word);
        var _i = @:assignType (0 : stdgo.GoInt);
        var _dp = @:assignType (-1 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L170"
        while (_err == null) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L171"
            if (((_ch == (46 : stdgo.GoUInt8)) && _fracOk : Bool)) {
                _fracOk = false;
                //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L173"
                if (_prev == ((95 : stdgo.GoInt32))) {
                    _invalSep = true;
                };
                _prev = (46 : stdgo.GoInt32);
                _dp = _count;
            } else if (((_ch == (95 : stdgo.GoUInt8)) && (_base == (0 : stdgo.GoInt)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L179"
                if (_prev != ((48 : stdgo.GoInt32))) {
                    _invalSep = true;
                };
                _prev = (95 : stdgo.GoInt32);
            } else {
                var _d1:stdgo._internal.math.big.Big_word.Word = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word);
                //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L186"
                if ((((48 : stdgo.GoUInt8) <= _ch : Bool) && (_ch <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                    _d1 = ((_ch - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo._internal.math.big.Big_word.Word);
                } else if ((((97 : stdgo.GoUInt8) <= _ch : Bool) && (_ch <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                    _d1 = (((_ch - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo._internal.math.big.Big_word.Word);
                } else if ((((65 : stdgo.GoUInt8) <= _ch : Bool) && (_ch <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L192"
                    if ((_b <= (36 : stdgo.GoInt) : Bool)) {
                        _d1 = (((_ch - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo._internal.math.big.Big_word.Word);
                    } else {
                        _d1 = (((_ch - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (36 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo._internal.math.big.Big_word.Word);
                    };
                } else {
                    _d1 = (63u32 : stdgo._internal.math.big.Big_word.Word);
                };
                //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L200"
                if ((_d1 >= _b1 : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L201"
                    _r.unreadByte();
                    //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L202"
                    break;
                };
                _prev = (48 : stdgo.GoInt32);
                //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L205"
                _count++;
                _di = ((_di * _b1 : stdgo._internal.math.big.Big_word.Word) + _d1 : stdgo._internal.math.big.Big_word.Word);
                //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L209"
                _i++;
                //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L212"
                if (_i == (_n)) {
                    _z = _z._mulAddWW(_z, _bn, _di);
                    _di = (0u32 : stdgo._internal.math.big.Big_word.Word);
                    _i = (0 : stdgo.GoInt);
                };
            };
            {
                var __tmp__ = _r.readByte();
                _ch = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L222"
        if (({
            final __t__ = _err;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }) == (({
            final __t__ = stdgo._internal.io.Io_eof.eOF;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }))) {
            _err = (null : stdgo.Error);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L227"
        if (((_err == null) && ((_invalSep || (_prev == (95 : stdgo.GoInt32)) : Bool)) : Bool)) {
            _err = stdgo._internal.math.big.Big__errinvalsep._errInvalSep;
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L231"
        if (_count == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L233"
            if (_prefix == ((48 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L236"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.math.big.Big_t_nat.T_nat; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo.Error; } = { _0 : (_z.__slice__(0, (0 : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat), _1 : (10 : stdgo.GoInt), _2 : (1 : stdgo.GoInt), _3 : _err };
                    _res = __tmp__._0;
                    _b = __tmp__._1;
                    _count = __tmp__._2;
                    _err = __tmp__._3;
                    __tmp__;
                };
            };
            _err = stdgo._internal.math.big.Big__errnodigits._errNoDigits;
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L242"
        if ((_i > (0 : stdgo.GoInt) : Bool)) {
            _z = _z._mulAddWW(_z, stdgo._internal.math.big.Big__pow._pow(_b1, _i), _di);
        };
        _res = _z._norm();
        //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L248"
        if ((_dp >= (0 : stdgo.GoInt) : Bool)) {
            _count = (_dp - _count : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L253"
        return { _0 : _res, _1 : _b, _2 : _count, _3 : _err };
    }
    @:keep
    @:tdfield
    static public function _subMod2N( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_t_nat.T_nat, _y:stdgo._internal.math.big.Big_t_nat.T_nat, _n:stdgo.GoUInt):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1400"
        if (((_x._bitLen() : stdgo.GoUInt) > _n : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1401"
            if (stdgo._internal.math.big.Big__alias._alias(_z, _x)) {
                _x = _x._trunc(_x, _n);
            } else {
                _x = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._trunc(_x, _n);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1408"
        if (((_y._bitLen() : stdgo.GoUInt) > _n : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1409"
            if (stdgo._internal.math.big.Big__alias._alias(_z, _y)) {
                _y = _y._trunc(_y, _n);
            } else {
                _y = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._trunc(_y, _n);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1416"
        if ((_x._cmp(_y) >= (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1417"
            return _z._sub(_x, _y);
        };
        _z = _z._sub(_y, _x);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1421"
        while ((((_z.length : stdgo.GoUInt) * (32u32 : stdgo.GoUInt) : stdgo.GoUInt) < _n : Bool)) {
            _z = (_z.__append__((0u32 : stdgo._internal.math.big.Big_word.Word)) : stdgo._internal.math.big.Big_t_nat.T_nat);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1424"
        if (_z != null) for (_i => _ in _z) {
            _z[(_i : stdgo.GoInt)] = (-1 ^ _z[(_i : stdgo.GoInt)]);
        };
        _z = _z._trunc(_z, _n);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1428"
        return _z._add(_z, stdgo._internal.math.big.Big__natone._natOne);
    }
    @:keep
    @:tdfield
    static public function _sqrt( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1366"
        if ((_x._cmp(stdgo._internal.math.big.Big__natone._natOne) <= (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1367"
            return _z._set(_x);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1369"
        if (stdgo._internal.math.big.Big__alias._alias(_z, _x)) {
            _z = null;
        };
        var _z1:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat), _z2:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
        _z1 = _z;
        _z1 = _z1._setUint64((1i64 : stdgo.GoUInt64));
        _z1 = _z1._shl(_z1, (((_x._bitLen() + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) / (2u32 : stdgo.GoUInt) : stdgo.GoUInt));
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1382"
        {
            var _n = @:assignType (0 : stdgo.GoInt);
            while (true) {
                {
                    var __tmp__ = _z2._div(null, _x, _z1);
                    _z2 = @:tmpset0 __tmp__._0;
                };
_z2 = _z2._add(_z2, _z1);
_z2 = _z2._shr(_z2, (1u32 : stdgo.GoUInt));
//"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1386"
                if ((_z2._cmp(_z1) >= (0 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1389"
                    if ((_n & (1 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1390"
                        return _z1;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1392"
                    return _z._set(_z1);
                };
{
                    final __tmp__0 = _z2;
                    final __tmp__1 = _z1;
                    _z1 = @:binopAssign __tmp__0;
                    _z2 = @:binopAssign __tmp__1;
                };
                _n++;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _setBytes( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _buf:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        _z = _z._make((((((_buf.length) + (4 : stdgo.GoInt) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)) / (4 : stdgo.GoInt) : stdgo.GoInt));
        var _i = @:assignType (_buf.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1348"
        {
            var _k = @:assignType (0 : stdgo.GoInt);
            while ((_i >= (4 : stdgo.GoInt) : Bool)) {
                _z[(_k : stdgo.GoInt)] = stdgo._internal.math.big.Big__bigendianword._bigEndianWord((_buf.__slice__((_i - (4 : stdgo.GoInt) : stdgo.GoInt), _i) : stdgo.Slice<stdgo.GoUInt8>));
_i = (_i - ((4 : stdgo.GoInt)) : stdgo.GoInt);
                _k++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1352"
        if ((_i > (0 : stdgo.GoInt) : Bool)) {
            var _d:stdgo._internal.math.big.Big_word.Word = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word);
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1354"
            {
                var _s = @:assignType ((0u32 : stdgo.GoUInt) : stdgo.GoUInt);
                while ((_i > (0 : stdgo.GoInt) : Bool)) {
                    _d = (_d | (((_buf[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo._internal.math.big.Big_word.Word) << _s : stdgo._internal.math.big.Big_word.Word)) : stdgo._internal.math.big.Big_word.Word);
//"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1356"
                    _i--;
                    _s = (_s + ((8u32 : stdgo.GoUInt)) : stdgo.GoUInt);
                };
            };
            _z[((_z.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] = _d;
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1361"
        return _z._norm();
    }
    @:keep
    @:tdfield
    static public function _bytes( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _buf:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        var _i = (0 : stdgo.GoInt);
        _i = (_buf.length);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1312"
        if (_z != null) for (__7 => _d in _z) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1313"
            {
                var _j = @:assignType (0 : stdgo.GoInt);
                while ((_j < (4 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1314"
                    _i--;
//"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1315"
                    if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                        _buf[(_i : stdgo.GoInt)] = (_d : stdgo.GoUInt8);
                    } else if ((_d : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1318"
                        throw new stdgo.AnyInterface(("math/big: buffer too small to fit value" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                    };
_d = (_d >> ((8i64 : stdgo.GoUInt64)) : stdgo._internal.math.big.Big_word.Word);
                    _j++;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1324"
        if ((_i < (0 : stdgo.GoInt) : Bool)) {
            _i = (0 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1327"
        while (((_i < (_buf.length) : Bool) && (_buf[(_i : stdgo.GoInt)] == (0 : stdgo.GoUInt8)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1328"
            _i++;
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1331"
        return _i;
    }
    @:keep
    @:tdfield
    static public function _expNNMontgomery( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_t_nat.T_nat, _y:stdgo._internal.math.big.Big_t_nat.T_nat, _m:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        var _numWords = @:assignType (_m.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1217"
        if (((_x.length) > _numWords : Bool)) {
            {
                var __tmp__ = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._div(null, _x, _m);
                _x = @:tmpset0 __tmp__._1;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1221"
        if (((_x.length) < _numWords : Bool)) {
            var _rr = @:assignType (new stdgo.Slice<stdgo._internal.math.big.Big_word.Word>((_numWords : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo._internal.math.big.Big_t_nat.T_nat);
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1223"
            _rr.__copyTo__(_x);
            _x = _rr;
        };
        var _k0 = @:assignType ((2u32 : stdgo._internal.math.big.Big_word.Word) - _m[(0 : stdgo.GoInt)] : stdgo._internal.math.big.Big_word.Word);
        var _t = @:assignType (_m[(0 : stdgo.GoInt)] - (1u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1232"
        {
            var _i = @:assignType (1 : stdgo.GoInt);
            while ((_i < (32 : stdgo.GoInt) : Bool)) {
                _t = (_t * (_t) : stdgo._internal.math.big.Big_word.Word);
_k0 = (_k0 * ((_t + (1u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word)) : stdgo._internal.math.big.Big_word.Word);
                _i = (_i << ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt);
            };
        };
        _k0 = -_k0;
        var rR = @:assignType ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._setWord((1u32 : stdgo._internal.math.big.Big_word.Word)) : stdgo._internal.math.big.Big_t_nat.T_nat);
        var _zz = @:assignType ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._shl(rR, ((((2 : stdgo.GoInt) * _numWords : stdgo.GoInt) * (32 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
        {
            var __tmp__ = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._div(rR, _zz, _m);
            rR = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1242"
        if (((rR.length) < _numWords : Bool)) {
            _zz = _zz._make(_numWords);
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1244"
            _zz.__copyTo__(rR);
            rR = _zz;
        };
        var _one = @:assignType (new stdgo.Slice<stdgo._internal.math.big.Big_word.Word>((_numWords : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo._internal.math.big.Big_t_nat.T_nat);
        _one[(0 : stdgo.GoInt)] = (1u32 : stdgo._internal.math.big.Big_word.Word);
        {};
        var _powers:stdgo.GoArray<stdgo._internal.math.big.Big_t_nat.T_nat> = new stdgo.GoArray<stdgo._internal.math.big.Big_t_nat.T_nat>(16, 16);
        _powers[(0 : stdgo.GoInt)] = _powers[(0 : stdgo.GoInt)]._montgomery(_one, rR, _m, _k0, _numWords);
        _powers[(1 : stdgo.GoInt)] = _powers[(1 : stdgo.GoInt)]._montgomery(_x, rR, _m, _k0, _numWords);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1256"
        {
            var _i = @:assignType (2 : stdgo.GoInt);
            while ((_i < (16 : stdgo.GoInt) : Bool)) {
                _powers[(_i : stdgo.GoInt)] = _powers[(_i : stdgo.GoInt)]._montgomery(_powers[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)], _powers[(1 : stdgo.GoInt)], _m, _k0, _numWords);
                _i++;
            };
        };
        _z = _z._make(_numWords);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1262"
        _z.__copyTo__(_powers[(0 : stdgo.GoInt)]);
        _zz = _zz._make(_numWords);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1267"
        {
            var _i = @:assignType ((_y.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                var _yi = @:assignType (_y[(_i : stdgo.GoInt)] : stdgo._internal.math.big.Big_word.Word);
//"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1269"
                {
                    var _j = @:assignType (0 : stdgo.GoInt);
                    while ((_j < (32 : stdgo.GoInt) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1270"
                        if (((_i != ((_y.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) || (_j != (0 : stdgo.GoInt)) : Bool)) {
                            _zz = _zz._montgomery(_z, _z, _m, _k0, _numWords);
                            _z = _z._montgomery(_zz, _zz, _m, _k0, _numWords);
                            _zz = _zz._montgomery(_z, _z, _m, _k0, _numWords);
                            _z = _z._montgomery(_zz, _zz, _m, _k0, _numWords);
                        };
_zz = _zz._montgomery(_z, _powers[((_yi >> (28i64 : stdgo.GoUInt64) : stdgo._internal.math.big.Big_word.Word) : stdgo.GoInt)], _m, _k0, _numWords);
{
                            final __tmp__0 = _zz;
                            final __tmp__1 = _z;
                            _z = @:binopAssign __tmp__0;
                            _zz = @:binopAssign __tmp__1;
                        };
_yi = (_yi << ((4i64 : stdgo.GoUInt64)) : stdgo._internal.math.big.Big_word.Word);
                        _j = (_j + ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    };
                };
                _i--;
            };
        };
        _zz = _zz._montgomery(_z, _one, _m, _k0, _numWords);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1286"
        if ((_zz._cmp(_m) >= (0 : stdgo.GoInt) : Bool)) {
            _zz = _zz._sub(_zz, _m);
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1295"
            if ((_zz._cmp(_m) >= (0 : stdgo.GoInt) : Bool)) {
                {
                    var __tmp__ = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._div(null, _zz, _m);
                    _zz = @:tmpset0 __tmp__._1;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1300"
        return _zz._norm();
    }
    @:keep
    @:tdfield
    static public function _expNNWindowed( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_t_nat.T_nat, _y:stdgo._internal.math.big.Big_t_nat.T_nat, _logM:stdgo.GoUInt):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1114"
        if (((_y.length) <= (1 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1115"
            throw new stdgo.AnyInterface(("big: misuse of expNNWindowed" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1117"
        if ((_x[(0 : stdgo.GoInt)] & (1u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word) == ((0u32 : stdgo._internal.math.big.Big_word.Word))) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1120"
            return _z._setWord((0u32 : stdgo._internal.math.big.Big_word.Word));
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1122"
        if (_logM == ((1u32 : stdgo.GoUInt))) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1123"
            return _z._setWord((1u32 : stdgo._internal.math.big.Big_word.Word));
        };
        var _w = @:assignType (((((_logM + (32u32 : stdgo.GoUInt) : stdgo.GoUInt) - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) / (32u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt);
        var _zzp = stdgo._internal.math.big.Big__getnat._getNat(_w);
        var _zz = @:assignType (_zzp : stdgo._internal.math.big.Big_t_nat.T_nat);
        {};
        var _powers:stdgo.GoArray<stdgo.Ref<stdgo._internal.math.big.Big_t_nat.T_nat>> = new stdgo.GoArray<stdgo.Ref<stdgo._internal.math.big.Big_t_nat.T_nat>>(16, 16);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1135"
        for (_i => _ in _powers.__copy__()) {
            _powers[(_i : stdgo.GoInt)] = stdgo._internal.math.big.Big__getnat._getNat(_w);
        };
        @:_1 (_powers[(0 : stdgo.GoInt)] : stdgo._internal.math.big.Big_t_nat.T_nat).__setData__((@:checkr _powers[(0 : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__())._set(stdgo._internal.math.big.Big__natone._natOne));
        @:_1 (_powers[(1 : stdgo.GoInt)] : stdgo._internal.math.big.Big_t_nat.T_nat).__setData__((@:checkr _powers[(1 : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trunc(_x, _logM));
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1140"
        {
            var _i = @:assignType (2 : stdgo.GoInt);
            while ((_i < (16 : stdgo.GoInt) : Bool)) {
                var __0 = _powers[(_i / (2 : stdgo.GoInt) : stdgo.GoInt)], __1 = _powers[(_i : stdgo.GoInt)], __2 = _powers[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)];
var _p1 = __2, _p = __1, _p2 = __0;
@:_1 (_p : stdgo._internal.math.big.Big_t_nat.T_nat).__setData__((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sqr((_p2 : stdgo._internal.math.big.Big_t_nat.T_nat)));
@:_1 (_p : stdgo._internal.math.big.Big_t_nat.T_nat).__setData__((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trunc((_p : stdgo._internal.math.big.Big_t_nat.T_nat), _logM));
@:_1 (_p1 : stdgo._internal.math.big.Big_t_nat.T_nat).__setData__((@:checkr _p1 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mul((_p : stdgo._internal.math.big.Big_t_nat.T_nat), _x));
@:_1 (_p1 : stdgo._internal.math.big.Big_t_nat.T_nat).__setData__((@:checkr _p1 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trunc((_p1 : stdgo._internal.math.big.Big_t_nat.T_nat), _logM));
                _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        var _i = @:assignType ((_y.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        var _mtop = @:assignType ((((_logM - (2u32 : stdgo.GoUInt) : stdgo.GoUInt)) / (32u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt);
        var _mmask = @:assignType (-1u32 : stdgo._internal.math.big.Big_word.Word);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1156"
        {
            var _mbits = @:assignType (((_logM - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) & (31u32 : stdgo.GoUInt) : stdgo.GoUInt);
            if (_mbits != ((0u32 : stdgo.GoUInt))) {
                _mmask = ((((1u32 : stdgo._internal.math.big.Big_word.Word) << _mbits : stdgo._internal.math.big.Big_word.Word)) - (1u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1159"
        if ((_i > _mtop : Bool)) {
            _i = _mtop;
        };
        var _advance = @:assignType (false : Bool);
        _z = _z._setWord((1u32 : stdgo._internal.math.big.Big_word.Word));
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1164"
        while ((_i >= (0 : stdgo.GoInt) : Bool)) {
            var _yi = @:assignType (_y[(_i : stdgo.GoInt)] : stdgo._internal.math.big.Big_word.Word);
//"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1166"
            if (_i == (_mtop)) {
                _yi = (_yi & (_mmask) : stdgo._internal.math.big.Big_word.Word);
            };
//"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1169"
            {
                var _j = @:assignType (0 : stdgo.GoInt);
                while ((_j < (32 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1170"
                    if (_advance) {
                        _zz = _zz._sqr(_z);
                        {
                            final __tmp__0 = _z;
                            final __tmp__1 = _zz;
                            _zz = @:binopAssign __tmp__0;
                            _z = @:binopAssign __tmp__1;
                        };
                        _z = _z._trunc(_z, _logM);
                        _zz = _zz._sqr(_z);
                        {
                            final __tmp__0 = _z;
                            final __tmp__1 = _zz;
                            _zz = @:binopAssign __tmp__0;
                            _z = @:binopAssign __tmp__1;
                        };
                        _z = _z._trunc(_z, _logM);
                        _zz = _zz._sqr(_z);
                        {
                            final __tmp__0 = _z;
                            final __tmp__1 = _zz;
                            _zz = @:binopAssign __tmp__0;
                            _z = @:binopAssign __tmp__1;
                        };
                        _z = _z._trunc(_z, _logM);
                        _zz = _zz._sqr(_z);
                        {
                            final __tmp__0 = _z;
                            final __tmp__1 = _zz;
                            _zz = @:binopAssign __tmp__0;
                            _z = @:binopAssign __tmp__1;
                        };
                        _z = _z._trunc(_z, _logM);
                    };
_zz = _zz._mul(_z, (_powers[((_yi >> (28i64 : stdgo.GoUInt64) : stdgo._internal.math.big.Big_word.Word) : stdgo.GoInt)] : stdgo._internal.math.big.Big_t_nat.T_nat));
{
                        final __tmp__0 = _z;
                        final __tmp__1 = _zz;
                        _zz = @:binopAssign __tmp__0;
                        _z = @:binopAssign __tmp__1;
                    };
_z = _z._trunc(_z, _logM);
_yi = (_yi << ((4i64 : stdgo.GoUInt64)) : stdgo._internal.math.big.Big_word.Word);
_advance = true;
                    _j = (_j + ((4 : stdgo.GoInt)) : stdgo.GoInt);
                };
            };
            _i--;
        };
        @:_1 (_zzp : stdgo._internal.math.big.Big_t_nat.T_nat).__setData__(_zz);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1202"
        stdgo._internal.math.big.Big__putnat._putNat(_zzp);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1203"
        for (_i => _ in _powers.__copy__()) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1204"
            stdgo._internal.math.big.Big__putnat._putNat(_powers[(_i : stdgo.GoInt)]);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1207"
        return _z._norm();
    }
    @:keep
    @:tdfield
    static public function _expNNMontgomeryEven( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_t_nat.T_nat, _y:stdgo._internal.math.big.Big_t_nat.T_nat, _m:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        var _n = @:assignType (_m._trailingZeroBits() : stdgo.GoUInt);
        var _m1 = @:assignType ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._shl(stdgo._internal.math.big.Big__natone._natOne, _n) : stdgo._internal.math.big.Big_t_nat.T_nat);
        var _m2 = @:assignType ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._shr(_m, _n) : stdgo._internal.math.big.Big_t_nat.T_nat);
        var _z1 = @:assignType ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._expNN(_x, _y, _m1, false) : stdgo._internal.math.big.Big_t_nat.T_nat);
        var _z2 = @:assignType ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._expNN(_x, _y, _m2, false) : stdgo._internal.math.big.Big_t_nat.T_nat);
        _z = _z._set(_z2);
        _z1 = _z1._subMod2N(_z1, _z2, _n);
        var _m2inv = @:assignType ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._modInverse(_m2, _m1) : stdgo._internal.math.big.Big_t_nat.T_nat);
        _z2 = _z2._mul(_z1, _m2inv);
        _z2 = _z2._trunc(_z2, _n);
        _z = _z._add(_z, _z1._mul(_z2, _m2));
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1108"
        return _z;
    }
    @:keep
    @:tdfield
    static public function _expNN( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_t_nat.T_nat, _y:stdgo._internal.math.big.Big_t_nat.T_nat, _m:stdgo._internal.math.big.Big_t_nat.T_nat, _slow:Bool):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L947"
        if ((stdgo._internal.math.big.Big__alias._alias(_z, _x) || stdgo._internal.math.big.Big__alias._alias(_z, _y) : Bool)) {
            _z = null;
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L953"
        if (((_m.length == (1 : stdgo.GoInt)) && (_m[(0 : stdgo.GoInt)] == (1u32 : stdgo._internal.math.big.Big_word.Word)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L954"
            return _z._setWord((0u32 : stdgo._internal.math.big.Big_word.Word));
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L959"
        if ((_y.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L960"
            return _z._setWord((1u32 : stdgo._internal.math.big.Big_word.Word));
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L965"
        if ((_x.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L966"
            return _z._setWord((0u32 : stdgo._internal.math.big.Big_word.Word));
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L971"
        if (((_x.length == (1 : stdgo.GoInt)) && (_x[(0 : stdgo.GoInt)] == (1u32 : stdgo._internal.math.big.Big_word.Word)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L972"
            return _z._setWord((1u32 : stdgo._internal.math.big.Big_word.Word));
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L977"
        if (((_y.length == (1 : stdgo.GoInt)) && (_y[(0 : stdgo.GoInt)] == (1u32 : stdgo._internal.math.big.Big_word.Word)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L978"
            if ((_m.length) != ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L979"
                return _z._rem(_x, _m);
            };
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L981"
            return _z._set(_x);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L985"
        if ((_m.length) != ((0 : stdgo.GoInt))) {
            _z = _z._make((_m.length));
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L994"
            if ((((_y.length) > (1 : stdgo.GoInt) : Bool) && !_slow : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L995"
                if ((_m[(0 : stdgo.GoInt)] & (1u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word) == ((1u32 : stdgo._internal.math.big.Big_word.Word))) {
                    //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L996"
                    return _z._expNNMontgomery(_x, _y, _m);
                };
                //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L998"
                {
                    var __tmp__ = _m._isPow2(), _logM:stdgo.GoUInt = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L999"
                        return _z._expNNWindowed(_x, _y, _logM);
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1001"
                return _z._expNNMontgomeryEven(_x, _y, _m);
            };
        };
        _z = _z._set(_x);
        var _v = @:assignType (_y[((_y.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo._internal.math.big.Big_word.Word);
        var _shift = @:assignType (stdgo._internal.math.big.Big__nlz._nlz(_v) + (1u32 : stdgo.GoUInt) : stdgo.GoUInt);
        _v = (_v << (_shift) : stdgo._internal.math.big.Big_word.Word);
        var _q:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
        {};
        var _w = @:assignType ((32 : stdgo.GoInt) - (_shift : stdgo.GoInt) : stdgo.GoInt);
        var _zz:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat), _r:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1021"
        {
            var _j = @:assignType (0 : stdgo.GoInt);
            while ((_j < _w : Bool)) {
                _zz = _zz._sqr(_z);
{
                    final __tmp__0 = _z;
                    final __tmp__1 = _zz;
                    _zz = @:binopAssign __tmp__0;
                    _z = @:binopAssign __tmp__1;
                };
//"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1025"
                if ((_v & (-2147483648u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word) != ((0u32 : stdgo._internal.math.big.Big_word.Word))) {
                    _zz = _zz._mul(_z, _x);
                    {
                        final __tmp__0 = _z;
                        final __tmp__1 = _zz;
                        _zz = @:binopAssign __tmp__0;
                        _z = @:binopAssign __tmp__1;
                    };
                };
//"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1030"
                if ((_m.length) != ((0 : stdgo.GoInt))) {
                    {
                        var __tmp__ = _zz._div(_r, _z, _m);
                        _zz = @:tmpset0 __tmp__._0;
                        _r = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _q;
                        final __tmp__1 = _z;
                        final __tmp__2 = _zz;
                        final __tmp__3 = _r;
                        _zz = @:binopAssign __tmp__0;
                        _r = @:binopAssign __tmp__1;
                        _q = @:binopAssign __tmp__2;
                        _z = @:binopAssign __tmp__3;
                    };
                };
_v = (_v << ((1i64 : stdgo.GoUInt64)) : stdgo._internal.math.big.Big_word.Word);
                _j++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1038"
        {
            var _i = @:assignType ((_y.length) - (2 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                _v = _y[(_i : stdgo.GoInt)];
//"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1041"
                {
                    var _j = @:assignType (0 : stdgo.GoInt);
                    while ((_j < (32 : stdgo.GoInt) : Bool)) {
                        _zz = _zz._sqr(_z);
{
                            final __tmp__0 = _z;
                            final __tmp__1 = _zz;
                            _zz = @:binopAssign __tmp__0;
                            _z = @:binopAssign __tmp__1;
                        };
//"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1045"
                        if ((_v & (-2147483648u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word) != ((0u32 : stdgo._internal.math.big.Big_word.Word))) {
                            _zz = _zz._mul(_z, _x);
                            {
                                final __tmp__0 = _z;
                                final __tmp__1 = _zz;
                                _zz = @:binopAssign __tmp__0;
                                _z = @:binopAssign __tmp__1;
                            };
                        };
//"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1050"
                        if ((_m.length) != ((0 : stdgo.GoInt))) {
                            {
                                var __tmp__ = _zz._div(_r, _z, _m);
                                _zz = @:tmpset0 __tmp__._0;
                                _r = @:tmpset0 __tmp__._1;
                            };
                            {
                                final __tmp__0 = _q;
                                final __tmp__1 = _z;
                                final __tmp__2 = _zz;
                                final __tmp__3 = _r;
                                _zz = @:binopAssign __tmp__0;
                                _r = @:binopAssign __tmp__1;
                                _q = @:binopAssign __tmp__2;
                                _z = @:binopAssign __tmp__3;
                            };
                        };
_v = (_v << ((1i64 : stdgo.GoUInt64)) : stdgo._internal.math.big.Big_word.Word);
                        _j++;
                    };
                };
                _i--;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1059"
        return _z._norm();
    }
    @:keep
    @:tdfield
    static public function _random( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _rand:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>, _limit:stdgo._internal.math.big.Big_t_nat.T_nat, _n:stdgo.GoInt):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L911"
        if (stdgo._internal.math.big.Big__alias._alias(_z, _limit)) {
            _z = null;
        };
        _z = _z._make((_limit.length));
        var _bitLengthOfMSW = @:assignType ((_n % (32 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L917"
        if (_bitLengthOfMSW == ((0u32 : stdgo.GoUInt))) {
            _bitLengthOfMSW = (32u32 : stdgo.GoUInt);
        };
        var _mask = @:assignType (((((1u32 : stdgo._internal.math.big.Big_word.Word) << _bitLengthOfMSW : stdgo._internal.math.big.Big_word.Word)) - (1u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L922"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L923"
            {
                final __value__ = (32 : stdgo.GoInt);
                if (__value__ == ((32 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L925"
                    if (_z != null) for (_i => _ in _z) {
                        _z[(_i : stdgo.GoInt)] = (_rand.uint32() : stdgo._internal.math.big.Big_word.Word);
                    };
                } else if (__value__ == ((64 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L929"
                    if (_z != null) for (_i => _ in _z) {
                        _z[(_i : stdgo.GoInt)] = ((_rand.uint32() : stdgo._internal.math.big.Big_word.Word) | ((_rand.uint32() : stdgo._internal.math.big.Big_word.Word) << (32i64 : stdgo.GoUInt64) : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word);
                    };
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L933"
                    throw new stdgo.AnyInterface(("unknown word size" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                };
            };
            _z[((_limit.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] = (_z[((_limit.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] & (_mask) : stdgo._internal.math.big.Big_word.Word);
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L936"
            if ((_z._cmp(_limit) < (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L937"
                break;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L941"
        return _z._norm();
    }
    @:keep
    @:tdfield
    static public function _xor( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_t_nat.T_nat, _y:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        var _m = @:assignType (_x.length : stdgo.GoInt);
        var _n = @:assignType (_y.length : stdgo.GoInt);
        var _s = @:assignType (_x : stdgo._internal.math.big.Big_t_nat.T_nat);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L893"
        if ((_m < _n : Bool)) {
            {
                final __tmp__0 = _m;
                final __tmp__1 = _n;
                _n = @:binopAssign __tmp__0;
                _m = @:binopAssign __tmp__1;
            };
            _s = _y;
        };
        _z = _z._make(_m);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L900"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                _z[(_i : stdgo.GoInt)] = (_x[(_i : stdgo.GoInt)] ^ _y[(_i : stdgo.GoInt)] : stdgo._internal.math.big.Big_word.Word);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L903"
        (_z.__slice__(_n, _m) : stdgo._internal.math.big.Big_t_nat.T_nat).__copyTo__((_s.__slice__(_n, _m) : stdgo._internal.math.big.Big_t_nat.T_nat));
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L905"
        return _z._norm();
    }
    @:keep
    @:tdfield
    static public function _or( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_t_nat.T_nat, _y:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        var _m = @:assignType (_x.length : stdgo.GoInt);
        var _n = @:assignType (_y.length : stdgo.GoInt);
        var _s = @:assignType (_x : stdgo._internal.math.big.Big_t_nat.T_nat);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L874"
        if ((_m < _n : Bool)) {
            {
                final __tmp__0 = _m;
                final __tmp__1 = _n;
                _n = @:binopAssign __tmp__0;
                _m = @:binopAssign __tmp__1;
            };
            _s = _y;
        };
        _z = _z._make(_m);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L881"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                _z[(_i : stdgo.GoInt)] = (_x[(_i : stdgo.GoInt)] | _y[(_i : stdgo.GoInt)] : stdgo._internal.math.big.Big_word.Word);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L884"
        (_z.__slice__(_n, _m) : stdgo._internal.math.big.Big_t_nat.T_nat).__copyTo__((_s.__slice__(_n, _m) : stdgo._internal.math.big.Big_t_nat.T_nat));
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L886"
        return _z._norm();
    }
    @:keep
    @:tdfield
    static public function _andNot( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_t_nat.T_nat, _y:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        var _m = @:assignType (_x.length : stdgo.GoInt);
        var _n = @:assignType (_y.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L856"
        if ((_n > _m : Bool)) {
            _n = _m;
        };
        _z = _z._make(_m);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L862"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                _z[(_i : stdgo.GoInt)] = (_x[(_i : stdgo.GoInt)] & ((_y[(_i : stdgo.GoInt)] ^ (-1i64 : stdgo.GoInt32) : stdgo._internal.math.big.Big_word.Word)) : stdgo._internal.math.big.Big_word.Word);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L865"
        (_z.__slice__(_n, _m) : stdgo._internal.math.big.Big_t_nat.T_nat).__copyTo__((_x.__slice__(_n, _m) : stdgo._internal.math.big.Big_t_nat.T_nat));
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L867"
        return _z._norm();
    }
    @:keep
    @:tdfield
    static public function _trunc( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_t_nat.T_nat, _n:stdgo.GoUInt):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        var _w = @:assignType ((((_n + (32u32 : stdgo.GoUInt) : stdgo.GoUInt) - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) / (32u32 : stdgo.GoUInt) : stdgo.GoUInt);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L842"
        if (((_x.length : stdgo.GoUInt) < _w : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L843"
            return _z._set(_x);
        };
        _z = _z._make((_w : stdgo.GoInt));
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L846"
        _z.__copyTo__(_x);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L847"
        if ((_n % (32u32 : stdgo.GoUInt) : stdgo.GoUInt) != ((0u32 : stdgo.GoUInt))) {
            _z[((_z.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] = (_z[((_z.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] & ((((1u32 : stdgo._internal.math.big.Big_word.Word) << ((_n % (32u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo._internal.math.big.Big_word.Word) - (1u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word)) : stdgo._internal.math.big.Big_word.Word);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L850"
        return _z._norm();
    }
    @:keep
    @:tdfield
    static public function _and( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_t_nat.T_nat, _y:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        var _m = @:assignType (_x.length : stdgo.GoInt);
        var _n = @:assignType (_y.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L826"
        if ((_m > _n : Bool)) {
            _m = _n;
        };
        _z = _z._make(_m);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L832"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < _m : Bool)) {
                _z[(_i : stdgo.GoInt)] = (_x[(_i : stdgo.GoInt)] & _y[(_i : stdgo.GoInt)] : stdgo._internal.math.big.Big_word.Word);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L836"
        return _z._norm();
    }
    @:keep
    @:tdfield
    static public function _sticky( _x:stdgo._internal.math.big.Big_t_nat.T_nat, _i:stdgo.GoUInt):stdgo.GoUInt {
        @:recv var _x:stdgo._internal.math.big.Big_t_nat.T_nat = _x;
        var _j = @:assignType (_i / (32u32 : stdgo.GoUInt) : stdgo.GoUInt);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L805"
        if ((_j >= (_x.length : stdgo.GoUInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L806"
            if ((_x.length) == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L807"
                return (0u32 : stdgo.GoUInt);
            };
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L809"
            return (1u32 : stdgo.GoUInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L812"
        if ((_x.__slice__(0, _j) : stdgo._internal.math.big.Big_t_nat.T_nat) != null) for (__7 => _x in (_x.__slice__(0, _j) : stdgo._internal.math.big.Big_t_nat.T_nat)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L813"
            if (_x != ((0u32 : stdgo._internal.math.big.Big_word.Word))) {
                //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L814"
                return (1u32 : stdgo.GoUInt);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L817"
        if ((_x[(_j : stdgo.GoInt)] << (((32u32 : stdgo.GoUInt) - (_i % (32u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo._internal.math.big.Big_word.Word) != ((0u32 : stdgo._internal.math.big.Big_word.Word))) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L818"
            return (1u32 : stdgo.GoUInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L820"
        return (0u32 : stdgo.GoUInt);
    }
    @:keep
    @:tdfield
    static public function _bit( _x:stdgo._internal.math.big.Big_t_nat.T_nat, _i:stdgo.GoUInt):stdgo.GoUInt {
        @:recv var _x:stdgo._internal.math.big.Big_t_nat.T_nat = _x;
        var _j = @:assignType (_i / (32u32 : stdgo.GoUInt) : stdgo.GoUInt);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L794"
        if ((_j >= (_x.length : stdgo.GoUInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L795"
            return (0u32 : stdgo.GoUInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L798"
        return (((_x[(_j : stdgo.GoInt)] >> ((_i % (32u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo._internal.math.big.Big_word.Word) & (1u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word) : stdgo.GoUInt);
    }
    @:keep
    @:tdfield
    static public function _setBit( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_t_nat.T_nat, _i:stdgo.GoUInt, _b:stdgo.GoUInt):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        var _j = @:assignType ((_i / (32u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt);
        var _m = @:assignType ((1u32 : stdgo._internal.math.big.Big_word.Word) << ((_i % (32u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo._internal.math.big.Big_word.Word);
        var _n = @:assignType (_x.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L766"
        {
            final __value__ = _b;
            if (__value__ == ((0u32 : stdgo.GoUInt))) {
                _z = _z._make(_n);
                //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L769"
                _z.__copyTo__(_x);
                //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L770"
                if ((_j >= _n : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L772"
                    return _z;
                };
                _z[(_j : stdgo.GoInt)] = (_z[(_j : stdgo.GoInt)] & (((_m) ^ (-1i64 : stdgo.GoInt32) : stdgo._internal.math.big.Big_word.Word)) : stdgo._internal.math.big.Big_word.Word);
                //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L775"
                return _z._norm();
            } else if (__value__ == ((1u32 : stdgo.GoUInt))) {
                //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L777"
                if ((_j >= _n : Bool)) {
                    _z = _z._make((_j + (1 : stdgo.GoInt) : stdgo.GoInt));
                    //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L779"
                    (_z.__slice__(_n) : stdgo._internal.math.big.Big_t_nat.T_nat)._clear();
                } else {
                    _z = _z._make(_n);
                };
                //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L783"
                _z.__copyTo__(_x);
                _z[(_j : stdgo.GoInt)] = (_z[(_j : stdgo.GoInt)] | (_m) : stdgo._internal.math.big.Big_word.Word);
                //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L786"
                return _z;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L788"
        throw new stdgo.AnyInterface(("set bit is not 0 or 1" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
    }
    @:keep
    @:tdfield
    static public function _shr( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_t_nat.T_nat, _s:stdgo.GoUInt):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L740"
        if (_s == ((0u32 : stdgo.GoUInt))) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L741"
            if (stdgo._internal.math.big.Big__same._same(_z, _x)) {
                //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L742"
                return _z;
            };
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L744"
            if (!stdgo._internal.math.big.Big__alias._alias(_z, _x)) {
                //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L745"
                return _z._set(_x);
            };
        };
        var _m = @:assignType (_x.length : stdgo.GoInt);
        var _n = @:assignType (_m - ((_s / (32u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L751"
        if ((_n <= (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L752"
            return (_z.__slice__(0, (0 : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
        };
        _z = _z._make(_n);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L757"
        stdgo._internal.math.big.Big__shrvu._shrVU(_z, (_x.__slice__((_m - _n : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat), (_s % (32u32 : stdgo.GoUInt) : stdgo.GoUInt));
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L759"
        return _z._norm();
    }
    @:keep
    @:tdfield
    static public function _shl( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_t_nat.T_nat, _s:stdgo.GoUInt):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L715"
        if (_s == ((0u32 : stdgo.GoUInt))) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L716"
            if (stdgo._internal.math.big.Big__same._same(_z, _x)) {
                //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L717"
                return _z;
            };
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L719"
            if (!stdgo._internal.math.big.Big__alias._alias(_z, _x)) {
                //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L720"
                return _z._set(_x);
            };
        };
        var _m = @:assignType (_x.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L725"
        if (_m == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L726"
            return (_z.__slice__(0, (0 : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
        };
        var _n = @:assignType (_m + ((_s / (32u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt) : stdgo.GoInt);
        _z = _z._make((_n + (1 : stdgo.GoInt) : stdgo.GoInt));
        _z[(_n : stdgo.GoInt)] = stdgo._internal.math.big.Big__shlvu._shlVU((_z.__slice__((_n - _m : stdgo.GoInt), _n) : stdgo._internal.math.big.Big_t_nat.T_nat), _x, (_s % (32u32 : stdgo.GoUInt) : stdgo.GoUInt));
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L733"
        (_z.__slice__((0 : stdgo.GoInt), (_n - _m : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat)._clear();
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L735"
        return _z._norm();
    }
    @:keep
    @:tdfield
    static public function _isPow2( _x:stdgo._internal.math.big.Big_t_nat.T_nat):{ var _0 : stdgo.GoUInt; var _1 : Bool; } {
        @:recv var _x:stdgo._internal.math.big.Big_t_nat.T_nat = _x;
        var _i:stdgo.GoUInt = (0 : stdgo.GoUInt);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L700"
        while (_x[(_i : stdgo.GoInt)] == ((0u32 : stdgo._internal.math.big.Big_word.Word))) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L701"
            _i++;
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L703"
        if (((_i == ((_x.length : stdgo.GoUInt) - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) && ((_x[(_i : stdgo.GoInt)] & ((_x[(_i : stdgo.GoInt)] - (1u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word)) : stdgo._internal.math.big.Big_word.Word) == (0u32 : stdgo._internal.math.big.Big_word.Word)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L704"
            return { _0 : ((_i * (32u32 : stdgo.GoUInt) : stdgo.GoUInt) + (stdgo._internal.math.bits.Bits_trailingzeros.trailingZeros((_x[(_i : stdgo.GoInt)] : stdgo.GoUInt)) : stdgo.GoUInt) : stdgo.GoUInt), _1 : true };
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L706"
        return { _0 : (0u32 : stdgo.GoUInt), _1 : false };
    }
    @:keep
    @:tdfield
    static public function _trailingZeroBits( _x:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo.GoUInt {
        @:recv var _x:stdgo._internal.math.big.Big_t_nat.T_nat = _x;
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L686"
        if ((_x.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L687"
            return (0u32 : stdgo.GoUInt);
        };
        var _i:stdgo.GoUInt = (0 : stdgo.GoUInt);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L690"
        while (_x[(_i : stdgo.GoInt)] == ((0u32 : stdgo._internal.math.big.Big_word.Word))) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L691"
            _i++;
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L694"
        return ((_i * (32u32 : stdgo.GoUInt) : stdgo.GoUInt) + (stdgo._internal.math.bits.Bits_trailingzeros.trailingZeros((_x[(_i : stdgo.GoInt)] : stdgo.GoUInt)) : stdgo.GoUInt) : stdgo.GoUInt);
    }
    @:keep
    @:tdfield
    static public function _bitLen( _x:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo.GoInt {
        @:recv var _x:stdgo._internal.math.big.Big_t_nat.T_nat = _x;
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L667"
        {
            var _i = @:assignType ((_x.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                var _top = @:assignType (_x[(_i : stdgo.GoInt)] : stdgo.GoUInt);
                _top = (_top | ((_top >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt)) : stdgo.GoUInt);
                _top = (_top | ((_top >> (2i64 : stdgo.GoUInt64) : stdgo.GoUInt)) : stdgo.GoUInt);
                _top = (_top | ((_top >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt)) : stdgo.GoUInt);
                _top = (_top | ((_top >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt)) : stdgo.GoUInt);
                _top = (_top | ((_top >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt)) : stdgo.GoUInt);
                _top = (_top | (((_top >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt) >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt)) : stdgo.GoUInt);
                //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L678"
                return ((_i * (32 : stdgo.GoInt) : stdgo.GoInt) + stdgo._internal.math.bits.Bits_len.len(_top) : stdgo.GoInt);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L680"
        return (0 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _mulRange( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _a:stdgo.GoUInt64, _b:stdgo.GoUInt64):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L623"
        if (_a == ((0i64 : stdgo.GoUInt64))) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L626"
            return _z._setUint64((0i64 : stdgo.GoUInt64));
        } else if ((_a > _b : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L628"
            return _z._setUint64((1i64 : stdgo.GoUInt64));
        } else if (_a == (_b)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L630"
            return _z._setUint64(_a);
        } else if ((_a + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == (_b)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L632"
            return _z._mul((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._setUint64(_a), (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._setUint64(_b));
        };
        var _m = @:assignType (((_a + _b : stdgo.GoUInt64)) / (2i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L635"
        return _z._mul((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._mulRange(_a, _m), (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._mulRange((_m + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64), _b));
    }
    @:keep
    @:tdfield
    static public function _sqr( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        var _n = @:assignType (_x.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L566"
        if (_n == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L568"
            return (_z.__slice__(0, (0 : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
        } else if (_n == ((1 : stdgo.GoInt))) {
            var _d = @:assignType (_x[(0 : stdgo.GoInt)] : stdgo._internal.math.big.Big_word.Word);
            _z = _z._make((2 : stdgo.GoInt));
            {
                var __tmp__ = stdgo._internal.math.big.Big__mulww._mulWW(_d, _d);
                _z[(1 : stdgo.GoInt)] = @:tmpset0 __tmp__._0;
                _z[(0 : stdgo.GoInt)] = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L573"
            return _z._norm();
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L576"
        if (stdgo._internal.math.big.Big__alias._alias(_z, _x)) {
            _z = null;
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L580"
        if ((_n < stdgo._internal.math.big.Big__basicsqrthreshold._basicSqrThreshold : Bool)) {
            _z = _z._make(((2 : stdgo.GoInt) * _n : stdgo.GoInt));
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L582"
            stdgo._internal.math.big.Big__basicmul._basicMul(_z, _x, _x);
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L583"
            return _z._norm();
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L585"
        if ((_n < stdgo._internal.math.big.Big__karatsubasqrthreshold._karatsubaSqrThreshold : Bool)) {
            _z = _z._make(((2 : stdgo.GoInt) * _n : stdgo.GoInt));
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L587"
            stdgo._internal.math.big.Big__basicsqr._basicSqr(_z, _x);
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L588"
            return _z._norm();
        };
        var _k = @:assignType (stdgo._internal.math.big.Big__karatsubalen._karatsubaLen(_n, stdgo._internal.math.big.Big__karatsubasqrthreshold._karatsubaSqrThreshold) : stdgo.GoInt);
        var _x0 = @:assignType (_x.__slice__((0 : stdgo.GoInt), _k) : stdgo._internal.math.big.Big_t_nat.T_nat);
        _z = _z._make(stdgo._internal.math.big.Big__max._max(((6 : stdgo.GoInt) * _k : stdgo.GoInt), ((2 : stdgo.GoInt) * _n : stdgo.GoInt)));
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L600"
        stdgo._internal.math.big.Big__karatsubasqr._karatsubaSqr(_z, _x0);
        _z = (_z.__slice__((0 : stdgo.GoInt), ((2 : stdgo.GoInt) * _n : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L602"
        (_z.__slice__(((2 : stdgo.GoInt) * _k : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat)._clear();
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L604"
        if ((_k < _n : Bool)) {
            var _tp = stdgo._internal.math.big.Big__getnat._getNat(((2 : stdgo.GoInt) * _k : stdgo.GoInt));
            var _t = @:assignType (_tp : stdgo._internal.math.big.Big_t_nat.T_nat);
            var _x0 = @:assignType (_x0._norm() : stdgo._internal.math.big.Big_t_nat.T_nat);
            var _x1 = @:assignType (_x.__slice__(_k) : stdgo._internal.math.big.Big_t_nat.T_nat);
            _t = _t._mul(_x0, _x1);
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L610"
            stdgo._internal.math.big.Big__addat._addAt(_z, _t, _k);
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L611"
            stdgo._internal.math.big.Big__addat._addAt(_z, _t, _k);
            _t = _t._sqr(_x1);
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L613"
            stdgo._internal.math.big.Big__addat._addAt(_z, _t, ((2 : stdgo.GoInt) * _k : stdgo.GoInt));
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L614"
            stdgo._internal.math.big.Big__putnat._putNat(_tp);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L617"
        return _z._norm();
    }
    @:keep
    @:tdfield
    static public function _mul( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_t_nat.T_nat, _y:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        var _m = @:assignType (_x.length : stdgo.GoInt);
        var _n = @:assignType (_y.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L416"
        if ((_m < _n : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L418"
            return _z._mul(_y, _x);
        } else if (((_m == (0 : stdgo.GoInt)) || (_n == (0 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L420"
            return (_z.__slice__(0, (0 : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
        } else if (_n == ((1 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L422"
            return _z._mulAddWW(_x, _y[(0 : stdgo.GoInt)], (0u32 : stdgo._internal.math.big.Big_word.Word));
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L427"
        if ((stdgo._internal.math.big.Big__alias._alias(_z, _x) || stdgo._internal.math.big.Big__alias._alias(_z, _y) : Bool)) {
            _z = null;
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L432"
        if ((_n < stdgo._internal.math.big.Big__karatsubathreshold._karatsubaThreshold : Bool)) {
            _z = _z._make((_m + _n : stdgo.GoInt));
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L434"
            stdgo._internal.math.big.Big__basicmul._basicMul(_z, _x, _y);
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L435"
            return _z._norm();
        };
        var _k = @:assignType (stdgo._internal.math.big.Big__karatsubalen._karatsubaLen(_n, stdgo._internal.math.big.Big__karatsubathreshold._karatsubaThreshold) : stdgo.GoInt);
        var _x0 = @:assignType (_x.__slice__((0 : stdgo.GoInt), _k) : stdgo._internal.math.big.Big_t_nat.T_nat);
        var _y0 = @:assignType (_y.__slice__((0 : stdgo.GoInt), _k) : stdgo._internal.math.big.Big_t_nat.T_nat);
        _z = _z._make(stdgo._internal.math.big.Big__max._max(((6 : stdgo.GoInt) * _k : stdgo.GoInt), (_m + _n : stdgo.GoInt)));
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L452"
        stdgo._internal.math.big.Big__karatsuba._karatsuba(_z, _x0, _y0);
        _z = (_z.__slice__((0 : stdgo.GoInt), (_m + _n : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L454"
        (_z.__slice__(((2 : stdgo.GoInt) * _k : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat)._clear();
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L469"
        if (((_k < _n : Bool) || (_m != _n) : Bool)) {
            var _tp = stdgo._internal.math.big.Big__getnat._getNat(((3 : stdgo.GoInt) * _k : stdgo.GoInt));
            var _t = @:assignType (_tp : stdgo._internal.math.big.Big_t_nat.T_nat);
            var _x0 = @:assignType (_x0._norm() : stdgo._internal.math.big.Big_t_nat.T_nat);
            var _y1 = @:assignType (_y.__slice__(_k) : stdgo._internal.math.big.Big_t_nat.T_nat);
            _t = _t._mul(_x0, _y1);
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L477"
            stdgo._internal.math.big.Big__addat._addAt(_z, _t, _k);
            var _y0 = @:assignType (_y0._norm() : stdgo._internal.math.big.Big_t_nat.T_nat);
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L481"
            {
                var _i = @:assignType (_k : stdgo.GoInt);
                while ((_i < (_x.length) : Bool)) {
                    var _xi = @:assignType (_x.__slice__(_i) : stdgo._internal.math.big.Big_t_nat.T_nat);
//"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L483"
                    if (((_xi.length) > _k : Bool)) {
                        _xi = (_xi.__slice__(0, _k) : stdgo._internal.math.big.Big_t_nat.T_nat);
                    };
_xi = _xi._norm();
_t = _t._mul(_xi, _y0);
//"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L488"
                    stdgo._internal.math.big.Big__addat._addAt(_z, _t, _i);
_t = _t._mul(_xi, _y1);
//"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L490"
                    stdgo._internal.math.big.Big__addat._addAt(_z, _t, (_i + _k : stdgo.GoInt));
                    _i = (_i + (_k) : stdgo.GoInt);
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L493"
            stdgo._internal.math.big.Big__putnat._putNat(_tp);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L496"
        return _z._norm();
    }
    @:keep
    @:tdfield
    static public function _montgomery( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_t_nat.T_nat, _y:stdgo._internal.math.big.Big_t_nat.T_nat, _m:stdgo._internal.math.big.Big_t_nat.T_nat, _k:stdgo._internal.math.big.Big_word.Word, _n:stdgo.GoInt):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L221"
        if ((((_x.length) != (_n) || (_y.length) != (_n) : Bool) || (_m.length != _n) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L222"
            throw new stdgo.AnyInterface(("math/big: mismatched montgomery number lengths" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        _z = _z._make((_n * (2 : stdgo.GoInt) : stdgo.GoInt));
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L225"
        _z._clear();
        var _c:stdgo._internal.math.big.Big_word.Word = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L227"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                var _d = @:assignType (_y[(_i : stdgo.GoInt)] : stdgo._internal.math.big.Big_word.Word);
var _c2 = @:assignType (stdgo._internal.math.big.Big__addmulvvw._addMulVVW((_z.__slice__(_i, (_n + _i : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat), _x, _d) : stdgo._internal.math.big.Big_word.Word);
var _t = @:assignType (_z[(_i : stdgo.GoInt)] * _k : stdgo._internal.math.big.Big_word.Word);
var _c3 = @:assignType (stdgo._internal.math.big.Big__addmulvvw._addMulVVW((_z.__slice__(_i, (_n + _i : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat), _m, _t) : stdgo._internal.math.big.Big_word.Word);
var _cx = @:assignType (_c + _c2 : stdgo._internal.math.big.Big_word.Word);
var _cy = @:assignType (_cx + _c3 : stdgo._internal.math.big.Big_word.Word);
_z[(_n + _i : stdgo.GoInt)] = _cy;
//"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L235"
                if (((_cx < _c2 : Bool) || (_cy < _c3 : Bool) : Bool)) {
                    _c = (1u32 : stdgo._internal.math.big.Big_word.Word);
                } else {
                    _c = (0u32 : stdgo._internal.math.big.Big_word.Word);
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L241"
        if (_c != ((0u32 : stdgo._internal.math.big.Big_word.Word))) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L242"
            stdgo._internal.math.big.Big__subvv._subVV((_z.__slice__(0, _n) : stdgo._internal.math.big.Big_t_nat.T_nat), (_z.__slice__(_n) : stdgo._internal.math.big.Big_t_nat.T_nat), _m);
        } else {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L244"
            (_z.__slice__(0, _n) : stdgo._internal.math.big.Big_t_nat.T_nat).__copyTo__((_z.__slice__(_n) : stdgo._internal.math.big.Big_t_nat.T_nat));
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L246"
        return (_z.__slice__(0, _n) : stdgo._internal.math.big.Big_t_nat.T_nat);
    }
    @:keep
    @:tdfield
    static public function _mulAddWW( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_t_nat.T_nat, _y:stdgo._internal.math.big.Big_word.Word, _r:stdgo._internal.math.big.Big_word.Word):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        var _m = @:assignType (_x.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L185"
        if (((_m == (0 : stdgo.GoInt)) || (_y == (0u32 : stdgo._internal.math.big.Big_word.Word)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L186"
            return _z._setWord(_r);
        };
        _z = _z._make((_m + (1 : stdgo.GoInt) : stdgo.GoInt));
        _z[(_m : stdgo.GoInt)] = stdgo._internal.math.big.Big__muladdvww._mulAddVWW((_z.__slice__((0 : stdgo.GoInt), _m) : stdgo._internal.math.big.Big_t_nat.T_nat), _x, _y, _r);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L193"
        return _z._norm();
    }
    @:keep
    @:tdfield
    static public function _cmp( _x:stdgo._internal.math.big.Big_t_nat.T_nat, _y:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo.GoInt {
        @:recv var _x:stdgo._internal.math.big.Big_t_nat.T_nat = _x;
        var _r = (0 : stdgo.GoInt);
        var _m = @:assignType (_x.length : stdgo.GoInt);
        var _n = @:assignType (_y.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L159"
        if (((_m != _n) || (_m == (0 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L160"
            if ((_m < _n : Bool)) {
                _r = (-1 : stdgo.GoInt);
            } else if ((_m > _n : Bool)) {
                _r = (1 : stdgo.GoInt);
            };
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L166"
            return _r;
        };
        var _i = @:assignType (_m - (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L170"
        while (((_i > (0 : stdgo.GoInt) : Bool) && (_x[(_i : stdgo.GoInt)] == _y[(_i : stdgo.GoInt)]) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L171"
            _i--;
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L174"
        if ((_x[(_i : stdgo.GoInt)] < _y[(_i : stdgo.GoInt)] : Bool)) {
            _r = (-1 : stdgo.GoInt);
        } else if ((_x[(_i : stdgo.GoInt)] > _y[(_i : stdgo.GoInt)] : Bool)) {
            _r = (1 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L180"
        return _r;
    }
    @:keep
    @:tdfield
    static public function _sub( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_t_nat.T_nat, _y:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        var _m = @:assignType (_x.length : stdgo.GoInt);
        var _n = @:assignType (_y.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L132"
        if ((_m < _n : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L134"
            throw new stdgo.AnyInterface(("underflow" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        } else if (_m == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L137"
            return (_z.__slice__(0, (0 : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
        } else if (_n == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L140"
            return _z._set(_x);
        };
        _z = _z._make(_m);
        var _c = @:assignType (stdgo._internal.math.big.Big__subvv._subVV((_z.__slice__((0 : stdgo.GoInt), _n) : stdgo._internal.math.big.Big_t_nat.T_nat), _x, _y) : stdgo._internal.math.big.Big_word.Word);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L146"
        if ((_m > _n : Bool)) {
            _c = stdgo._internal.math.big.Big__subvw._subVW((_z.__slice__(_n) : stdgo._internal.math.big.Big_t_nat.T_nat), (_x.__slice__(_n) : stdgo._internal.math.big.Big_t_nat.T_nat), _c);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L149"
        if (_c != ((0u32 : stdgo._internal.math.big.Big_word.Word))) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L150"
            throw new stdgo.AnyInterface(("underflow" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L153"
        return _z._norm();
    }
    @:keep
    @:tdfield
    static public function _add( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_t_nat.T_nat, _y:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        var _m = @:assignType (_x.length : stdgo.GoInt);
        var _n = @:assignType (_y.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L106"
        if ((_m < _n : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L108"
            return _z._add(_y, _x);
        } else if (_m == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L111"
            return (_z.__slice__(0, (0 : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
        } else if (_n == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L114"
            return _z._set(_x);
        };
        _z = _z._make((_m + (1 : stdgo.GoInt) : stdgo.GoInt));
        var _c = @:assignType (stdgo._internal.math.big.Big__addvv._addVV((_z.__slice__((0 : stdgo.GoInt), _n) : stdgo._internal.math.big.Big_t_nat.T_nat), _x, _y) : stdgo._internal.math.big.Big_word.Word);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L120"
        if ((_m > _n : Bool)) {
            _c = stdgo._internal.math.big.Big__addvw._addVW((_z.__slice__(_n, _m) : stdgo._internal.math.big.Big_t_nat.T_nat), (_x.__slice__(_n) : stdgo._internal.math.big.Big_t_nat.T_nat), _c);
        };
        _z[(_m : stdgo.GoInt)] = _c;
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L125"
        return _z._norm();
    }
    @:keep
    @:tdfield
    static public function _set( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        _z = _z._make((_x.length));
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L98"
        _z.__copyTo__(_x);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L99"
        return _z;
    }
    @:keep
    @:tdfield
    static public function _setUint64( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo.GoUInt64):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L86"
        {
            var _w = @:assignType (_x : stdgo._internal.math.big.Big_word.Word);
            if ((_w : stdgo.GoUInt64) == (_x)) {
                //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L87"
                return _z._setWord(_w);
            };
        };
        _z = _z._make((2 : stdgo.GoInt));
        _z[(1 : stdgo.GoInt)] = ((_x >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo._internal.math.big.Big_word.Word);
        _z[(0 : stdgo.GoInt)] = (_x : stdgo._internal.math.big.Big_word.Word);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L93"
        return _z;
    }
    @:keep
    @:tdfield
    static public function _setWord( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_word.Word):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L76"
        if (_x == ((0u32 : stdgo._internal.math.big.Big_word.Word))) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L77"
            return (_z.__slice__(0, (0 : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
        };
        _z = _z._make((1 : stdgo.GoInt));
        _z[(0 : stdgo.GoInt)] = _x;
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L81"
        return _z;
    }
    @:keep
    @:tdfield
    static public function _make( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _n:stdgo.GoInt):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L62"
        if ((_n <= _z.capacity : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L63"
            return (_z.__slice__(0, _n) : stdgo._internal.math.big.Big_t_nat.T_nat);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L65"
        if (_n == ((1 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L67"
            return (new stdgo.Slice<stdgo._internal.math.big.Big_word.Word>((1 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo._internal.math.big.Big_t_nat.T_nat);
        };
        {};
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L72"
        return (new stdgo.Slice<stdgo._internal.math.big.Big_word.Word>((_n : stdgo.GoInt).toBasic(), (_n + (4 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo._internal.math.big.Big_t_nat.T_nat);
    }
    @:keep
    @:tdfield
    static public function _norm( _z:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        var _i = @:assignType (_z.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L55"
        while (((_i > (0 : stdgo.GoInt) : Bool) && (_z[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] == (0u32 : stdgo._internal.math.big.Big_word.Word)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L56"
            _i--;
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L58"
        return (_z.__slice__((0 : stdgo.GoInt), _i) : stdgo._internal.math.big.Big_t_nat.T_nat);
    }
    @:keep
    @:tdfield
    static public function _clear( _z:stdgo._internal.math.big.Big_t_nat.T_nat):Void {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L48"
        if (_z != null) for (_i => _ in _z) {
            _z[(_i : stdgo.GoInt)] = (0u32 : stdgo._internal.math.big.Big_word.Word);
        };
    }
    @:keep
    @:tdfield
    static public function string( _z:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo.GoString {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L44"
        return (("0x" : stdgo.GoString) + (_z._itoa(false, (16 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _modInverse( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _g:stdgo._internal.math.big.Big_t_nat.T_nat, _n:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        //"file:///Users/o/.go/go1.21.3/src/math/big/int.go#L932"
        return (stdgo.Go.setRef(({ _abs : _z } : stdgo._internal.math.big.Big_int_.Int_), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).modInverse((stdgo.Go.setRef(({ _abs : _g } : stdgo._internal.math.big.Big_int_.Int_), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef(({ _abs : _n } : stdgo._internal.math.big.Big_int_.Int_), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>))._abs;
    }
}

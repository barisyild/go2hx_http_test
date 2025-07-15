package stdgo._internal.crypto.dsa;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.math.big.Big;
import stdgo._internal.crypto.internal.randutil.Randutil;
function generateParameters(_params:stdgo.Ref<stdgo._internal.crypto.dsa.Dsa_parameters.Parameters>, _rand:stdgo._internal.io.Io_reader.Reader, _sizes:stdgo._internal.crypto.dsa.Dsa_parametersizes.ParameterSizes):stdgo.Error {
        var _pBytes_23:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var l_20:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_34:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _err_30:stdgo.Error = (null : stdgo.Error);
        var _err_28:stdgo.Error = (null : stdgo.Error);
        var generatePrimesBreak = false;
        var _one_27:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _rem_26:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _p_25:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _q_24:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _pm1_33:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _i_29:stdgo.GoInt = (0 : stdgo.GoInt);
        var _h_31:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var n_21:stdgo.GoInt = (0 : stdgo.GoInt);
        var _g_32:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _qBytes_22:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _gotoNext = 6224864i64;
                } else if (__value__ == (6224864i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/dsa/dsa.go#L72"
                    {
                        final __value__ = _sizes;
                        if (__value__ == ((0 : stdgo._internal.crypto.dsa.Dsa_parametersizes.ParameterSizes))) {
                            _gotoNext = 6224880i64;
                        } else if (__value__ == ((1 : stdgo._internal.crypto.dsa.Dsa_parametersizes.ParameterSizes))) {
                            _gotoNext = 6224918i64;
                        } else if (__value__ == ((2 : stdgo._internal.crypto.dsa.Dsa_parametersizes.ParameterSizes))) {
                            _gotoNext = 6224956i64;
                        } else if (__value__ == ((3 : stdgo._internal.crypto.dsa.Dsa_parametersizes.ParameterSizes))) {
                            _gotoNext = 6224994i64;
                        } else {
                            _gotoNext = 6225032i64;
                        };
                    };
                } else if (__value__ == (6224880i64)) {
                    l_20 = (1024 : stdgo.GoInt);
                    n_21 = (160 : stdgo.GoInt);
                    _gotoNext = 6225104i64;
                } else if (__value__ == (6224918i64)) {
                    l_20 = (2048 : stdgo.GoInt);
                    n_21 = (224 : stdgo.GoInt);
                    _gotoNext = 6225104i64;
                } else if (__value__ == (6224956i64)) {
                    l_20 = (2048 : stdgo.GoInt);
                    n_21 = (256 : stdgo.GoInt);
                    _gotoNext = 6225104i64;
                } else if (__value__ == (6224994i64)) {
                    l_20 = (3072 : stdgo.GoInt);
                    n_21 = (256 : stdgo.GoInt);
                    _gotoNext = 6225104i64;
                } else if (__value__ == (6225032i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/dsa/dsa.go#L86"
                    return stdgo._internal.errors.Errors_new_.new_(("crypto/dsa: invalid ParameterSizes" : stdgo.GoString));
                    _gotoNext = 6225104i64;
                } else if (__value__ == (6225104i64)) {
                    _qBytes_22 = (new stdgo.Slice<stdgo.GoUInt8>((n_21 / (8 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    _pBytes_23 = (new stdgo.Slice<stdgo.GoUInt8>((l_20 / (8 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    _q_24 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
                    _p_25 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
                    _rem_26 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
                    _one_27 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/dsa/dsa.go#L96"
                    _one_27.setInt64((1i64 : stdgo.GoInt64));
                    _gotoNext = 6225260i64;
                } else if (__value__ == (6225260i64)) {
                    0i64;
                    generatePrimesBreak = false;
                    _gotoNext = 6225277i64;
                } else if (__value__ == (6225277i64)) {
                    //"file://#L0"
                    if (!generatePrimesBreak) {
                        _gotoNext = 6225281i64;
                    } else {
                        _gotoNext = 6225879i64;
                    };
                } else if (__value__ == (6225281i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/dsa/dsa.go#L100"
                    {
                        {
                            var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_rand, _qBytes_22);
                            _err_28 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_28 != null) {
                            _gotoNext = 6225336i64;
                        } else {
                            _gotoNext = 6225359i64;
                        };
                    };
                } else if (__value__ == (6225336i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/dsa/dsa.go#L101"
                    return _err_28;
                    _gotoNext = 6225359i64;
                } else if (__value__ == (6225359i64)) {
                    _qBytes_22[((_qBytes_22.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] = (_qBytes_22[((_qBytes_22.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] | ((1 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                    _qBytes_22[(0 : stdgo.GoInt)] = (_qBytes_22[(0 : stdgo.GoInt)] | ((128 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/dsa/dsa.go#L106"
                    _q_24.setBytes(_qBytes_22);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/dsa/dsa.go#L108"
                    if (!_q_24.probablyPrime((64 : stdgo.GoInt))) {
                        _gotoNext = 6225462i64;
                    } else {
                        _gotoNext = 6225483i64;
                    };
                } else if (__value__ == (6225462i64)) {
                    0i64;
                    _gotoNext = 6225277i64;
                } else if (__value__ == (6225483i64)) {
                    _i_29 = (0 : stdgo.GoInt);
                    _gotoNext = 6225483i64;
                    //"file://#L0"
                    if ((_i_29 < ((4 : stdgo.GoInt) * l_20 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 6225508i64;
                    } else {
                        _gotoNext = 6225277i64;
                    };
                } else if (__value__ == (6225508i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/dsa/dsa.go#L113"
                    {
                        {
                            var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_rand, _pBytes_23);
                            _err_30 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_30 != null) {
                            _gotoNext = 6225564i64;
                        } else {
                            _gotoNext = 6225590i64;
                        };
                    };
                } else if (__value__ == (6225564i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/dsa/dsa.go#L114"
                    return _err_30;
                    _gotoNext = 6225590i64;
                } else if (__value__ == (6225590i64)) {
                    _pBytes_23[((_pBytes_23.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] = (_pBytes_23[((_pBytes_23.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] | ((1 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                    _pBytes_23[(0 : stdgo.GoInt)] = (_pBytes_23[(0 : stdgo.GoInt)] | ((128 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/dsa/dsa.go#L120"
                    _p_25.setBytes(_pBytes_23);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/dsa/dsa.go#L121"
                    _rem_26.mod(_p_25, _q_24);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/dsa/dsa.go#L122"
                    _rem_26.sub(_rem_26, _one_27);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/dsa/dsa.go#L123"
                    _p_25.sub(_p_25, _rem_26);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/dsa/dsa.go#L124"
                    if ((_p_25.bitLen() < l_20 : Bool)) {
                        _gotoNext = 6225737i64;
                    } else {
                        _gotoNext = 6225761i64;
                    };
                } else if (__value__ == (6225737i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/dsa/dsa.go#L112"
                    _i_29++;
                    _gotoNext = 6225483i64;
                } else if (__value__ == (6225761i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/dsa/dsa.go#L128"
                    if (!_p_25.probablyPrime((64 : stdgo.GoInt))) {
                        _gotoNext = 6225793i64;
                    } else {
                        _gotoNext = 6225817i64;
                    };
                } else if (__value__ == (6225793i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/dsa/dsa.go#L112"
                    _i_29++;
                    _gotoNext = 6225483i64;
                } else if (__value__ == (6225817i64)) {
                    (@:checkr _params ?? throw stdgo.Error._nullPointerDereference.__underlying__()).p = _p_25;
                    (@:checkr _params ?? throw stdgo.Error._nullPointerDereference.__underlying__()).q = _q_24;
                    generatePrimesBreak = true;
                    _gotoNext = 6225277i64;
                } else if (__value__ == (6225879i64)) {
                    _h_31 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/dsa/dsa.go#L139"
                    _h_31.setInt64((2i64 : stdgo.GoInt64));
                    _g_32 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
                    _pm1_33 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).sub(_p_25, _one_27);
                    _e_34 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).div(_pm1_33, _q_24);
                    0i64;
                    _gotoNext = 6225998i64;
                } else if (__value__ == (6225998i64)) {
                    //"file://#L0"
                    if (true) {
                        _gotoNext = 6226002i64;
                    } else {
                        _gotoNext = 6226109i64;
                    };
                } else if (__value__ == (6226002i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/dsa/dsa.go#L146"
                    _g_32.exp(_h_31, _e_34, _p_25);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/dsa/dsa.go#L147"
                    if (_g_32.cmp(_one_27) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 6226042i64;
                    } else {
                        _gotoNext = 6226080i64;
                    };
                } else if (__value__ == (6226042i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/dsa/dsa.go#L148"
                    _h_31.add(_h_31, _one_27);
                    0i64;
                    _gotoNext = 6225998i64;
                } else if (__value__ == (6226080i64)) {
                    (@:checkr _params ?? throw stdgo.Error._nullPointerDereference.__underlying__()).g = _g_32;
                    //"file:///Users/o/.go/go1.21.3/src/crypto/dsa/dsa.go#L153"
                    return (null : stdgo.Error);
                    _gotoNext = 6225998i64;
                } else if (__value__ == (6226109i64)) {
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw new stdgo.AnyInterface(("unreachable goto control flow" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.invalidType));
    }

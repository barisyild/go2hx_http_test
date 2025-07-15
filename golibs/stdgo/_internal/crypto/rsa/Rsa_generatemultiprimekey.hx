package stdgo._internal.crypto.rsa;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.big.Big;
import stdgo._internal.crypto.internal.randutil.Randutil;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.crypto.internal.boring.bbig.Bbig;
import stdgo._internal.crypto.internal.bigmod.Bigmod;
import stdgo._internal.math.Math;
import stdgo._internal.crypto.rand.Rand;
function generateMultiPrimeKey(_random:stdgo._internal.io.Io_reader.Reader, _nprimes:stdgo.GoInt, _bits:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>; var _1 : stdgo.Error; } {
        var _totient_143:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _prime_140:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _e64_122:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var dq_110:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var p_91:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _bQinv_71:stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt = (new stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt(0, 0) : stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt);
        var _bQ_63:stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt = (new stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt(0, 0) : stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt);
        var _bD_48:stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt = (new stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt(0, 0) : stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt);
        var _i_137:stdgo.GoInt = (0 : stdgo.GoInt);
        var _mq_129:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus> = (null : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>);
        var _mp_126:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus> = (null : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>);
        var _prime_151:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _pminus1_149:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _n_142:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _todo_136:stdgo.GoInt = (0 : stdgo.GoInt);
        var nextSetOfPrimesBreak = false;
        var _e_152:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _j_141:stdgo.GoInt = (0 : stdgo.GoInt);
        var _primes_135:stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>>);
        var _primeLimit_133:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var dp_109:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _err_72:stdgo.Error = (null : stdgo.Error);
        var _ok_153:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _mn_125:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus> = (null : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>);
        var _bN_46:stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt = (new stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt(0, 0) : stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt);
        var _priv_132:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey> = (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>);
        var qinv_121:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var n_73:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _bDq_68:stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt = (new stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt(0, 0) : stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt);
        var _bP_49:stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt = (new stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt(0, 0) : stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt);
        var _bE_47:stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt = (new stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt(0, 0) : stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt);
        var _i_139:stdgo.GoInt = (0 : stdgo.GoInt);
        var _pi_134:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _iterator_6396307_150:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_138:stdgo.Error = (null : stdgo.Error);
        var q_103:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _key_130:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey> = (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>);
        var d_88:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var e_87:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _bDp_64:stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt = (new stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt(0, 0) : stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L295"
                    stdgo._internal.crypto.internal.randutil.Randutil_maybereadbyte.maybeReadByte(_random);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L297"
                    if ((((false && ({
                        final __t__ = _random;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }) == (new stdgo.AnyInterface(stdgo.Go.asInterface((0 : stdgo._internal.crypto.internal.boring.Boring_t_randreader.T_randReader), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotboringdotboring_t_randreaderdott_randreader.__type__stdgodot_internaldotcryptodotinternaldotboringdotBoring_t_randreaderdotT_randReader), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotboringdotboring_t_randreaderdott_randreader.__type__stdgodot_internaldotcryptodotinternaldotboringdotBoring_t_randreaderdotT_randReader))) : Bool) && _nprimes == ((2 : stdgo.GoInt)) : Bool) && (((_bits == ((2048 : stdgo.GoInt)) || _bits == ((3072 : stdgo.GoInt)) : Bool) || (_bits == (4096 : stdgo.GoInt)) : Bool)) : Bool)) {
                        _gotoNext = 6393460i64;
                    } else {
                        _gotoNext = 6394513i64;
                    };
                } else if (__value__ == (6393460i64)) {
                    {
                        var __tmp__ = stdgo._internal.crypto.internal.boring.Boring_generatekeyrsa.generateKeyRSA(_bits);
                        _bN_46 = @:tmpset0 __tmp__._0;
                        _bE_47 = @:tmpset0 __tmp__._1;
                        _bD_48 = @:tmpset0 __tmp__._2;
                        _bP_49 = @:tmpset0 __tmp__._3;
                        _bQ_63 = @:tmpset0 __tmp__._4;
                        _bDp_64 = @:tmpset0 __tmp__._5;
                        _bDq_68 = @:tmpset0 __tmp__._6;
                        _bQinv_71 = @:tmpset0 __tmp__._7;
                        _err_72 = @:tmpset0 __tmp__._8;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L300"
                    if (_err_72 != null) {
                        _gotoNext = 6393552i64;
                    } else {
                        _gotoNext = 6393579i64;
                    };
                } else if (__value__ == (6393552i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L301"
                    return { _0 : null, _1 : _err_72 };
                    _gotoNext = 6393579i64;
                } else if (__value__ == (6393579i64)) {
                    n_73 = stdgo._internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bN_46);
                    e_87 = stdgo._internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bE_47);
                    d_88 = stdgo._internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bD_48);
                    p_91 = stdgo._internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bP_49);
                    q_103 = stdgo._internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bQ_63);
                    dp_109 = stdgo._internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bDp_64);
                    dq_110 = stdgo._internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bDq_68);
                    qinv_121 = stdgo._internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bQinv_71);
                    _e64_122 = e_87.int64();
                    //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L312"
                    if ((!e_87.isInt64() || (((_e64_122 : stdgo.GoInt) : stdgo.GoInt64) != _e64_122) : Bool)) {
                        _gotoNext = 6393810i64;
                    } else {
                        _gotoNext = 6393893i64;
                    };
                } else if (__value__ == (6393810i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L313"
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("crypto/rsa: generated key exponent too large" : stdgo.GoString)) };
                    _gotoNext = 6393893i64;
                } else if (__value__ == (6393893i64)) {
                    {
                        var __tmp__ = stdgo._internal.crypto.internal.bigmod.Bigmod_newmodulusfrombig.newModulusFromBig(n_73);
                        _mn_125 = @:tmpset0 __tmp__._0;
                        _err_72 = @:tmpset0 __tmp__._1;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L317"
                    if (_err_72 != null) {
                        _gotoNext = 6393948i64;
                    } else {
                        _gotoNext = 6393975i64;
                    };
                } else if (__value__ == (6393948i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L318"
                    return { _0 : null, _1 : _err_72 };
                    _gotoNext = 6393975i64;
                } else if (__value__ == (6393975i64)) {
                    {
                        var __tmp__ = stdgo._internal.crypto.internal.bigmod.Bigmod_newmodulusfrombig.newModulusFromBig(p_91);
                        _mp_126 = @:tmpset0 __tmp__._0;
                        _err_72 = @:tmpset0 __tmp__._1;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L321"
                    if (_err_72 != null) {
                        _gotoNext = 6394030i64;
                    } else {
                        _gotoNext = 6394057i64;
                    };
                } else if (__value__ == (6394030i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L322"
                    return { _0 : null, _1 : _err_72 };
                    _gotoNext = 6394057i64;
                } else if (__value__ == (6394057i64)) {
                    {
                        var __tmp__ = stdgo._internal.crypto.internal.bigmod.Bigmod_newmodulusfrombig.newModulusFromBig(q_103);
                        _mq_129 = @:tmpset0 __tmp__._0;
                        _err_72 = @:tmpset0 __tmp__._1;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L325"
                    if (_err_72 != null) {
                        _gotoNext = 6394112i64;
                    } else {
                        _gotoNext = 6394140i64;
                    };
                } else if (__value__ == (6394112i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L326"
                    return { _0 : null, _1 : _err_72 };
                    _gotoNext = 6394140i64;
                } else if (__value__ == (6394140i64)) {
                    _key_130 = (stdgo.Go.setRef(({ publicKey : ({  } : stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey), primes : (new stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>>(2, 2, ...[p_91, q_103]) : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>>), precomputed : ({ cRTValues : (new stdgo.Slice<stdgo._internal.crypto.rsa.Rsa_crtvalue.CRTValue>((0 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > 0 ? (0 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.rsa.Rsa_crtvalue.CRTValue)]) : stdgo.Slice<stdgo._internal.crypto.rsa.Rsa_crtvalue.CRTValue>), _n : _mn_125, _p : _mp_126, _q : _mq_129 } : stdgo._internal.crypto.rsa.Rsa_precomputedvalues.PrecomputedValues) } : stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_privatekeydotprivatekey.__type__stdgodot_internaldotcryptodotrsadotRsa_privatekeydotPrivateKey })) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L346"
                    return { _0 : _key_130, _1 : (null : stdgo.Error) };
                    _gotoNext = 6394513i64;
                } else if (__value__ == (6394513i64)) {
                    _priv_132 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_privatekeydotprivatekey.__type__stdgodot_internaldotcryptodotrsadotRsa_privatekeydotPrivateKey })) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>);
                    (@:checkr _priv_132 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).publicKey.e = (65537 : stdgo.GoInt);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L352"
                    if ((_nprimes < (2 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 6394570i64;
                    } else {
                        _gotoNext = 6394661i64;
                    };
                } else if (__value__ == (6394570i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L353"
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("crypto/rsa: GenerateMultiPrimeKey: nprimes must be >= 2" : stdgo.GoString)) };
                    _gotoNext = 6394661i64;
                } else if (__value__ == (6394661i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L356"
                    if ((_bits < (64 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 6394674i64;
                    } else {
                        _gotoNext = 6395192i64;
                    };
                } else if (__value__ == (6394674i64)) {
                    _primeLimit_133 = (((1i64 : stdgo.GoUInt64) << ((_bits / _nprimes : stdgo.GoInt) : stdgo.GoUInt) : stdgo.GoUInt64) : stdgo.GoFloat64);
                    _pi_134 = (_primeLimit_133 / ((stdgo._internal.math.Math_log.log(_primeLimit_133) - (1 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _pi_134 = (_pi_134 / ((4 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _pi_134 = (_pi_134 / ((2 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L366"
                    if ((_pi_134 <= (_nprimes : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 6395086i64;
                    } else {
                        _gotoNext = 6395192i64;
                    };
                } else if (__value__ == (6395086i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L367"
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("crypto/rsa: too few primes of given length to generate an RSA key" : stdgo.GoString)) };
                    _gotoNext = 6395192i64;
                } else if (__value__ == (6395192i64)) {
                    _primes_135 = (new stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>>((_nprimes : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>>);
                    _gotoNext = 6395229i64;
                } else if (__value__ == (6395229i64)) {
                    0i64;
                    nextSetOfPrimesBreak = false;
                    _gotoNext = 6395247i64;
                } else if (__value__ == (6395247i64)) {
                    //"file://#L0"
                    if (!nextSetOfPrimesBreak) {
                        _gotoNext = 6395251i64;
                    } else {
                        _gotoNext = 6396809i64;
                    };
                } else if (__value__ == (6395251i64)) {
                    _todo_136 = _bits;
                    //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L387"
                    if ((_nprimes >= (7 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 6395782i64;
                    } else {
                        _gotoNext = 6395819i64;
                    };
                } else if (__value__ == (6395782i64)) {
                    _todo_136 = (_todo_136 + ((((_nprimes - (2 : stdgo.GoInt) : stdgo.GoInt)) / (5 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 6395819i64;
                } else if (__value__ == (6395819i64)) {
                    _i_137 = (0 : stdgo.GoInt);
                    _gotoNext = 6395819i64;
                    //"file://#L0"
                    if ((_i_137 < _nprimes : Bool)) {
                        _gotoNext = 6395848i64;
                    } else {
                        _gotoNext = 6396053i64;
                    };
                } else if (__value__ == (6395848i64)) {
                    {
                        var __tmp__ = stdgo._internal.crypto.rand.Rand_prime.prime(_random, (_todo_136 / ((_nprimes - _i_137 : stdgo.GoInt)) : stdgo.GoInt));
                        _primes_135[(_i_137 : stdgo.GoInt)] = @:tmpset0 __tmp__._0;
                        _err_138 = @:tmpset0 __tmp__._1;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L393"
                    if (_err_138 != null) {
                        _gotoNext = 6395941i64;
                    } else {
                        _gotoNext = 6395971i64;
                    };
                } else if (__value__ == (6395941i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L394"
                    return { _0 : null, _1 : _err_138 };
                    _gotoNext = 6395971i64;
                } else if (__value__ == (6395971i64)) {
                    _todo_136 = (_todo_136 - (_primes_135[(_i_137 : stdgo.GoInt)].bitLen()) : stdgo.GoInt);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L390"
                    _i_137++;
                    _gotoNext = 6395819i64;
                } else if (__value__ == (6396053i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L400"
                    if ((0i64 : stdgo.GoInt) < (_primes_135.length)) {
                        _gotoNext = 6396189i64;
                    } else {
                        _gotoNext = 6396195i64;
                    };
                } else if (__value__ == (6396057i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L400"
                    _i_139++;
                    _gotoNext = 6396190i64;
                } else if (__value__ == (6396082i64)) {
                    _prime_140 = _primes_135[(_i_139 : stdgo.GoInt)];
                    _j_141 = (0 : stdgo.GoInt);
                    _gotoNext = 6396087i64;
                } else if (__value__ == (6396087i64)) {
                    //"file://#L0"
                    if ((_j_141 < _i_139 : Bool)) {
                        _gotoNext = 6396110i64;
                    } else {
                        _gotoNext = 6396057i64;
                    };
                } else if (__value__ == (6396106i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L401"
                    _j_141++;
                    _gotoNext = 6396087i64;
                } else if (__value__ == (6396110i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L402"
                    if (_prime_140.cmp(_primes_135[(_j_141 : stdgo.GoInt)]) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 6396145i64;
                    } else {
                        _gotoNext = 6396106i64;
                    };
                } else if (__value__ == (6396145i64)) {
                    _gotoNext = 6395247i64;
                } else if (__value__ == (6396189i64)) {
                    {
                        final __tmp__0 = 0i64;
                        final __tmp__1 = _primes_135[(0i64 : stdgo.GoInt)];
                        _i_139 = @:binopAssign __tmp__0;
                        _prime_140 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 6396190i64;
                } else if (__value__ == (6396190i64)) {
                    //"file://#L0"
                    if (_i_139 < (_primes_135.length)) {
                        _gotoNext = 6396082i64;
                    } else {
                        _gotoNext = 6396195i64;
                    };
                } else if (__value__ == (6396195i64)) {
                    _n_142 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).set(stdgo._internal.crypto.rsa.Rsa__bigone._bigOne);
                    _totient_143 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).set(stdgo._internal.crypto.rsa.Rsa__bigone._bigOne);
                    _pminus1_149 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L411"
                    if ((0i64 : stdgo.GoInt) < (_primes_135.length)) {
                        _gotoNext = 6396405i64;
                    } else {
                        _gotoNext = 6396410i64;
                    };
                } else if (__value__ == (6396320i64)) {
                    _prime_151 = _primes_135[(_iterator_6396307_150 : stdgo.GoInt)];
                    //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L412"
                    _n_142.mul(_n_142, _prime_151);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L413"
                    _pminus1_149.sub(_prime_151, stdgo._internal.crypto.rsa.Rsa__bigone._bigOne);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L414"
                    _totient_143.mul(_totient_143, _pminus1_149);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L411"
                    _iterator_6396307_150++;
                    _gotoNext = 6396406i64;
                } else if (__value__ == (6396405i64)) {
                    {
                        final __tmp__0 = 0i64;
                        final __tmp__1 = _primes_135[(0i64 : stdgo.GoInt)];
                        _iterator_6396307_150 = @:binopAssign __tmp__0;
                        _prime_151 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 6396406i64;
                } else if (__value__ == (6396406i64)) {
                    //"file://#L0"
                    if (_iterator_6396307_150 < (_primes_135.length)) {
                        _gotoNext = 6396320i64;
                    } else {
                        _gotoNext = 6396410i64;
                    };
                } else if (__value__ == (6396410i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L416"
                    if (_n_142.bitLen() != (_bits)) {
                        _gotoNext = 6396432i64;
                    } else {
                        _gotoNext = 6396642i64;
                    };
                } else if (__value__ == (6396432i64)) {
                    _gotoNext = 6395247i64;
                } else if (__value__ == (6396642i64)) {
                    (@:checkr _priv_132 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).d = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
                    _e_152 = stdgo._internal.math.big.Big_newint.newInt(((@:checkr _priv_132 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).publicKey.e : stdgo.GoInt64));
                    _ok_153 = (@:checkr _priv_132 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).d.modInverse(_e_152, _totient_143);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L427"
                    if (({
                        final value = _ok_153;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    })) {
                        _gotoNext = 6396751i64;
                    } else {
                        _gotoNext = 6395247i64;
                    };
                } else if (__value__ == (6396751i64)) {
                    (@:checkr _priv_132 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).primes = _primes_135;
                    (@:checkr _priv_132 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).publicKey.n = _n_142;
                    _gotoNext = 6396809i64;
                } else if (__value__ == (6396809i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L434"
                    _priv_132.precompute();
                    //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L435"
                    return { _0 : _priv_132, _1 : (null : stdgo.Error) };
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw new stdgo.AnyInterface(("unreachable goto control flow" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.invalidType));
    }

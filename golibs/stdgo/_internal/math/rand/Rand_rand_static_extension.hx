package stdgo._internal.math.rand;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.math.Math;
@:keep @:allow(stdgo._internal.math.rand.Rand.Rand_asInterface) class Rand_static_extension {
    @:keep
    @:tdfield
    static public function read( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand> = _r;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L273"
        {
            final __type__ = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src;
            if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotmathdotranddotrand_sourcedotsource.__type__stdgodot_internaldotmathdotranddotRand_sourcedotSource)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotranddotrand_t_lockedsourcedott_lockedsource.__type__stdgodot_internaldotmathdotranddotRand_t_lockedsourcedotT_lockedSource }))) {
                var _src:stdgo.Ref<stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L275"
                return _src._read(_p, stdgo.Go.pointer((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readVal), stdgo.Go.pointer((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readPos));
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotmathdotranddotrand_sourcedotsource.__type__stdgodot_internaldotmathdotranddotRand_sourcedotSource)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotranddotrand_t_fastsourcedott_fastsource.__type__stdgodot_internaldotmathdotranddotRand_t_fastsourcedotT_fastSource }))) {
                var _src:stdgo.Ref<stdgo._internal.math.rand.Rand_t_fastsource.T_fastSource> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.math.rand.Rand_t_fastsource.T_fastSource>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.math.rand.Rand_t_fastsource.T_fastSource>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.math.rand.Rand_t_fastsource.T_fastSource>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L277"
                return _src._read(_p, stdgo.Go.pointer((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readVal), stdgo.Go.pointer((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readPos));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L279"
        return stdgo._internal.math.rand.Rand__read._read(_p, (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src, stdgo.Go.pointer((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readVal), stdgo.Go.pointer((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readPos));
    }
    @:keep
    @:tdfield
    static public function shuffle( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>, _n:stdgo.GoInt, _swap:(stdgo.GoInt, stdgo.GoInt) -> Void):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand> = _r;
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L248"
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L249"
            throw new stdgo.AnyInterface(("invalid argument to Shuffle" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        var _i = @:assignType (_n - (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L259"
        while ((_i > (2147483646 : stdgo.GoInt) : Bool)) {
            var _j = @:assignType (_r.int63n(((_i + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64)) : stdgo.GoInt);
//"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L261"
            _swap(_i, _j);
            _i--;
        };
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L263"
        while ((_i > (0 : stdgo.GoInt) : Bool)) {
            var _j = @:assignType (_r._int31n(((_i + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt32)) : stdgo.GoInt);
//"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L265"
            _swap(_i, _j);
            _i--;
        };
    }
    @:keep
    @:tdfield
    static public function perm( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoInt> {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand> = _r;
        var _m = (new stdgo.Slice<stdgo.GoInt>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L236"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                var _j = @:assignType (_r.intn((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
_m[(_i : stdgo.GoInt)] = _m[(_j : stdgo.GoInt)];
_m[(_j : stdgo.GoInt)] = _i;
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L241"
        return _m;
    }
    @:keep
    @:tdfield
    static public function float32( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>):stdgo.GoFloat32 {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand> = _r;
        var _f_241:stdgo.GoFloat32 = (0 : stdgo.GoFloat32);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _gotoNext = 3346454i64;
                } else if (__value__ == (3346454i64)) {
                    _f_241 = (_r.float64() : stdgo.GoFloat32);
                    //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L221"
                    if (_f_241 == ((1 : stdgo.GoFloat64))) {
                        _gotoNext = 3346499i64;
                    } else {
                        _gotoNext = 3346567i64;
                    };
                } else if (__value__ == (3346499i64)) {
                    _gotoNext = 3346454i64;
                } else if (__value__ == (3346567i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L224"
                    return _f_241;
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw new stdgo.AnyInterface(("unreachable goto control flow" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.invalidType));
    }
    @:keep
    @:tdfield
    static public function float64( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>):stdgo.GoFloat64 {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand> = _r;
        var _f_240:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _gotoNext = 3345986i64;
                } else if (__value__ == (3345986i64)) {
                    _f_240 = ((_r.int63() : stdgo.GoFloat64) / (9.223372036854776e+18 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L208"
                    if (_f_240 == ((1 : stdgo.GoFloat64))) {
                        _gotoNext = 3346041i64;
                    } else {
                        _gotoNext = 3346103i64;
                    };
                } else if (__value__ == (3346041i64)) {
                    _gotoNext = 3345986i64;
                } else if (__value__ == (3346103i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L211"
                    return _f_240;
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw new stdgo.AnyInterface(("unreachable goto control flow" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.invalidType));
    }
    @:keep
    @:tdfield
    static public function intn( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>, _n:stdgo.GoInt):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand> = _r;
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L179"
        if ((_n <= (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L180"
            throw new stdgo.AnyInterface(("invalid argument to Intn" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L182"
        if ((_n <= (2147483647 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L183"
            return (_r.int31n((_n : stdgo.GoInt32)) : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L185"
        return (_r.int63n((_n : stdgo.GoInt64)) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _int31n( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>, _n:stdgo.GoInt32):stdgo.GoInt32 {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand> = _r;
        var _v = @:assignType (_r.uint32() : stdgo.GoUInt32);
        var _prod = @:assignType ((_v : stdgo.GoUInt64) * (_n : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _low = @:assignType (_prod : stdgo.GoUInt32);
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L165"
        if ((_low < (_n : stdgo.GoUInt32) : Bool)) {
            var _thresh = @:assignType ((-_n : stdgo.GoUInt32) % (_n : stdgo.GoUInt32) : stdgo.GoUInt32);
            //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L167"
            while ((_low < _thresh : Bool)) {
                _v = _r.uint32();
                _prod = ((_v : stdgo.GoUInt64) * (_n : stdgo.GoUInt64) : stdgo.GoUInt64);
                _low = (_prod : stdgo.GoUInt32);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L173"
        return ((_prod >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt32);
    }
    @:keep
    @:tdfield
    static public function int31n( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>, _n:stdgo.GoInt32):stdgo.GoInt32 {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand> = _r;
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L138"
        if ((_n <= (0 : stdgo.GoInt32) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L139"
            throw new stdgo.AnyInterface(("invalid argument to Int31n" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L141"
        if ((_n & ((_n - (1 : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.GoInt32) == ((0 : stdgo.GoInt32))) {
            //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L142"
            return (_r.int31() & ((_n - (1 : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.GoInt32);
        };
        var _max = @:assignType (((2147483647u32 : stdgo.GoUInt32) - ((-2147483648u32 : stdgo.GoUInt32) % (_n : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt32);
        var _v = @:assignType (_r.int31() : stdgo.GoInt32);
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L146"
        while ((_v > _max : Bool)) {
            _v = _r.int31();
        };
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L149"
        return (_v % _n : stdgo.GoInt32);
    }
    @:keep
    @:tdfield
    static public function int63n( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>, _n:stdgo.GoInt64):stdgo.GoInt64 {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand> = _r;
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L121"
        if ((_n <= (0i64 : stdgo.GoInt64) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L122"
            throw new stdgo.AnyInterface(("invalid argument to Int63n" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L124"
        if ((_n & ((_n - (1i64 : stdgo.GoInt64) : stdgo.GoInt64)) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
            //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L125"
            return (_r.int63() & ((_n - (1i64 : stdgo.GoInt64) : stdgo.GoInt64)) : stdgo.GoInt64);
        };
        var _max = @:assignType (((9223372036854775807i64 : stdgo.GoUInt64) - ((-9223372036854775808i64 : stdgo.GoUInt64) % (_n : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt64);
        var _v = @:assignType (_r.int63() : stdgo.GoInt64);
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L129"
        while ((_v > _max : Bool)) {
            _v = _r.int63();
        };
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L132"
        return (_v % _n : stdgo.GoInt64);
    }
    @:keep
    @:tdfield
    static public function int_( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand> = _r;
        var _u = @:assignType (_r.int63() : stdgo.GoUInt);
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L115"
        return (((_u << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function int31( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>):stdgo.GoInt32 {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand> = _r;
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L110"
        return ((_r.int63() >> (32i64 : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoInt32);
    }
    @:keep
    @:tdfield
    static public function uint64( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>):stdgo.GoUInt64 {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand> = _r;
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L103"
        if ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._s64 != null) {
            //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L104"
            return (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._s64.uint64();
        };
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L106"
        return (((_r.int63() : stdgo.GoUInt64) >> (31i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_r.int63() : stdgo.GoUInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
    }
    @:keep
    @:tdfield
    static public function uint32( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>):stdgo.GoUInt32 {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand> = _r;
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L99"
        return ((_r.int63() >> (31i64 : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoUInt32);
    }
    @:keep
    @:tdfield
    static public function int63( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>):stdgo.GoInt64 {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand> = _r;
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L96"
        return (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src.int63();
    }
    @:keep
    @:tdfield
    static public function seed( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>, _seed:stdgo.GoInt64):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand> = _r;
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L86"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotmathdotranddotrand_sourcedotsource.__type__stdgodot_internaldotmathdotranddotRand_sourcedotSource)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotranddotrand_t_lockedsourcedott_lockedsource.__type__stdgodot_internaldotmathdotranddotRand_t_lockedsourcedotT_lockedSource })) : stdgo.Ref<stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource>), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo.Ref<stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource>), _1 : false };
            }, _lk = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L87"
                _lk._seedPos(_seed, stdgo.Go.pointer((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readPos));
                //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L88"
                return;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L91"
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src.seed(_seed);
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readPos = (0 : stdgo.GoInt8);
    }
    @:keep
    @:tdfield
    static public function normFloat64( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>):stdgo.GoFloat64 {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand> = _r;
        //"file:///Users/o/.go/go1.21.3/src/math/rand/normal.go#L38"
        while (true) {
            var _j = @:assignType (_r.uint32() : stdgo.GoInt32);
            var _i = @:assignType (_j & (127 : stdgo.GoInt32) : stdgo.GoInt32);
            var _x = @:assignType ((_j : stdgo.GoFloat64) * (stdgo._internal.math.rand.Rand__wn._wn[(_i : stdgo.GoInt)] : stdgo.GoFloat64) : stdgo.GoFloat64);
            //"file:///Users/o/.go/go1.21.3/src/math/rand/normal.go#L42"
            if ((stdgo._internal.math.rand.Rand__absint32._absInt32(_j) < stdgo._internal.math.rand.Rand__kn._kn[(_i : stdgo.GoInt)] : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/math/rand/normal.go#L44"
                return _x;
            };
            //"file:///Users/o/.go/go1.21.3/src/math/rand/normal.go#L47"
            if (_i == ((0 : stdgo.GoInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/math/rand/normal.go#L49"
                while (true) {
                    _x = (-stdgo._internal.math.Math_log.log(_r.float64()) * (0.29047645161474317 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    var _y = @:assignType (-stdgo._internal.math.Math_log.log(_r.float64()) : stdgo.GoFloat64);
                    //"file:///Users/o/.go/go1.21.3/src/math/rand/normal.go#L52"
                    if (((_y + _y : stdgo.GoFloat64) >= (_x * _x : stdgo.GoFloat64) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/math/rand/normal.go#L53"
                        break;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/math/rand/normal.go#L56"
                if ((_j > (0 : stdgo.GoInt32) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/math/rand/normal.go#L57"
                    return ((3.442619855899 : stdgo.GoFloat64) + _x : stdgo.GoFloat64);
                };
                //"file:///Users/o/.go/go1.21.3/src/math/rand/normal.go#L59"
                return ((-3.442619855899 : stdgo.GoFloat64) - _x : stdgo.GoFloat64);
            };
            //"file:///Users/o/.go/go1.21.3/src/math/rand/normal.go#L61"
            if (((stdgo._internal.math.rand.Rand__fn._fn[(_i : stdgo.GoInt)] + ((_r.float64() : stdgo.GoFloat32) * ((stdgo._internal.math.rand.Rand__fn._fn[((_i - (1 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)] - stdgo._internal.math.rand.Rand__fn._fn[(_i : stdgo.GoInt)] : stdgo.GoFloat32)) : stdgo.GoFloat32) : stdgo.GoFloat32) < (stdgo._internal.math.Math_exp.exp((((-0.5 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) * _x : stdgo.GoFloat64)) : stdgo.GoFloat32) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/math/rand/normal.go#L62"
                return _x;
            };
        };
    }
    @:keep
    @:tdfield
    static public function expFloat64( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>):stdgo.GoFloat64 {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand> = _r;
        //"file:///Users/o/.go/go1.21.3/src/math/rand/exp.go#L31"
        while (true) {
            var _j = @:assignType (_r.uint32() : stdgo.GoUInt32);
            var _i = @:assignType (_j & (255u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
            var _x = @:assignType ((_j : stdgo.GoFloat64) * (stdgo._internal.math.rand.Rand__we._we[(_i : stdgo.GoInt)] : stdgo.GoFloat64) : stdgo.GoFloat64);
            //"file:///Users/o/.go/go1.21.3/src/math/rand/exp.go#L35"
            if ((_j < stdgo._internal.math.rand.Rand__ke._ke[(_i : stdgo.GoInt)] : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/math/rand/exp.go#L36"
                return _x;
            };
            //"file:///Users/o/.go/go1.21.3/src/math/rand/exp.go#L38"
            if (_i == ((0u32 : stdgo.GoUInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/math/rand/exp.go#L39"
                return ((7.69711747013105 : stdgo.GoFloat64) - stdgo._internal.math.Math_log.log(_r.float64()) : stdgo.GoFloat64);
            };
            //"file:///Users/o/.go/go1.21.3/src/math/rand/exp.go#L41"
            if (((stdgo._internal.math.rand.Rand__fe._fe[(_i : stdgo.GoInt)] + ((_r.float64() : stdgo.GoFloat32) * ((stdgo._internal.math.rand.Rand__fe._fe[((_i - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] - stdgo._internal.math.rand.Rand__fe._fe[(_i : stdgo.GoInt)] : stdgo.GoFloat32)) : stdgo.GoFloat32) : stdgo.GoFloat32) < (stdgo._internal.math.Math_exp.exp(-_x) : stdgo.GoFloat32) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/math/rand/exp.go#L42"
                return _x;
            };
        };
    }
}

package stdgo._internal.math.rand;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.math.Math;
@:keep @:allow(stdgo._internal.math.rand.Rand.Zipf_asInterface) class Zipf_static_extension {
    @:keep
    @:tdfield
    static public function uint64( _z:stdgo.Ref<stdgo._internal.math.rand.Rand_zipf.Zipf>):stdgo.GoUInt64 {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.rand.Rand_zipf.Zipf> = _z;
        //"file:///Users/o/.go/go1.21.3/src/math/rand/zipf.go#L59"
        if (({
            final value = _z;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/math/rand/zipf.go#L60"
            throw new stdgo.AnyInterface(("rand: nil Zipf" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        var _k = @:assignType (0 : stdgo.GoFloat64);
        //"file:///Users/o/.go/go1.21.3/src/math/rand/zipf.go#L64"
        while (true) {
            var _r = @:assignType ((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r.float64() : stdgo.GoFloat64);
            var _ur = @:assignType ((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hxm + (_r * (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hx0minusHxm : stdgo.GoFloat64) : stdgo.GoFloat64);
            var _x = @:assignType (_z._hinv(_ur) : stdgo.GoFloat64);
            _k = stdgo._internal.math.Math_floor.floor((_x + (0.5 : stdgo.GoFloat64) : stdgo.GoFloat64));
            //"file:///Users/o/.go/go1.21.3/src/math/rand/zipf.go#L69"
            if (((_k - _x : stdgo.GoFloat64) <= (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._s : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/math/rand/zipf.go#L70"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/math/rand/zipf.go#L72"
            if ((_ur >= (_z._h((_k + (0.5 : stdgo.GoFloat64) : stdgo.GoFloat64)) - stdgo._internal.math.Math_exp.exp((-stdgo._internal.math.Math_log.log((_k + (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._v : stdgo.GoFloat64)) * (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._q : stdgo.GoFloat64)) : stdgo.GoFloat64) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/math/rand/zipf.go#L73"
                break;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/math/rand/zipf.go#L76"
        return (_k : stdgo.GoUInt64);
    }
    @:keep
    @:tdfield
    static public function _hinv( _z:stdgo.Ref<stdgo._internal.math.rand.Rand_zipf.Zipf>, _x:stdgo.GoFloat64):stdgo.GoFloat64 {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.rand.Rand_zipf.Zipf> = _z;
        //"file:///Users/o/.go/go1.21.3/src/math/rand/zipf.go#L32"
        return (stdgo._internal.math.Math_exp.exp(((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._oneminusQinv * stdgo._internal.math.Math_log.log(((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._oneminusQ * _x : stdgo.GoFloat64)) : stdgo.GoFloat64)) - (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._v : stdgo.GoFloat64);
    }
    @:keep
    @:tdfield
    static public function _h( _z:stdgo.Ref<stdgo._internal.math.rand.Rand_zipf.Zipf>, _x:stdgo.GoFloat64):stdgo.GoFloat64 {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.rand.Rand_zipf.Zipf> = _z;
        //"file:///Users/o/.go/go1.21.3/src/math/rand/zipf.go#L28"
        return (stdgo._internal.math.Math_exp.exp(((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._oneminusQ * stdgo._internal.math.Math_log.log(((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._v + _x : stdgo.GoFloat64)) : stdgo.GoFloat64)) * (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._oneminusQinv : stdgo.GoFloat64);
    }
}

package stdgo._internal.math.rand;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.math.Math;
function newZipf(_r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>, _s:stdgo.GoFloat64, _v:stdgo.GoFloat64, _imax:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.math.rand.Rand_zipf.Zipf> {
        var _z = (stdgo.Go.setRef(({} : stdgo._internal.math.rand.Rand_zipf.Zipf), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotranddotrand_zipfdotzipf.__type__stdgodot_internaldotmathdotranddotRand_zipfdotZipf })) : stdgo.Ref<stdgo._internal.math.rand.Rand_zipf.Zipf>);
        //"file:///Users/o/.go/go1.21.3/src/math/rand/zipf.go#L41"
        if (((_s <= (1 : stdgo.GoFloat64) : Bool) || (_v < (1 : stdgo.GoFloat64) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/rand/zipf.go#L42"
            return null;
        };
        (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r = _r;
        (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._imax = (_imax : stdgo.GoFloat64);
        (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._v = _v;
        (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._q = _s;
        (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._oneminusQ = ((1 : stdgo.GoFloat64) - (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._q : stdgo.GoFloat64);
        (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._oneminusQinv = ((1 : stdgo.GoFloat64) / (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._oneminusQ : stdgo.GoFloat64);
        (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hxm = _z._h(((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._imax + (0.5 : stdgo.GoFloat64) : stdgo.GoFloat64));
        (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hx0minusHxm = ((_z._h((0.5 : stdgo.GoFloat64)) - stdgo._internal.math.Math_exp.exp((stdgo._internal.math.Math_log.log((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._v) * (-(@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._q) : stdgo.GoFloat64)) : stdgo.GoFloat64) - (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hxm : stdgo.GoFloat64);
        (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._s = ((1 : stdgo.GoFloat64) - _z._hinv((_z._h((1.5 : stdgo.GoFloat64)) - stdgo._internal.math.Math_exp.exp((-(@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._q * stdgo._internal.math.Math_log.log(((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._v + (1 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64)) : stdgo.GoFloat64)) : stdgo.GoFloat64);
        //"file:///Users/o/.go/go1.21.3/src/math/rand/zipf.go#L53"
        return _z;
    }

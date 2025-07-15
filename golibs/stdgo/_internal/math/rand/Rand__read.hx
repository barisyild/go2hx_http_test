package stdgo._internal.math.rand;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.math.Math;
function _read(_p:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo._internal.math.rand.Rand_source.Source, _readVal:stdgo.Pointer<stdgo.GoInt64>, _readPos:stdgo.Pointer<stdgo.GoInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _pos = @:assignType (_readPos.value : stdgo.GoInt8);
        var _val = @:assignType (_readVal.value : stdgo.GoInt64);
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(({
                final __t__ = _src;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotmathdotranddotrand_sourcedotsource.__type__stdgodot_internaldotmathdotranddotRand_sourcedotSource)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotranddotrand_t_rngsourcedott_rngsource.__type__stdgodot_internaldotmathdotranddotRand_t_rngsourcedotT_rngSource })) : stdgo.Ref<stdgo._internal.math.rand.Rand_t_rngsource.T_rngSource>), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo.Ref<stdgo._internal.math.rand.Rand_t_rngsource.T_rngSource>), _1 : false };
        }, _rng = __tmp__._0, __0 = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L286"
        {
            _n = (0 : stdgo.GoInt);
            while ((_n < (_p.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L287"
                if (_pos == ((0 : stdgo.GoInt8))) {
                    //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L288"
                    if (({
                        final value = _rng;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    })) {
                        _val = _rng.int63();
                    } else {
                        _val = _src.int63();
                    };
                    _pos = (7 : stdgo.GoInt8);
                };
_p[(_n : stdgo.GoInt)] = (_val : stdgo.GoUInt8);
_val = (_val >> ((8i64 : stdgo.GoUInt64)) : stdgo.GoInt64);
//"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L297"
                _pos--;
                _n++;
            };
        };
        _readPos.value = _pos;
        _readVal.value = _val;
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L301"
        return { _0 : _n, _1 : _err };
    }

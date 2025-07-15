package stdgo._internal.math.rand;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.math.Math;
function new_(_src:stdgo._internal.math.rand.Rand_source.Source):stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand> {
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(({
                final __t__ = _src;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotmathdotranddotrand_sourcedotsource.__type__stdgodot_internaldotmathdotranddotRand_sourcedotSource)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), _internal.gotype.Gotype___type__stdgodot_internaldotmathdotranddotrand_source64dotsource64.__type__stdgodot_internaldotmathdotranddotRand_source64dotSource64) : stdgo._internal.math.rand.Rand_source64.Source64), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo._internal.math.rand.Rand_source64.Source64), _1 : false };
        }, _s64 = __tmp__._0, __0 = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L80"
        return (stdgo.Go.setRef(({ _src : _src, _s64 : _s64 } : stdgo._internal.math.rand.Rand_rand.Rand), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotranddotrand_randdotrand.__type__stdgodot_internaldotmathdotranddotRand_randdotRand })) : stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>);
    }

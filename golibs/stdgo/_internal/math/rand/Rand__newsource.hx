package stdgo._internal.math.rand;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.math.Math;
function _newSource(_seed:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.rand.Rand_t_rngsource.T_rngSource> {
        var _rng:stdgo._internal.math.rand.Rand_t_rngsource.T_rngSource = ({} : stdgo._internal.math.rand.Rand_t_rngsource.T_rngSource);
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L57"
        _rng.seed(_seed);
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L58"
        return (stdgo.Go.setRef(_rng, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotranddotrand_t_rngsourcedott_rngsource.__type__stdgodot_internaldotmathdotranddotRand_t_rngsourcedotT_rngSource })) : stdgo.Ref<stdgo._internal.math.rand.Rand_t_rngsource.T_rngSource>);
    }

package stdgo._internal.math.rand;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.math.Math;
function newSource(_seed:stdgo.GoInt64):stdgo._internal.math.rand.Rand_source.Source {
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L52"
        return stdgo.Go.asInterface(stdgo._internal.math.rand.Rand__newsource._newSource(_seed), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotranddotrand_t_rngsourcedott_rngsource.__type__stdgodot_internaldotmathdotranddotRand_t_rngsourcedotT_rngSource }));
    }

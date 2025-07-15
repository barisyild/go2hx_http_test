package stdgo._internal.math.rand;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.math.Math;
function _globalRand():stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand> {
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L319"
        {
            var _r = (stdgo._internal.math.rand.Rand__globalrandgenerator._globalRandGenerator.load() : stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>);
            if (({
                final value = _r;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L320"
                return _r;
            };
        };
        var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand> = (null : stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>);
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L325"
        if (stdgo._internal.math.rand.Rand__randautoseed._randautoseed.value() == (("0" : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L326"
            stdgo._internal.math.rand.Rand__randautoseed._randautoseed.incNonDefault();
            _r = stdgo._internal.math.rand.Rand_new_.new_(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotranddotrand_t_lockedsourcedott_lockedsource.__type__stdgodot_internaldotmathdotranddotRand_t_lockedsourcedotT_lockedSource })) : stdgo.Ref<stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotranddotrand_t_lockedsourcedott_lockedsource.__type__stdgodot_internaldotmathdotranddotRand_t_lockedsourcedotT_lockedSource })));
            //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L328"
            _r.seed((1i64 : stdgo.GoInt64));
        } else {
            _r = (stdgo.Go.setRef(({ _src : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.math.rand.Rand_t_fastsource.T_fastSource() : stdgo._internal.math.rand.Rand_t_fastsource.T_fastSource), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotranddotrand_t_fastsourcedott_fastsource.__type__stdgodot_internaldotmathdotranddotRand_t_fastsourcedotT_fastSource })) : stdgo.Ref<stdgo._internal.math.rand.Rand_t_fastsource.T_fastSource>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotranddotrand_t_fastsourcedott_fastsource.__type__stdgodot_internaldotmathdotranddotRand_t_fastsourcedotT_fastSource })), _s64 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.math.rand.Rand_t_fastsource.T_fastSource() : stdgo._internal.math.rand.Rand_t_fastsource.T_fastSource), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotranddotrand_t_fastsourcedott_fastsource.__type__stdgodot_internaldotmathdotranddotRand_t_fastsourcedotT_fastSource })) : stdgo.Ref<stdgo._internal.math.rand.Rand_t_fastsource.T_fastSource>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotranddotrand_t_fastsourcedott_fastsource.__type__stdgodot_internaldotmathdotranddotRand_t_fastsourcedotT_fastSource })) } : stdgo._internal.math.rand.Rand_rand.Rand), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotranddotrand_randdotrand.__type__stdgodot_internaldotmathdotranddotRand_randdotRand })) : stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L336"
        if (!(stdgo._internal.math.rand.Rand__globalrandgenerator._globalRandGenerator.compareAndSwap(null, stdgo.Go.pointer(_r)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L343"
            return (stdgo._internal.math.rand.Rand__globalrandgenerator._globalRandGenerator.load() : stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L346"
        return _r;
    }

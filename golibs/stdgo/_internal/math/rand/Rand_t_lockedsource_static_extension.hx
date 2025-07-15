package stdgo._internal.math.rand;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.math.Math;
@:keep @:allow(stdgo._internal.math.rand.Rand.T_lockedSource_asInterface) class T_lockedSource_static_extension {
    @:keep
    @:tdfield
    static public function _read( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource>, _p:stdgo.Slice<stdgo.GoUInt8>, _readVal:stdgo.Pointer<stdgo.GoInt64>, _readPos:stdgo.Pointer<stdgo.GoInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource> = _r;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L543"
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lk.lock();
        {
            var __tmp__ = stdgo._internal.math.rand.Rand__read._read(_p, stdgo.Go.asInterface((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._s, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotranddotrand_t_rngsourcedott_rngsource.__type__stdgodot_internaldotmathdotranddotRand_t_rngsourcedotT_rngSource })), _readVal, _readPos);
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L545"
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lk.unlock();
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L546"
        return { _0 : _n, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function _seed( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource>, _seed:stdgo.GoInt64):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource> = _r;
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L534"
        if (({
            final value = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._s;
            (value == null || (value : Dynamic).__nil__);
        })) {
            (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._s = stdgo._internal.math.rand.Rand__newsource._newSource(_seed);
        } else {
            //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L537"
            (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._s.seed(_seed);
        };
    }
    @:keep
    @:tdfield
    static public function _seedPos( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource>, _seed:stdgo.GoInt64, _readPos:stdgo.Pointer<stdgo.GoInt8>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource> = _r;
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L525"
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lk.lock();
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L526"
        _r._seed(_seed);
        _readPos.value = (0 : stdgo.GoInt8);
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L528"
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lk.unlock();
    }
    @:keep
    @:tdfield
    static public function seed( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource>, _seed:stdgo.GoInt64):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource> = _r;
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L518"
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lk.lock();
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L519"
        _r._seed(_seed);
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L520"
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lk.unlock();
    }
    @:keep
    @:tdfield
    static public function uint64( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource>):stdgo.GoUInt64 {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource> = _r;
        var _n = (0 : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L511"
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lk.lock();
        _n = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._s.uint64();
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L513"
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lk.unlock();
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L514"
        return _n;
    }
    @:keep
    @:tdfield
    static public function int63( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource>):stdgo.GoInt64 {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource> = _r;
        var _n = (0 : stdgo.GoInt64);
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L504"
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lk.lock();
        _n = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._s.int63();
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L506"
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lk.unlock();
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L507"
        return _n;
    }
}

package stdgo._internal.math.rand;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.math.Math;
@:keep @:allow(stdgo._internal.math.rand.Rand.T_fastSource_asInterface) class T_fastSource_static_extension {
    @:keep
    @:tdfield
    static public function _read( _fs:stdgo.Ref<stdgo._internal.math.rand.Rand_t_fastsource.T_fastSource>, _p:stdgo.Slice<stdgo.GoUInt8>, _readVal:stdgo.Pointer<stdgo.GoInt64>, _readPos:stdgo.Pointer<stdgo.GoInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _fs:stdgo.Ref<stdgo._internal.math.rand.Rand_t_fastsource.T_fastSource> = _fs;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L372"
        (@:checkr _fs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
        {
            var __tmp__ = stdgo._internal.math.rand.Rand__read._read(_p, stdgo.Go.asInterface(_fs, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotranddotrand_t_fastsourcedott_fastsource.__type__stdgodot_internaldotmathdotranddotRand_t_fastsourcedotT_fastSource })), _readVal, _readPos);
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L374"
        (@:checkr _fs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L375"
        return { _0 : _n, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function uint64( _:stdgo.Ref<stdgo._internal.math.rand.Rand_t_fastsource.T_fastSource>):stdgo.GoUInt64 {
        @:recv var _:stdgo.Ref<stdgo._internal.math.rand.Rand_t_fastsource.T_fastSource> = _;
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L368"
        return stdgo._internal.math.rand.Rand__fastrand64._fastrand64();
    }
    @:keep
    @:tdfield
    static public function seed( _:stdgo.Ref<stdgo._internal.math.rand.Rand_t_fastsource.T_fastSource>, _0:stdgo.GoInt64):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.math.rand.Rand_t_fastsource.T_fastSource> = _;
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L364"
        throw new stdgo.AnyInterface(("internal error: call to fastSource.Seed" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
    }
    @:keep
    @:tdfield
    static public function int63( _:stdgo.Ref<stdgo._internal.math.rand.Rand_t_fastsource.T_fastSource>):stdgo.GoInt64 {
        @:recv var _:stdgo.Ref<stdgo._internal.math.rand.Rand_t_fastsource.T_fastSource> = _;
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rand.go#L360"
        return ((stdgo._internal.math.rand.Rand__fastrand64._fastrand64() & (9223372036854775807i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt64);
    }
}

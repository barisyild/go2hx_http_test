package stdgo._internal.math.rand;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.math.Math;
@:keep @:allow(stdgo._internal.math.rand.Rand.T_rngSource_asInterface) class T_rngSource_static_extension {
    @:keep
    @:tdfield
    static public function uint64( _rng:stdgo.Ref<stdgo._internal.math.rand.Rand_t_rngsource.T_rngSource>):stdgo.GoUInt64 {
        @:recv var _rng:stdgo.Ref<stdgo._internal.math.rand.Rand_t_rngsource.T_rngSource> = _rng;
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rng.go#L239"
        (@:checkr _rng ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tap--;
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rng.go#L240"
        if (((@:checkr _rng ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tap < (0 : stdgo.GoInt) : Bool)) {
            (@:checkr _rng ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tap = ((@:checkr _rng ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tap + ((607 : stdgo.GoInt)) : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rng.go#L244"
        (@:checkr _rng ?? throw stdgo.Error._nullPointerDereference.__underlying__())._feed--;
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rng.go#L245"
        if (((@:checkr _rng ?? throw stdgo.Error._nullPointerDereference.__underlying__())._feed < (0 : stdgo.GoInt) : Bool)) {
            (@:checkr _rng ?? throw stdgo.Error._nullPointerDereference.__underlying__())._feed = ((@:checkr _rng ?? throw stdgo.Error._nullPointerDereference.__underlying__())._feed + ((607 : stdgo.GoInt)) : stdgo.GoInt);
        };
        var _x = @:assignType ((@:checkr _rng ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vec[((@:checkr _rng ?? throw stdgo.Error._nullPointerDereference.__underlying__())._feed : stdgo.GoInt)] + (@:checkr _rng ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vec[((@:checkr _rng ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tap : stdgo.GoInt)] : stdgo.GoInt64);
        (@:checkr _rng ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vec[((@:checkr _rng ?? throw stdgo.Error._nullPointerDereference.__underlying__())._feed : stdgo.GoInt)] = _x;
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rng.go#L251"
        return (_x : stdgo.GoUInt64);
    }
    @:keep
    @:tdfield
    static public function int63( _rng:stdgo.Ref<stdgo._internal.math.rand.Rand_t_rngsource.T_rngSource>):stdgo.GoInt64 {
        @:recv var _rng:stdgo.Ref<stdgo._internal.math.rand.Rand_t_rngsource.T_rngSource> = _rng;
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rng.go#L234"
        return ((_rng.uint64() & (9223372036854775807i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt64);
    }
    @:keep
    @:tdfield
    static public function seed( _rng:stdgo.Ref<stdgo._internal.math.rand.Rand_t_rngsource.T_rngSource>, _seed:stdgo.GoInt64):Void {
        @:recv var _rng:stdgo.Ref<stdgo._internal.math.rand.Rand_t_rngsource.T_rngSource> = _rng;
        (@:checkr _rng ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tap = (0 : stdgo.GoInt);
        (@:checkr _rng ?? throw stdgo.Error._nullPointerDereference.__underlying__())._feed = (334 : stdgo.GoInt);
        _seed = (_seed % (2147483647i64 : stdgo.GoInt64) : stdgo.GoInt64);
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rng.go#L209"
        if ((_seed < (0i64 : stdgo.GoInt64) : Bool)) {
            _seed = (_seed + ((2147483647i64 : stdgo.GoInt64)) : stdgo.GoInt64);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rng.go#L212"
        if (_seed == ((0i64 : stdgo.GoInt64))) {
            _seed = (89482311i64 : stdgo.GoInt64);
        };
        var _x = @:assignType (_seed : stdgo.GoInt32);
        //"file:///Users/o/.go/go1.21.3/src/math/rand/rng.go#L217"
        {
            var _i = @:assignType (-20 : stdgo.GoInt);
            while ((_i < (607 : stdgo.GoInt) : Bool)) {
                _x = stdgo._internal.math.rand.Rand__seedrand._seedrand(_x);
//"file:///Users/o/.go/go1.21.3/src/math/rand/rng.go#L219"
                if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                    var _u:stdgo.GoInt64 = (0 : stdgo.GoInt64);
                    _u = ((_x : stdgo.GoInt64) << (40i64 : stdgo.GoUInt64) : stdgo.GoInt64);
                    _x = stdgo._internal.math.rand.Rand__seedrand._seedrand(_x);
                    _u = (_u ^ (((_x : stdgo.GoInt64) << (20i64 : stdgo.GoUInt64) : stdgo.GoInt64)) : stdgo.GoInt64);
                    _x = stdgo._internal.math.rand.Rand__seedrand._seedrand(_x);
                    _u = (_u ^ ((_x : stdgo.GoInt64)) : stdgo.GoInt64);
                    _u = (_u ^ (stdgo._internal.math.rand.Rand__rngcooked._rngCooked[(_i : stdgo.GoInt)]) : stdgo.GoInt64);
                    (@:checkr _rng ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vec[(_i : stdgo.GoInt)] = _u;
                };
                _i++;
            };
        };
    }
}

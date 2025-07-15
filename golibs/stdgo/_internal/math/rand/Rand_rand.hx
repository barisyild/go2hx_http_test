package stdgo._internal.math.rand;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.math.Math;
@:structInit @:using(stdgo._internal.math.rand.Rand_rand_static_extension.Rand_static_extension) @:using(stdgo._internal.math.rand.Rand_rand_static_extension.Rand_static_extension) class Rand {
    public var _src : stdgo._internal.math.rand.Rand_source.Source = (null : stdgo._internal.math.rand.Rand_source.Source);
    public var _s64 : stdgo._internal.math.rand.Rand_source64.Source64 = (null : stdgo._internal.math.rand.Rand_source64.Source64);
    public var _readVal : stdgo.GoInt64 = 0;
    public var _readPos : stdgo.GoInt8 = 0;
    public function new(?_src:stdgo._internal.math.rand.Rand_source.Source, ?_s64:stdgo._internal.math.rand.Rand_source64.Source64, ?_readVal:stdgo.GoInt64, ?_readPos:stdgo.GoInt8) {
        if (_src != null) this._src = _src;
        if (_s64 != null) this._s64 = _s64;
        if (_readVal != null) this._readVal = _readVal;
        if (_readPos != null) this._readPos = _readPos;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_src", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotranddotrand_sourcedotsource.__type__stdgodot_internaldotmathdotranddotRand_sourcedotSource }, optional : false }, { name : "_s64", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotranddotrand_source64dotsource64.__type__stdgodot_internaldotmathdotranddotRand_source64dotSource64 }, optional : false }, { name : "_readVal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_readPos", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int8_kind) }, optional : false }])));
    public function __copy__() {
        return new Rand(_src, _s64, _readVal, _readPos);
    }
}

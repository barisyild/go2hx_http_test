package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_t_exhaustive_static_extension.T_exhaustive_static_extension) @:using(_internal.reflect_test.Reflect_test_t_exhaustive_static_extension.T_exhaustive_static_extension) class T_exhaustive {
    public var _r : stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand> = (null : stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>);
    public var _pos : stdgo.GoInt = 0;
    public var _last : stdgo.Slice<_internal.reflect_test.Reflect_test_t_choice.T_choice> = (null : stdgo.Slice<_internal.reflect_test.Reflect_test_t_choice.T_choice>);
    public function new(?_r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>, ?_pos:stdgo.GoInt, ?_last:stdgo.Slice<_internal.reflect_test.Reflect_test_t_choice.T_choice>) {
        if (_r != null) this._r = _r;
        if (_pos != null) this._pos = _pos;
        if (_last != null) this._last = _last;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_r", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotranddotrand_randdotrand.__type__stdgodot_internaldotmathdotranddotRand_randdotRand }) }, optional : false }, { name : "_pos", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_last", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_choicedott_choice.__type___internaldotreflect_testdotReflect_test_t_choicedotT_choice }) }, optional : false }])));
    public function __copy__() {
        return new T_exhaustive(_r, _pos, _last);
    }
}

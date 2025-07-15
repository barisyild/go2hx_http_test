package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_t_testalignment___localname___t2_32400_static_extension.T_testAlignment___localname___T2_32400_static_extension) @:using(_internal.reflect_test.Reflect_test_t_testalignment___localname___t2_32400_static_extension.T_testAlignment___localname___T2_32400_static_extension) class T_testAlignment___localname___T2_32400 {
    @:embedded
    public var t2inner : _internal.reflect_test.Reflect_test_t_testalignment___localname___t2inner_32363.T_testAlignment___localname___T2inner_32363 = ({} : _internal.reflect_test.Reflect_test_t_testalignment___localname___t2inner_32363.T_testAlignment___localname___T2inner_32363);
    public var _f : stdgo.GoInt = 0;
    public function new(?t2inner:_internal.reflect_test.Reflect_test_t_testalignment___localname___t2inner_32363.T_testAlignment___localname___T2inner_32363, ?_f:stdgo.GoInt) {
        if (t2inner != null) this.t2inner = t2inner;
        if (_f != null) this._f = _f;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "t2inner", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testalignment___localname___t2inner_32363dott_testalignment___localname___t2inner_32363.__type___internaldotreflect_testdotReflect_test_t_testalignment___localname___t2inner_32363dotT_testAlignment___localname___T2inner_32363 }, optional : false }, { name : "_f", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new T_testAlignment___localname___T2_32400(t2inner, _f);
    }
}

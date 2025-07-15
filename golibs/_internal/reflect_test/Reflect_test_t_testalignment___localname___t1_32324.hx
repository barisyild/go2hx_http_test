package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_t_testalignment___localname___t1_32324_static_extension.T_testAlignment___localname___T1_32324_static_extension) @:using(_internal.reflect_test.Reflect_test_t_testalignment___localname___t1_32324_static_extension.T_testAlignment___localname___T1_32324_static_extension) class T_testAlignment___localname___T1_32324 {
    @:embedded
    public var t1inner : _internal.reflect_test.Reflect_test_t_testalignment___localname___t1inner_32290.T_testAlignment___localname___T1inner_32290 = ({} : _internal.reflect_test.Reflect_test_t_testalignment___localname___t1inner_32290.T_testAlignment___localname___T1inner_32290);
    public var _f : stdgo.GoInt = 0;
    public function new(?t1inner:_internal.reflect_test.Reflect_test_t_testalignment___localname___t1inner_32290.T_testAlignment___localname___T1inner_32290, ?_f:stdgo.GoInt) {
        if (t1inner != null) this.t1inner = t1inner;
        if (_f != null) this._f = _f;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "t1inner", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testalignment___localname___t1inner_32290dott_testalignment___localname___t1inner_32290.__type___internaldotreflect_testdotReflect_test_t_testalignment___localname___t1inner_32290dotT_testAlignment___localname___T1inner_32290 }, optional : false }, { name : "_f", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new T_testAlignment___localname___T1_32324(t1inner, _f);
    }
}

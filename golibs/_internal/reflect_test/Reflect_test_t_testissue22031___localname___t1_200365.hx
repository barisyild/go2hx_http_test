package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_t_testissue22031___localname___t1_200365_static_extension.T_testIssue22031___localname___t1_200365_static_extension) @:using(_internal.reflect_test.Reflect_test_t_testissue22031___localname___t1_200365_static_extension.T_testIssue22031___localname___t1_200365_static_extension) class T_testIssue22031___localname___t1_200365 {
    @:embedded
    public var _s : _internal.reflect_test.Reflect_test_t_testissue22031___localname___s_200338.T_testIssue22031___localname___s_200338 = (new _internal.reflect_test.Reflect_test_t_testissue22031___localname___s_200338.T_testIssue22031___localname___s_200338(0, 0) : _internal.reflect_test.Reflect_test_t_testissue22031___localname___s_200338.T_testIssue22031___localname___s_200338);
    public function new(?_s:_internal.reflect_test.Reflect_test_t_testissue22031___localname___s_200338.T_testIssue22031___localname___s_200338) {
        if (_s != null) this._s = _s;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_s", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testissue22031___localname___s_200338dott_testissue22031___localname___s_200338.__type___internaldotreflect_testdotReflect_test_t_testissue22031___localname___s_200338dotT_testIssue22031___localname___s_200338 }, optional : false }])));
    public function __copy__() {
        return new T_testIssue22031___localname___t1_200365(_s);
    }
}

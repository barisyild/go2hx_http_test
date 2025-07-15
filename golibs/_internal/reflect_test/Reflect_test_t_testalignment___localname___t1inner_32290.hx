package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_t_testalignment___localname___t1inner_32290_static_extension.T_testAlignment___localname___T1inner_32290_static_extension) @:using(_internal.reflect_test.Reflect_test_t_testalignment___localname___t1inner_32290_static_extension.T_testAlignment___localname___T1inner_32290_static_extension) class T_testAlignment___localname___T1inner_32290 {
    public var _a : stdgo.GoInt = 0;
    public function new(?_a:stdgo.GoInt) {
        if (_a != null) this._a = _a;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_a", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new T_testAlignment___localname___T1inner_32290(_a);
    }
}

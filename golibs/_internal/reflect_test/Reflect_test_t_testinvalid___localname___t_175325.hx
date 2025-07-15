package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_t_testinvalid___localname___t_175325_static_extension.T_testInvalid___localname___T_175325_static_extension) @:using(_internal.reflect_test.Reflect_test_t_testinvalid___localname___t_175325_static_extension.T_testInvalid___localname___T_175325_static_extension) class T_testInvalid___localname___T_175325 {
    public var _v : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public function new(?_v:stdgo.AnyInterface) {
        if (_v != null) this._v = _v;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_v", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }, optional : false }])));
    public function __copy__() {
        return new T_testInvalid___localname___T_175325(_v);
    }
}

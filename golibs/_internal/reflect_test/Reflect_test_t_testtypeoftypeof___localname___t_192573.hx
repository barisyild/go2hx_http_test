package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_t_testtypeoftypeof___localname___t_192573_static_extension.T_testTypeOfTypeOf___localname___T_192573_static_extension) @:using(_internal.reflect_test.Reflect_test_t_testtypeoftypeof___localname___t_192573_static_extension.T_testTypeOfTypeOf___localname___T_192573_static_extension) class T_testTypeOfTypeOf___localname___T_192573 {
    @:embedded
    public var _int : stdgo.GoInt = 0;
    public function new(?_int:stdgo.GoInt) {
        if (_int != null) this._int = _int;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_int", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new T_testTypeOfTypeOf___localname___T_192573(_int);
    }
}

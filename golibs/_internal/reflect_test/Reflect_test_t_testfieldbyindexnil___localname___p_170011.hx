package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_t_testfieldbyindexnil___localname___p_170011_static_extension.T_testFieldByIndexNil___localname___P_170011_static_extension) @:using(_internal.reflect_test.Reflect_test_t_testfieldbyindexnil___localname___p_170011_static_extension.T_testFieldByIndexNil___localname___P_170011_static_extension) class T_testFieldByIndexNil___localname___P_170011 {
    public var f : stdgo.GoInt = 0;
    public function new(?f:stdgo.GoInt) {
        if (f != null) this.f = f;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "f", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new T_testFieldByIndexNil___localname___P_170011(f);
    }
}

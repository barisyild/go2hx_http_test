package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_t_examplestructtag___localname___s_1989_static_extension.T_exampleStructTag___localname___S_1989_static_extension) @:using(_internal.reflect_test.Reflect_test_t_examplestructtag___localname___s_1989_static_extension.T_exampleStructTag___localname___S_1989_static_extension) class T_exampleStructTag___localname___S_1989 {
    @:tag("`species:\"gopher\" color:\"blue\"`")
    public var f : stdgo.GoString = "";
    public function new(?f:stdgo.GoString) {
        if (f != null) this.f = f;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "f", embedded : false, tag : "`species:\"gopher\" color:\"blue\"`", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }])));
    public function __copy__() {
        return new T_exampleStructTag___localname___S_1989(f);
    }
}

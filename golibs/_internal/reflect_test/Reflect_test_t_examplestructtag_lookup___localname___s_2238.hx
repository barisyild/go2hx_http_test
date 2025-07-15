package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_t_examplestructtag_lookup___localname___s_2238_static_extension.T_exampleStructTag_Lookup___localname___S_2238_static_extension) @:using(_internal.reflect_test.Reflect_test_t_examplestructtag_lookup___localname___s_2238_static_extension.T_exampleStructTag_Lookup___localname___S_2238_static_extension) class T_exampleStructTag_Lookup___localname___S_2238 {
    @:tag("`alias:\"field_0\"`")
    public var f0 : stdgo.GoString = "";
    @:tag("`alias:\"\"`")
    public var f1 : stdgo.GoString = "";
    public var f2 : stdgo.GoString = "";
    public function new(?f0:stdgo.GoString, ?f1:stdgo.GoString, ?f2:stdgo.GoString) {
        if (f0 != null) this.f0 = f0;
        if (f1 != null) this.f1 = f1;
        if (f2 != null) this.f2 = f2;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "f0", embedded : false, tag : "`alias:\"field_0\"`", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "f1", embedded : false, tag : "`alias:\"\"`", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "f2", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }])));
    public function __copy__() {
        return new T_exampleStructTag_Lookup___localname___S_2238(f0, f1, f2);
    }
}

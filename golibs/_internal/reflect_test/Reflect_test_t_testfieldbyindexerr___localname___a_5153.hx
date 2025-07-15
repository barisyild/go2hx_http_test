package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_t_testfieldbyindexerr___localname___a_5153_static_extension.T_testFieldByIndexErr___localname___A_5153_static_extension) @:using(_internal.reflect_test.Reflect_test_t_testfieldbyindexerr___localname___a_5153_static_extension.T_testFieldByIndexErr___localname___A_5153_static_extension) class T_testFieldByIndexErr___localname___A_5153 {
    public var s : stdgo.GoString = "";
    public function new(?s:stdgo.GoString) {
        if (s != null) this.s = s;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "s", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }])));
    public function __copy__() {
        return new T_testFieldByIndexErr___localname___A_5153(s);
    }
}

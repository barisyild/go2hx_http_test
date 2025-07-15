package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_t_teststructarg___localname___padded_90290_static_extension.T_testStructArg___localname___padded_90290_static_extension) @:using(_internal.reflect_test.Reflect_test_t_teststructarg___localname___padded_90290_static_extension.T_testStructArg___localname___padded_90290_static_extension) class T_testStructArg___localname___padded_90290 {
    public var b : stdgo.GoString = "";
    public var c : stdgo.GoInt32 = 0;
    public function new(?b:stdgo.GoString, ?c:stdgo.GoInt32) {
        if (b != null) this.b = b;
        if (c != null) this.c = c;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "b", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "c", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int32_kind) }, optional : false }])));
    public function __copy__() {
        return new T_testStructArg___localname___padded_90290(b, c);
    }
}

package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_t_testcallarglive___localname___t_173836_static_extension.T_testCallArgLive___localname___T_173836_static_extension) @:using(_internal.reflect_test.Reflect_test_t_testcallarglive___localname___t_173836_static_extension.T_testCallArgLive___localname___T_173836_static_extension) class T_testCallArgLive___localname___T_173836 {
    public var x : stdgo.Pointer<stdgo.GoString> = (null : stdgo.Pointer<stdgo.GoString>);
    public var y : stdgo.Pointer<stdgo.GoString> = (null : stdgo.Pointer<stdgo.GoString>);
    public function new(?x:stdgo.Pointer<stdgo.GoString>, ?y:stdgo.Pointer<stdgo.GoString>) {
        if (x != null) this.x = x;
        if (y != null) this.y = y;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "x", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }) }, optional : false }, { name : "y", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }) }, optional : false }])));
    public function __copy__() {
        return new T_testCallArgLive___localname___T_173836(x, y);
    }
}

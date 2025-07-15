package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_t_teststructofdirectiface___localname___t_150844_static_extension.T_testStructOfDirectIface___localname___T_150844_static_extension) @:using(_internal.reflect_test.Reflect_test_t_teststructofdirectiface___localname___t_150844_static_extension.T_testStructOfDirectIface___localname___T_150844_static_extension) class T_testStructOfDirectIface___localname___T_150844 {
    public var x : stdgo.GoArray<stdgo.Pointer<stdgo.GoUInt8>> = new stdgo.GoArray<stdgo.Pointer<stdgo.GoUInt8>>(0, 0);
    public function new(?x:stdgo.GoArray<stdgo.Pointer<stdgo.GoUInt8>>) {
        if (x != null) this.x = x;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "x", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, 0) }, optional : false }])));
    public function __copy__() {
        return new T_testStructOfDirectIface___localname___T_150844(x);
    }
}

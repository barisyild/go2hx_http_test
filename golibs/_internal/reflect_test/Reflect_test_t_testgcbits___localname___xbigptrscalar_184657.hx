package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_t_testgcbits___localname___xbigptrscalar_184657_static_extension.T_testGCBits___localname___Xbigptrscalar_184657_static_extension) @:using(_internal.reflect_test.Reflect_test_t_testgcbits___localname___xbigptrscalar_184657_static_extension.T_testGCBits___localname___Xbigptrscalar_184657_static_extension) class T_testGCBits___localname___Xbigptrscalar_184657 {
    @:optional
    public var __0 : stdgo.GoArray<stdgo.Pointer<stdgo.GoUInt8>> = new stdgo.GoArray<stdgo.Pointer<stdgo.GoUInt8>>(100, 100);
    @:optional
    public var __1 : stdgo.GoArray<stdgo.GoUIntptr> = new stdgo.GoArray<stdgo.GoUIntptr>(100, 100);
    public function new(?__0:stdgo.GoArray<stdgo.Pointer<stdgo.GoUInt8>>, ?__1:stdgo.GoArray<stdgo.GoUIntptr>) {
        if (__0 != null) this.__0 = __0;
        if (__1 != null) this.__1 = __1;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "__0", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, 100) }, optional : false }, { name : "__1", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uintptr_kind) }, 100) }, optional : false }])));
    public function __copy__() {
        return new T_testGCBits___localname___Xbigptrscalar_184657(__0, __1);
    }
}

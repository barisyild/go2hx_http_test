package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_t_testgcbits___localname___ptrscalar_185243_static_extension.T_testGCBits___localname___Ptrscalar_185243_static_extension) @:using(_internal.reflect_test.Reflect_test_t_testgcbits___localname___ptrscalar_185243_static_extension.T_testGCBits___localname___Ptrscalar_185243_static_extension) class T_testGCBits___localname___Ptrscalar_185243 {
    @:embedded
    public var _byte : stdgo.Pointer<stdgo.GoUInt8> = (null : stdgo.Pointer<stdgo.GoUInt8>);
    @:embedded
    public var _uintptr : stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
    public function new(?_byte:stdgo.Pointer<stdgo.GoUInt8>, ?_uintptr:stdgo.GoUIntptr) {
        if (_byte != null) this._byte = _byte;
        if (_uintptr != null) this._uintptr = _uintptr;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_byte", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }, { name : "_uintptr", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uintptr_kind) }, optional : false }])));
    public function __copy__() {
        return new T_testGCBits___localname___Ptrscalar_185243(_byte, _uintptr);
    }
}

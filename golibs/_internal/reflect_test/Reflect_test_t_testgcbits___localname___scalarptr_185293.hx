package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_t_testgcbits___localname___scalarptr_185293_static_extension.T_testGCBits___localname___Scalarptr_185293_static_extension) @:using(_internal.reflect_test.Reflect_test_t_testgcbits___localname___scalarptr_185293_static_extension.T_testGCBits___localname___Scalarptr_185293_static_extension) class T_testGCBits___localname___Scalarptr_185293 {
    @:embedded
    public var _uintptr : stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
    @:embedded
    public var _byte : stdgo.Pointer<stdgo.GoUInt8> = (null : stdgo.Pointer<stdgo.GoUInt8>);
    public function new(?_uintptr:stdgo.GoUIntptr, ?_byte:stdgo.Pointer<stdgo.GoUInt8>) {
        if (_uintptr != null) this._uintptr = _uintptr;
        if (_byte != null) this._byte = _byte;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_uintptr", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uintptr_kind) }, optional : false }, { name : "_byte", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }])));
    public function __copy__() {
        return new T_testGCBits___localname___Scalarptr_185293(_uintptr, _byte);
    }
}

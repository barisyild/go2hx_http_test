package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_t_testgcbits___localname___xptr_184534_static_extension.T_testGCBits___localname___Xptr_184534_static_extension) @:using(_internal.reflect_test.Reflect_test_t_testgcbits___localname___xptr_184534_static_extension.T_testGCBits___localname___Xptr_184534_static_extension) class T_testGCBits___localname___Xptr_184534 {
    public var _x : stdgo.Pointer<stdgo.GoUInt8> = (null : stdgo.Pointer<stdgo.GoUInt8>);
    public function new(?_x:stdgo.Pointer<stdgo.GoUInt8>) {
        if (_x != null) this._x = _x;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_x", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }])));
    public function __copy__() {
        return new T_testGCBits___localname___Xptr_184534(_x);
    }
}

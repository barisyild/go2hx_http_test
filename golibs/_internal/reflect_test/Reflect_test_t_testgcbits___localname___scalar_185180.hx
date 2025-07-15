package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_t_testgcbits___localname___scalar_185180_static_extension.T_testGCBits___localname___Scalar_185180_static_extension) @:using(_internal.reflect_test.Reflect_test_t_testgcbits___localname___scalar_185180_static_extension.T_testGCBits___localname___Scalar_185180_static_extension) class T_testGCBits___localname___Scalar_185180 {
    public var _x : stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
    public function new(?_x:stdgo.GoUIntptr) {
        if (_x != null) this._x = _x;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_x", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uintptr_kind) }, optional : false }])));
    public function __copy__() {
        return new T_testGCBits___localname___Scalar_185180(_x);
    }
}

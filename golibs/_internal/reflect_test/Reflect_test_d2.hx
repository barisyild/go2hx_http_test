package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_d2_static_extension.D2_static_extension) @:using(_internal.reflect_test.Reflect_test_d2_static_extension.D2_static_extension) class D2 {
    public var _d : stdgo.GoInt = 0;
    public function new(?_d:stdgo.GoInt) {
        if (_d != null) this._d = _d;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_d", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new D2(_d);
    }
}

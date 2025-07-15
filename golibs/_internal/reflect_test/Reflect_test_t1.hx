package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_t1_static_extension.T1_static_extension) @:using(_internal.reflect_test.Reflect_test_t1_static_extension.T1_static_extension) class T1 {
    public var _a : stdgo.GoString = "";
    @:embedded
    public var _int : stdgo.GoInt = 0;
    public function new(?_a:stdgo.GoString, ?_int:stdgo.GoInt) {
        if (_a != null) this._a = _a;
        if (_int != null) this._int = _int;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_a", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_int", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new T1(_a, _int);
    }
}

package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_s_static_extension.S_static_extension) @:using(_internal.reflect_test.Reflect_test_s_static_extension.S_static_extension) class S {
    public var _i1 : stdgo.GoInt64 = 0;
    public var _i2 : stdgo.GoInt64 = 0;
    public function new(?_i1:stdgo.GoInt64, ?_i2:stdgo.GoInt64) {
        if (_i1 != null) this._i1 = _i1;
        if (_i2 != null) this._i2 = _i2;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_i1", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_i2", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false }])));
    public function __copy__() {
        return new S(_i1, _i2);
    }
}

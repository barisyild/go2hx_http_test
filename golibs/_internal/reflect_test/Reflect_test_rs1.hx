package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_rs1_static_extension.RS1_static_extension) @:using(_internal.reflect_test.Reflect_test_rs1_static_extension.RS1_static_extension) class RS1 {
    public var _i : stdgo.GoInt = 0;
    public function new(?_i:stdgo.GoInt) {
        if (_i != null) this._i = _i;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_i", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new RS1(_i);
    }
}

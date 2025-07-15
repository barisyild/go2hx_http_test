package _internal.fmt_test;
@:structInit @:using(_internal.fmt_test.Fmt_test_a_static_extension.A_static_extension) @:using(_internal.fmt_test.Fmt_test_a_static_extension.A_static_extension) class A {
    public var _i : stdgo.GoInt = 0;
    public var _j : stdgo.GoUInt = 0;
    public var _s : stdgo.GoString = "";
    public var _x : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public function new(?_i:stdgo.GoInt, ?_j:stdgo.GoUInt, ?_s:stdgo.GoString, ?_x:stdgo.Slice<stdgo.GoInt>) {
        if (_i != null) this._i = _i;
        if (_j != null) this._j = _j;
        if (_s != null) this._s = _s;
        if (_x != null) this._x = _x;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_i", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_j", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint_kind) }, optional : false }, { name : "_s", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_x", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }, optional : false }])));
    public function __copy__() {
        return new A(_i, _j, _s, _x);
    }
}

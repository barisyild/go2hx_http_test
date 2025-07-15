package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_unexpt_static_extension.UnexpT_static_extension) @:using(_internal.reflect_test.Reflect_test_unexpt_static_extension.UnexpT_static_extension) class UnexpT {
    public var _m : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>);
    public function new(?_m:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>) {
        if (_m != null) this._m = _m;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_m", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }, optional : false }])));
    public function __copy__() {
        return new UnexpT(_m);
    }
}

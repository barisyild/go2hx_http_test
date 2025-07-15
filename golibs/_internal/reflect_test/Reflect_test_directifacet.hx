package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_directifacet_static_extension.DirectIfaceT_static_extension) @:using(_internal.reflect_test.Reflect_test_directifacet_static_extension.DirectIfaceT_static_extension) class DirectIfaceT {
    public var _p : stdgo.Pointer<stdgo.GoInt> = (null : stdgo.Pointer<stdgo.GoInt>);
    public function new(?_p:stdgo.Pointer<stdgo.GoInt>) {
        if (_p != null) this._p = _p;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_p", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }, optional : false }])));
    public function __copy__() {
        return new DirectIfaceT(_p);
    }
}

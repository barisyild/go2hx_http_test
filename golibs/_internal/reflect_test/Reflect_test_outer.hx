package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_outer_static_extension.Outer_static_extension) @:using(_internal.reflect_test.Reflect_test_outer_static_extension.Outer_static_extension) class Outer {
    @:embedded
    public var inner : stdgo.Ref<_internal.reflect_test.Reflect_test_inner.Inner> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_inner.Inner>);
    public var r : stdgo._internal.io.Io_reader.Reader = (null : stdgo._internal.io.Io_reader.Reader);
    public function new(?inner:stdgo.Ref<_internal.reflect_test.Reflect_test_inner.Inner>, ?r:stdgo._internal.io.Io_reader.Reader) {
        if (inner != null) this.inner = inner;
        if (r != null) this.r = r;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "inner", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_innerdotinner.__type___internaldotreflect_testdotReflect_test_innerdotInner }) }, optional : false }, { name : "r", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader }, optional : false }])));
    public var m(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_m():() -> Void return @:check32 this.inner.m;
    public function __copy__() {
        return new Outer(inner, r);
    }
}

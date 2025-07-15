package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_sf_static_extension.SF_static_extension) @:using(_internal.reflect_test.Reflect_test_sf_static_extension.SF_static_extension) class SF {
    public var f : stdgo.GoInt = 0;
    public function new(?f:stdgo.GoInt) {
        if (f != null) this.f = f;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "f", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new SF(f);
    }
}

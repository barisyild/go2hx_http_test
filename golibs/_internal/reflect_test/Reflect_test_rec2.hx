package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_rec2_static_extension.Rec2_static_extension) @:using(_internal.reflect_test.Reflect_test_rec2_static_extension.Rec2_static_extension) class Rec2 {
    public var f : stdgo.GoString = "";
    @:embedded
    public var rec1 : stdgo.Ref<_internal.reflect_test.Reflect_test_rec1.Rec1> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_rec1.Rec1>);
    public function new(?f:stdgo.GoString, ?rec1:stdgo.Ref<_internal.reflect_test.Reflect_test_rec1.Rec1>) {
        if (f != null) this.f = f;
        if (rec1 != null) this.rec1 = rec1;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "f", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "rec1", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_rec1dotrec1.__type___internaldotreflect_testdotReflect_test_rec1dotRec1 }) }, optional : false }])));
    public function __copy__() {
        return new Rec2(f, rec1);
    }
}

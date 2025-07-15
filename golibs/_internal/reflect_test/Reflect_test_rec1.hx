package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_rec1_static_extension.Rec1_static_extension) @:using(_internal.reflect_test.Reflect_test_rec1_static_extension.Rec1_static_extension) class Rec1 {
    @:embedded
    public var rec2 : stdgo.Ref<_internal.reflect_test.Reflect_test_rec2.Rec2> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_rec2.Rec2>);
    public function new(?rec2:stdgo.Ref<_internal.reflect_test.Reflect_test_rec2.Rec2>) {
        if (rec2 != null) this.rec2 = rec2;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "rec2", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_rec2dotrec2.__type___internaldotreflect_testdotReflect_test_rec2dotRec2 }) }, optional : false }])));
    public function __copy__() {
        return new Rec1(rec2);
    }
}

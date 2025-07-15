package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_inner_static_extension.Inner_static_extension) @:using(_internal.reflect_test.Reflect_test_inner_static_extension.Inner_static_extension) class Inner {
    public var x : stdgo.Ref<_internal.reflect_test.Reflect_test_outer.Outer> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_outer.Outer>);
    public var p1 : stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
    public var p2 : stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
    public function new(?x:stdgo.Ref<_internal.reflect_test.Reflect_test_outer.Outer>, ?p1:stdgo.GoUIntptr, ?p2:stdgo.GoUIntptr) {
        if (x != null) this.x = x;
        if (p1 != null) this.p1 = p1;
        if (p2 != null) this.p2 = p2;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "x", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_outerdotouter.__type___internaldotreflect_testdotReflect_test_outerdotOuter }) }, optional : false }, { name : "p1", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uintptr_kind) }, optional : false }, { name : "p2", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uintptr_kind) }, optional : false }])));
    public function __copy__() {
        return new Inner(x, p1, p2);
    }
}

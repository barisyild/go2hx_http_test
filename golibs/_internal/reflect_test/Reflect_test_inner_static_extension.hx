package _internal.reflect_test;
@:keep @:allow(_internal.reflect_test.Reflect_test.Inner_asInterface) class Inner_static_extension {
    @:keep
    @:tdfield
    static public function m( _pi:stdgo.Ref<_internal.reflect_test.Reflect_test_inner.Inner>):Void {
        @:recv var _pi:stdgo.Ref<_internal.reflect_test.Reflect_test_inner.Inner> = _pi;
        (@:checkr (@:checkr _pi ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inner = null;
        (@:checkr _pi ?? throw stdgo.Error._nullPointerDereference.__underlying__()).p1 = (new stdgo.GoUIntptr(1) : stdgo.GoUIntptr);
        (@:checkr _pi ?? throw stdgo.Error._nullPointerDereference.__underlying__()).p2 = (new stdgo.GoUIntptr((new stdgo.AnyInterface(_pi, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))) : stdgo._internal.unsafe.Unsafe.UnsafePointer)) : stdgo.GoUIntptr);
    }
}

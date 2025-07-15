package _internal.runtime.internal.atomic_;
@:keep @:allow(_internal.runtime.internal.atomic_.Atomic_.UnsafePointer_asInterface) class UnsafePointer_static_extension {
    @:keep
    @:tdfield
    static public function compareAndSwap( _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__unsafepointer.UnsafePointer>, _old:stdgo._internal.unsafe.Unsafe.UnsafePointer, _new_:stdgo._internal.unsafe.Unsafe.UnsafePointer):Bool {
        @:recv var _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__unsafepointer.UnsafePointer> = _u;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/types.go#L512"
        return _internal.runtime.internal.atomic_.Atomic___caspointer._casPointer(stdgo.Go.pointer((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._value), _old, _new_);
    }
    @:keep
    @:tdfield
    static public function compareAndSwapNoWB( _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__unsafepointer.UnsafePointer>, _old:stdgo._internal.unsafe.Unsafe.UnsafePointer, _new_:stdgo._internal.unsafe.Unsafe.UnsafePointer):Bool {
        @:recv var _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__unsafepointer.UnsafePointer> = _u;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/types.go#L505"
        return _internal.runtime.internal.atomic_.Atomic__casp1.casp1(stdgo.Go.pointer((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._value), _old, _new_);
    }
    @:keep
    @:tdfield
    static public function store( _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__unsafepointer.UnsafePointer>, _value:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {
        @:recv var _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__unsafepointer.UnsafePointer> = _u;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/types.go#L484"
        _internal.runtime.internal.atomic_.Atomic___storepointer._storePointer(stdgo.Go.pointer((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._value), _value);
    }
    @:keep
    @:tdfield
    static public function storeNoWB( _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__unsafepointer.UnsafePointer>, _value:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {
        @:recv var _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__unsafepointer.UnsafePointer> = _u;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/types.go#L479"
        _internal.runtime.internal.atomic_.Atomic__storepnowb.storepNoWB((new stdgo.AnyInterface(stdgo.Go.pointer((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._value), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))) : stdgo._internal.unsafe.Unsafe.UnsafePointer), _value);
    }
    @:keep
    @:tdfield
    static public function load( _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__unsafepointer.UnsafePointer>):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        @:recv var _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__unsafepointer.UnsafePointer> = _u;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/types.go#L466"
        return _internal.runtime.internal.atomic_.Atomic__loadp.loadp((new stdgo.AnyInterface(stdgo.Go.pointer((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._value), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))) : stdgo._internal.unsafe.Unsafe.UnsafePointer));
    }
}

package _internal.runtime.internal.atomic_;
@:keep @:allow(_internal.runtime.internal.atomic_.Atomic_.Pointer__asInterface) class Pointer__static_extension {
    @:keep
    @:tdfield
    overload inline extern static public function compareAndSwap<T_>( _p:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__pointer_.Pointer_<T_>>, _old:stdgo.Pointer<T_>, _new_:stdgo.Pointer<T_>):Bool return compareAndSwap__tp__0(_p, _old, _new_);
    @:tdfield
    static public function compareAndSwap__tp__0<T_>( _p:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__pointer_.Pointer_<T_>>, _old:stdgo.Pointer<T_>, _new_:stdgo.Pointer<T_>):Bool {
        @:recv var _p:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__pointer_.Pointer_<T_>> = _p;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/types.go#L570"
        return (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._u.compareAndSwap((new stdgo.AnyInterface(_old, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))) : stdgo._internal.unsafe.Unsafe.UnsafePointer), (new stdgo.AnyInterface(_new_, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))) : stdgo._internal.unsafe.Unsafe.UnsafePointer));
    }
    @:keep
    @:tdfield
    overload inline extern static public function compareAndSwapNoWB<T_>( _p:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__pointer_.Pointer_<T_>>, _old:stdgo.Pointer<T_>, _new_:stdgo.Pointer<T_>):Bool return compareAndSwapNoWB__tp__0(_p, _old, _new_);
    @:tdfield
    static public function compareAndSwapNoWB__tp__0<T_>( _p:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__pointer_.Pointer_<T_>>, _old:stdgo.Pointer<T_>, _new_:stdgo.Pointer<T_>):Bool {
        @:recv var _p:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__pointer_.Pointer_<T_>> = _p;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/types.go#L562"
        return (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._u.compareAndSwapNoWB((new stdgo.AnyInterface(_old, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))) : stdgo._internal.unsafe.Unsafe.UnsafePointer), (new stdgo.AnyInterface(_new_, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))) : stdgo._internal.unsafe.Unsafe.UnsafePointer));
    }
    @:keep
    @:tdfield
    overload inline extern static public function store<T_>( _p:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__pointer_.Pointer_<T_>>, _value:stdgo.Pointer<T_>):Void store__tp__0(_p, _value);
    @:tdfield
    static public function store__tp__0<T_>( _p:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__pointer_.Pointer_<T_>>, _value:stdgo.Pointer<T_>):Void {
        @:recv var _p:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__pointer_.Pointer_<T_>> = _p;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/types.go#L546"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._u.store((new stdgo.AnyInterface(_value, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))) : stdgo._internal.unsafe.Unsafe.UnsafePointer));
    }
    @:keep
    @:tdfield
    overload inline extern static public function storeNoWB<T_>( _p:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__pointer_.Pointer_<T_>>, _value:stdgo.Pointer<T_>):Void storeNoWB__tp__0(_p, _value);
    @:tdfield
    static public function storeNoWB__tp__0<T_>( _p:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__pointer_.Pointer_<T_>>, _value:stdgo.Pointer<T_>):Void {
        @:recv var _p:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__pointer_.Pointer_<T_>> = _p;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/types.go#L539"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._u.storeNoWB((new stdgo.AnyInterface(_value, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))) : stdgo._internal.unsafe.Unsafe.UnsafePointer));
    }
    @:keep
    @:tdfield
    overload inline extern static public function load<T_>( _p:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__pointer_.Pointer_<T_>>):stdgo.Pointer<T_> return load__tp__0(_p);
    @:tdfield
    static public function load__tp__0<T_>( _p:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__pointer_.Pointer_<T_>>):stdgo.Pointer<T_> {
        @:recv var _p:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__pointer_.Pointer_<T_>> = _p;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/types.go#L526"
        return ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._u.load().__convert__(stdgo._internal.internal.reflect.GoType.invalidType) : stdgo.Pointer<T_>);
    }
}

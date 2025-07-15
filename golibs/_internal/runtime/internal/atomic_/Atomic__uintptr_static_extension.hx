package _internal.runtime.internal.atomic_;
@:keep @:allow(_internal.runtime.internal.atomic_.Atomic_.Uintptr_asInterface) class Uintptr_static_extension {
    @:keep
    @:tdfield
    static public function add( _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uintptr.Uintptr>, _delta:stdgo.GoUIntptr):stdgo.GoUIntptr {
        @:recv var _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uintptr.Uintptr> = _u;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/types.go#L420"
        return _internal.runtime.internal.atomic_.Atomic__xadduintptr.xadduintptr(stdgo.Go.pointer((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._value), _delta);
    }
    @:keep
    @:tdfield
    static public function swap( _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uintptr.Uintptr>, _value:stdgo.GoUIntptr):stdgo.GoUIntptr {
        @:recv var _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uintptr.Uintptr> = _u;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/types.go#L409"
        return _internal.runtime.internal.atomic_.Atomic__xchguintptr.xchguintptr(stdgo.Go.pointer((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._value), _value);
    }
    @:keep
    @:tdfield
    static public function compareAndSwap( _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uintptr.Uintptr>, _old:stdgo.GoUIntptr, _new_:stdgo.GoUIntptr):Bool {
        @:recv var _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uintptr.Uintptr> = _u;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/types.go#L401"
        return _internal.runtime.internal.atomic_.Atomic__casuintptr.casuintptr(stdgo.Go.pointer((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._value), _old, _new_);
    }
    @:keep
    @:tdfield
    static public function storeRelease( _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uintptr.Uintptr>, _value:stdgo.GoUIntptr):Void {
        @:recv var _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uintptr.Uintptr> = _u;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/types.go#L392"
        _internal.runtime.internal.atomic_.Atomic__storereluintptr.storeReluintptr(stdgo.Go.pointer((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._value), _value);
    }
    @:keep
    @:tdfield
    static public function store( _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uintptr.Uintptr>, _value:stdgo.GoUIntptr):Void {
        @:recv var _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uintptr.Uintptr> = _u;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/types.go#L379"
        _internal.runtime.internal.atomic_.Atomic__storeuintptr.storeuintptr(stdgo.Go.pointer((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._value), _value);
    }
    @:keep
    @:tdfield
    static public function loadAcquire( _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uintptr.Uintptr>):stdgo.GoUIntptr {
        @:recv var _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uintptr.Uintptr> = _u;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/types.go#L372"
        return _internal.runtime.internal.atomic_.Atomic__loadacquintptr.loadAcquintptr(stdgo.Go.pointer((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._value));
    }
    @:keep
    @:tdfield
    static public function load( _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uintptr.Uintptr>):stdgo.GoUIntptr {
        @:recv var _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uintptr.Uintptr> = _u;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/types.go#L359"
        return _internal.runtime.internal.atomic_.Atomic__loaduintptr.loaduintptr(stdgo.Go.pointer((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._value));
    }
}

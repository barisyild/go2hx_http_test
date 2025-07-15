package _internal.runtime.internal.atomic_;
@:keep @:allow(_internal.runtime.internal.atomic_.Atomic_.Int32_asInterface) class Int32_static_extension {
    @:keep
    @:tdfield
    static public function add( _i:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__int32.Int32>, _delta:stdgo.GoInt32):stdgo.GoInt32 {
        @:recv var _i:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__int32.Int32> = _i;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/types.go#L56"
        return _internal.runtime.internal.atomic_.Atomic__xaddint32.xaddint32(stdgo.Go.pointer((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._value), _delta);
    }
    @:keep
    @:tdfield
    static public function swap( _i:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__int32.Int32>, _new_:stdgo.GoInt32):stdgo.GoInt32 {
        @:recv var _i:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__int32.Int32> = _i;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/types.go#L45"
        return _internal.runtime.internal.atomic_.Atomic__xchgint32.xchgint32(stdgo.Go.pointer((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._value), _new_);
    }
    @:keep
    @:tdfield
    static public function compareAndSwap( _i:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__int32.Int32>, _old:stdgo.GoInt32, _new_:stdgo.GoInt32):Bool {
        @:recv var _i:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__int32.Int32> = _i;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/types.go#L37"
        return _internal.runtime.internal.atomic_.Atomic__casint32.casint32(stdgo.Go.pointer((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._value), _old, _new_);
    }
    @:keep
    @:tdfield
    static public function store( _i:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__int32.Int32>, _value:stdgo.GoInt32):Void {
        @:recv var _i:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__int32.Int32> = _i;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/types.go#L28"
        _internal.runtime.internal.atomic_.Atomic__storeint32.storeint32(stdgo.Go.pointer((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._value), _value);
    }
    @:keep
    @:tdfield
    static public function load( _i:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__int32.Int32>):stdgo.GoInt32 {
        @:recv var _i:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__int32.Int32> = _i;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/types.go#L21"
        return _internal.runtime.internal.atomic_.Atomic__loadint32.loadint32(stdgo.Go.pointer((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._value));
    }
}

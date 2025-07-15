package _internal.runtime.internal.atomic_;
@:keep @:allow(_internal.runtime.internal.atomic_.Atomic_.Uint64_asInterface) class Uint64_static_extension {
    @:keep
    @:tdfield
    static public function storeRelease( _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint64.Uint64>, _value:stdgo.GoUInt64):Void {
        @:recv var _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint64.Uint64> = _u;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/types_64bit.go#L32"
        _internal.runtime.internal.atomic_.Atomic__storerel64.storeRel64(stdgo.Go.pointer((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._value), _value);
    }
    @:keep
    @:tdfield
    static public function loadAcquire( _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint64.Uint64>):stdgo.GoUInt64 {
        @:recv var _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint64.Uint64> = _u;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/types_64bit.go#L19"
        return _internal.runtime.internal.atomic_.Atomic__loadacq64.loadAcq64(stdgo.Go.pointer((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._value));
    }
    @:keep
    @:tdfield
    static public function add( _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint64.Uint64>, _delta:stdgo.GoInt64):stdgo.GoUInt64 {
        @:recv var _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint64.Uint64> = _u;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/types.go#L344"
        return _internal.runtime.internal.atomic_.Atomic__xadd64.xadd64(stdgo.Go.pointer((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._value), _delta);
    }
    @:keep
    @:tdfield
    static public function swap( _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint64.Uint64>, _value:stdgo.GoUInt64):stdgo.GoUInt64 {
        @:recv var _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint64.Uint64> = _u;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/types.go#L333"
        return _internal.runtime.internal.atomic_.Atomic__xchg64.xchg64(stdgo.Go.pointer((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._value), _value);
    }
    @:keep
    @:tdfield
    static public function compareAndSwap( _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint64.Uint64>, _old:stdgo.GoUInt64, _new_:stdgo.GoUInt64):Bool {
        @:recv var _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint64.Uint64> = _u;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/types.go#L325"
        return _internal.runtime.internal.atomic_.Atomic__cas64.cas64(stdgo.Go.pointer((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._value), _old, _new_);
    }
    @:keep
    @:tdfield
    static public function store( _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint64.Uint64>, _value:stdgo.GoUInt64):Void {
        @:recv var _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint64.Uint64> = _u;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/types.go#L316"
        _internal.runtime.internal.atomic_.Atomic__store64.store64(stdgo.Go.pointer((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._value), _value);
    }
    @:keep
    @:tdfield
    static public function load( _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint64.Uint64>):stdgo.GoUInt64 {
        @:recv var _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint64.Uint64> = _u;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/types.go#L309"
        return _internal.runtime.internal.atomic_.Atomic__load64.load64(stdgo.Go.pointer((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._value));
    }
}

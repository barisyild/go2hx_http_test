package _internal.runtime.internal.atomic_;
@:keep @:allow(_internal.runtime.internal.atomic_.Atomic_.Uint32_asInterface) class Uint32_static_extension {
    @:keep
    @:tdfield
    static public function add( _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint32.Uint32>, _delta:stdgo.GoInt32):stdgo.GoUInt32 {
        @:recv var _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint32.Uint32> = _u;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/types.go#L291"
        return _internal.runtime.internal.atomic_.Atomic__xadd.xadd(stdgo.Go.pointer((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._value), _delta);
    }
    @:keep
    @:tdfield
    static public function or( _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint32.Uint32>, _value:stdgo.GoUInt32):Void {
        @:recv var _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint32.Uint32> = _u;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/types.go#L280"
        _internal.runtime.internal.atomic_.Atomic__or.or(stdgo.Go.pointer((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._value), _value);
    }
    @:keep
    @:tdfield
    static public function and( _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint32.Uint32>, _value:stdgo.GoUInt32):Void {
        @:recv var _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint32.Uint32> = _u;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/types.go#L269"
        _internal.runtime.internal.atomic_.Atomic__and.and(stdgo.Go.pointer((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._value), _value);
    }
    @:keep
    @:tdfield
    static public function swap( _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint32.Uint32>, _value:stdgo.GoUInt32):stdgo.GoUInt32 {
        @:recv var _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint32.Uint32> = _u;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/types.go#L258"
        return _internal.runtime.internal.atomic_.Atomic__xchg.xchg(stdgo.Go.pointer((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._value), _value);
    }
    @:keep
    @:tdfield
    static public function compareAndSwapRelease( _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint32.Uint32>, _old:stdgo.GoUInt32, _new_:stdgo.GoUInt32):Bool {
        @:recv var _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint32.Uint32> = _u;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/types.go#L250"
        return _internal.runtime.internal.atomic_.Atomic__casrel.casRel(stdgo.Go.pointer((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._value), _old, _new_);
    }
    @:keep
    @:tdfield
    static public function compareAndSwap( _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint32.Uint32>, _old:stdgo.GoUInt32, _new_:stdgo.GoUInt32):Bool {
        @:recv var _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint32.Uint32> = _u;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/types.go#L236"
        return _internal.runtime.internal.atomic_.Atomic__cas.cas(stdgo.Go.pointer((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._value), _old, _new_);
    }
    @:keep
    @:tdfield
    static public function storeRelease( _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint32.Uint32>, _value:stdgo.GoUInt32):Void {
        @:recv var _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint32.Uint32> = _u;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/types.go#L227"
        _internal.runtime.internal.atomic_.Atomic__storerel.storeRel(stdgo.Go.pointer((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._value), _value);
    }
    @:keep
    @:tdfield
    static public function store( _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint32.Uint32>, _value:stdgo.GoUInt32):Void {
        @:recv var _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint32.Uint32> = _u;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/types.go#L214"
        _internal.runtime.internal.atomic_.Atomic__store.store(stdgo.Go.pointer((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._value), _value);
    }
    @:keep
    @:tdfield
    static public function loadAcquire( _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint32.Uint32>):stdgo.GoUInt32 {
        @:recv var _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint32.Uint32> = _u;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/types.go#L207"
        return _internal.runtime.internal.atomic_.Atomic__loadacq.loadAcq(stdgo.Go.pointer((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._value));
    }
    @:keep
    @:tdfield
    static public function load( _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint32.Uint32>):stdgo.GoUInt32 {
        @:recv var _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint32.Uint32> = _u;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/types.go#L194"
        return _internal.runtime.internal.atomic_.Atomic__load.load(stdgo.Go.pointer((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._value));
    }
}

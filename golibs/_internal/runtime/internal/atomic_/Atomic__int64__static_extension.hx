package _internal.runtime.internal.atomic_;
@:keep @:allow(_internal.runtime.internal.atomic_.Atomic_.Int64__asInterface) class Int64__static_extension {
    @:keep
    @:tdfield
    static public function add( _i:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__int64_.Int64_>, _delta:stdgo.GoInt64):stdgo.GoInt64 {
        @:recv var _i:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__int64_.Int64_> = _i;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/types.go#L109"
        return _internal.runtime.internal.atomic_.Atomic__xaddint64.xaddint64(stdgo.Go.pointer((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._value), _delta);
    }
    @:keep
    @:tdfield
    static public function swap( _i:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__int64_.Int64_>, _new_:stdgo.GoInt64):stdgo.GoInt64 {
        @:recv var _i:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__int64_.Int64_> = _i;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/types.go#L98"
        return _internal.runtime.internal.atomic_.Atomic__xchgint64.xchgint64(stdgo.Go.pointer((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._value), _new_);
    }
    @:keep
    @:tdfield
    static public function compareAndSwap( _i:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__int64_.Int64_>, _old:stdgo.GoInt64, _new_:stdgo.GoInt64):Bool {
        @:recv var _i:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__int64_.Int64_> = _i;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/types.go#L90"
        return _internal.runtime.internal.atomic_.Atomic__casint64.casint64(stdgo.Go.pointer((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._value), _old, _new_);
    }
    @:keep
    @:tdfield
    static public function store( _i:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__int64_.Int64_>, _value:stdgo.GoInt64):Void {
        @:recv var _i:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__int64_.Int64_> = _i;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/types.go#L81"
        _internal.runtime.internal.atomic_.Atomic__storeint64.storeint64(stdgo.Go.pointer((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._value), _value);
    }
    @:keep
    @:tdfield
    static public function load( _i:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__int64_.Int64_>):stdgo.GoInt64 {
        @:recv var _i:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__int64_.Int64_> = _i;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/types.go#L74"
        return _internal.runtime.internal.atomic_.Atomic__loadint64.loadint64(stdgo.Go.pointer((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._value));
    }
}

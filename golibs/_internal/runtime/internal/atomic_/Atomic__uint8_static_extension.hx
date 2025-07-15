package _internal.runtime.internal.atomic_;
@:keep @:allow(_internal.runtime.internal.atomic_.Atomic_.Uint8_asInterface) class Uint8_static_extension {
    @:keep
    @:tdfield
    static public function or( _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint8.Uint8>, _value:stdgo.GoUInt8):Void {
        @:recv var _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint8.Uint8> = _u;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/types.go#L153"
        _internal.runtime.internal.atomic_.Atomic__or8.or8(stdgo.Go.pointer((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._value), _value);
    }
    @:keep
    @:tdfield
    static public function and( _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint8.Uint8>, _value:stdgo.GoUInt8):Void {
        @:recv var _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint8.Uint8> = _u;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/types.go#L142"
        _internal.runtime.internal.atomic_.Atomic__and8.and8(stdgo.Go.pointer((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._value), _value);
    }
    @:keep
    @:tdfield
    static public function store( _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint8.Uint8>, _value:stdgo.GoUInt8):Void {
        @:recv var _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint8.Uint8> = _u;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/types.go#L131"
        _internal.runtime.internal.atomic_.Atomic__store8.store8(stdgo.Go.pointer((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._value), _value);
    }
    @:keep
    @:tdfield
    static public function load( _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint8.Uint8>):stdgo.GoUInt8 {
        @:recv var _u:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint8.Uint8> = _u;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/types.go#L124"
        return _internal.runtime.internal.atomic_.Atomic__load8.load8(stdgo.Go.pointer((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._value));
    }
}

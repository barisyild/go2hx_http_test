package _internal.runtime.internal.atomic_;
@:keep @:allow(_internal.runtime.internal.atomic_.Atomic_.Float64_asInterface) class Float64_static_extension {
    @:keep
    @:tdfield
    static public function store( _f:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__float64.Float64>, _value:stdgo.GoFloat64):Void {
        @:recv var _f:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__float64.Float64> = _f;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/types.go#L445"
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._u.store(((new stdgo.AnyInterface(stdgo.Go.pointer(_value), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.GoType.invalidType) : stdgo.Pointer<stdgo.GoUInt64>).value);
    }
    @:keep
    @:tdfield
    static public function load( _f:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__float64.Float64>):stdgo.GoFloat64 {
        @:recv var _f:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__float64.Float64> = _f;
        var _r = @:assignType ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._u.load() : stdgo.GoUInt64);
        var _r__pointer__ = stdgo.Go.pointer(_r);
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/types.go#L438"
        return ((new stdgo.AnyInterface(_r__pointer__, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.GoType.invalidType) : stdgo.Pointer<stdgo.GoFloat64>).value;
    }
}

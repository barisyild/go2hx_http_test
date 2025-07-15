package stdgo._internal.internal.abi;
import stdgo._internal.unsafe.Unsafe;
@:keep @:allow(stdgo._internal.internal.abi.Abi.UncommonType_asInterface) class UncommonType_static_extension {
    @:keep
    @:tdfield
    static public function exportedMethods( _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_uncommontype.UncommonType>):stdgo.Slice<stdgo._internal.internal.abi.Abi_method.Method> {
        @:recv var _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_uncommontype.UncommonType> = _t;
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L213"
        if ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).xcount == ((0 : stdgo.GoUInt16))) {
            //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L214"
            return (null : stdgo.Slice<stdgo._internal.internal.abi.Abi_method.Method>);
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L216"
        return ((stdgo._internal.internal.abi.Abi__addchecked._addChecked((new stdgo.AnyInterface(_t, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))) : stdgo._internal.unsafe.Unsafe.UnsafePointer), (new stdgo.GoUIntptr((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).moff) : stdgo.GoUIntptr), ("t.xcount > 0" : stdgo.GoString)).__convert__(stdgo._internal.internal.reflect.GoType.invalidType) : stdgo.Ref<stdgo.GoArray<stdgo._internal.internal.abi.Abi_method.Method>>).__slice__(0, (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).xcount, (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).xcount) : stdgo.Slice<stdgo._internal.internal.abi.Abi_method.Method>);
    }
    @:keep
    @:tdfield
    static public function methods( _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_uncommontype.UncommonType>):stdgo.Slice<stdgo._internal.internal.abi.Abi_method.Method> {
        @:recv var _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_uncommontype.UncommonType> = _t;
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L206"
        if ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).mcount == ((0 : stdgo.GoUInt16))) {
            //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L207"
            return (null : stdgo.Slice<stdgo._internal.internal.abi.Abi_method.Method>);
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L209"
        return ((stdgo._internal.internal.abi.Abi__addchecked._addChecked((new stdgo.AnyInterface(_t, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))) : stdgo._internal.unsafe.Unsafe.UnsafePointer), (new stdgo.GoUIntptr((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).moff) : stdgo.GoUIntptr), ("t.mcount > 0" : stdgo.GoString)).__convert__(stdgo._internal.internal.reflect.GoType.invalidType) : stdgo.Ref<stdgo.GoArray<stdgo._internal.internal.abi.Abi_method.Method>>).__slice__(0, (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).mcount, (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).mcount) : stdgo.Slice<stdgo._internal.internal.abi.Abi_method.Method>);
    }
}

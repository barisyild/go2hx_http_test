package stdgo._internal.internal.abi;
import stdgo._internal.unsafe.Unsafe;
@:keep @:allow(stdgo._internal.internal.abi.Abi.StructField_asInterface) class StructField_static_extension {
    @:keep
    @:tdfield
    static public function embedded( _f:stdgo.Ref<stdgo._internal.internal.abi.Abi_structfield.StructField>):Bool {
        @:recv var _f:stdgo.Ref<stdgo._internal.internal.abi.Abi_structfield.StructField> = _f;
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L554"
        return (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name.isEmbedded();
    }
}

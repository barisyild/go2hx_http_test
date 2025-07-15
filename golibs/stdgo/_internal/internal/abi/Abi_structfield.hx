package stdgo._internal.internal.abi;
import stdgo._internal.unsafe.Unsafe;
@:structInit @:using(stdgo._internal.internal.abi.Abi_structfield_static_extension.StructField_static_extension) @:using(stdgo._internal.internal.abi.Abi_structfield_static_extension.StructField_static_extension) class StructField {
    public var name : stdgo._internal.internal.abi.Abi_name.Name = ({} : stdgo._internal.internal.abi.Abi_name.Name);
    public var typ : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> = (null : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>);
    public var offset : stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
    public function new(?name:stdgo._internal.internal.abi.Abi_name.Name, ?typ:stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>, ?offset:stdgo.GoUIntptr) {
        if (name != null) this.name = name;
        if (typ != null) this.typ = typ;
        if (offset != null) this.offset = offset;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotabidotabi_namedotname.__type__stdgodot_internaldotinternaldotabidotAbi_namedotName }, optional : false }, { name : "typ", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotabidotabi_type_dottype_.__type__stdgodot_internaldotinternaldotabidotAbi_type_dotType_ }) }, optional : false }, { name : "offset", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uintptr_kind) }, optional : false }])));
    public function __copy__() {
        return new StructField(name, typ, offset);
    }
}

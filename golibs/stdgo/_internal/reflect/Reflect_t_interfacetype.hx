package stdgo._internal.reflect;
@:structInit @:using(stdgo._internal.reflect.Reflect_t_interfacetype_static_extension.T_interfaceType_static_extension) @:using(stdgo._internal.reflect.Reflect_t_interfacetype_static_extension.T_interfaceType_static_extension) class T_interfaceType {
    @:embedded
    public var interfaceType : stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType = ({} : stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType);
    public function new(?interfaceType:stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType) {
        if (interfaceType != null) this.interfaceType = interfaceType;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "interfaceType", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotabidotabi_interfacetypedotinterfacetype.__type__stdgodot_internaldotinternaldotabidotAbi_interfacetypedotInterfaceType }, optional : false }])));
    public var align(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_align():() -> stdgo.GoInt return @:check32 this.interfaceType.align;
    public var arrayType(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_arraytype.ArrayType>;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_arrayType():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_arraytype.ArrayType> return @:check32 this.interfaceType.arrayType;
    public var chanDir(get, never) : () -> stdgo._internal.internal.abi.Abi_chandir.ChanDir;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_chanDir():() -> stdgo._internal.internal.abi.Abi_chandir.ChanDir return @:check32 this.interfaceType.chanDir;
    public var common(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_common():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> return @:check32 this.interfaceType.common;
    public var elem(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_elem():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> return @:check32 this.interfaceType.elem;
    public var exportedMethods(get, never) : () -> stdgo.Slice<stdgo._internal.internal.abi.Abi_method.Method>;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_exportedMethods():() -> stdgo.Slice<stdgo._internal.internal.abi.Abi_method.Method> return @:check32 this.interfaceType.exportedMethods;
    public var fieldAlign(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_fieldAlign():() -> stdgo.GoInt return @:check32 this.interfaceType.fieldAlign;
    public var funcType(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_functype.FuncType>;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_funcType():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_functype.FuncType> return @:check32 this.interfaceType.funcType;
    public var gcSlice(get, never) : (stdgo.GoUIntptr, stdgo.GoUIntptr) -> stdgo.Slice<stdgo.GoUInt8>;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_gcSlice():(stdgo.GoUIntptr, stdgo.GoUIntptr) -> stdgo.Slice<stdgo.GoUInt8> return @:check32 this.interfaceType.gcSlice;
    public var hasName(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_hasName():() -> Bool return @:check32 this.interfaceType.hasName;
    public var ifaceIndir(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_ifaceIndir():() -> Bool return @:check32 this.interfaceType.ifaceIndir;
    public var isDirectIface(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_isDirectIface():() -> Bool return @:check32 this.interfaceType.isDirectIface;
    public var key(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_key():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> return @:check32 this.interfaceType.key;
    public var kind(get, never) : () -> stdgo._internal.internal.abi.Abi_kind.Kind;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_kind():() -> stdgo._internal.internal.abi.Abi_kind.Kind return @:check32 this.interfaceType.kind;
    public var len(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_len():() -> stdgo.GoInt return @:check32 this.interfaceType.len;
    public var mapType(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_maptype.MapType>;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_mapType():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_maptype.MapType> return @:check32 this.interfaceType.mapType;
    public var pointers(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_pointers():() -> Bool return @:check32 this.interfaceType.pointers;
    public var size(get, never) : () -> stdgo.GoUIntptr;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_size():() -> stdgo.GoUIntptr return @:check32 this.interfaceType.size;
    public var structType(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_structtype.StructType>;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_structType():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_structtype.StructType> return @:check32 this.interfaceType.structType;
    public var uncommon(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_uncommontype.UncommonType>;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_uncommon():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_uncommontype.UncommonType> return @:check32 this.interfaceType.uncommon;
    public function __copy__() {
        return new T_interfaceType(interfaceType);
    }
}

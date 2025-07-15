package stdgo._internal.internal.abi;
import stdgo._internal.unsafe.Unsafe;
@:structInit @:using(stdgo._internal.internal.abi.Abi_maptype_static_extension.MapType_static_extension) @:using(stdgo._internal.internal.abi.Abi_maptype_static_extension.MapType_static_extension) class MapType {
    @:embedded
    public var type : stdgo._internal.internal.abi.Abi_type_.Type_ = ({} : stdgo._internal.internal.abi.Abi_type_.Type_);
    public var key : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> = (null : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>);
    public var elem : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> = (null : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>);
    public var bucket : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> = (null : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>);
    public var hasher : (stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> stdgo.GoUIntptr = null;
    public var keySize : stdgo.GoUInt8 = 0;
    public var valueSize : stdgo.GoUInt8 = 0;
    public var bucketSize : stdgo.GoUInt16 = 0;
    public var flags : stdgo.GoUInt32 = 0;
    public function new(?type:stdgo._internal.internal.abi.Abi_type_.Type_, ?key:stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>, ?elem:stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>, ?bucket:stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>, ?hasher:(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> stdgo.GoUIntptr, ?keySize:stdgo.GoUInt8, ?valueSize:stdgo.GoUInt8, ?bucketSize:stdgo.GoUInt16, ?flags:stdgo.GoUInt32) {
        if (type != null) this.type = type;
        if (key != null) this.key = key;
        if (elem != null) this.elem = elem;
        if (bucket != null) this.bucket = bucket;
        if (hasher != null) this.hasher = hasher;
        if (keySize != null) this.keySize = keySize;
        if (valueSize != null) this.valueSize = valueSize;
        if (bucketSize != null) this.bucketSize = bucketSize;
        if (flags != null) this.flags = flags;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "type", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotabidotabi_type_dottype_.__type__stdgodot_internaldotinternaldotabidotAbi_type_dotType_ }, optional : false }, { name : "key", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotabidotabi_type_dottype_.__type__stdgodot_internaldotinternaldotabidotAbi_type_dotType_ }) }, optional : false }, { name : "elem", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotabidotabi_type_dottype_.__type__stdgodot_internaldotinternaldotabidotAbi_type_dotType_ }) }, optional : false }, { name : "bucket", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotabidotabi_type_dottype_.__type__stdgodot_internaldotinternaldotabidotAbi_type_dotType_ }) }, optional : false }, { name : "hasher", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.GoType.basic(uintptr_kind)] }, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(uintptr_kind)] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false }, { name : "keySize", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, optional : false }, { name : "valueSize", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, optional : false }, { name : "bucketSize", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "flags", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false }])));
    public var align(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_align():() -> stdgo.GoInt return @:check32 this.type.align;
    public var arrayType(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_arraytype.ArrayType>;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_arrayType():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_arraytype.ArrayType> return @:check32 this.type.arrayType;
    public var chanDir(get, never) : () -> stdgo._internal.internal.abi.Abi_chandir.ChanDir;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_chanDir():() -> stdgo._internal.internal.abi.Abi_chandir.ChanDir return @:check32 this.type.chanDir;
    public var common(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_common():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> return @:check32 this.type.common;
    public var exportedMethods(get, never) : () -> stdgo.Slice<stdgo._internal.internal.abi.Abi_method.Method>;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_exportedMethods():() -> stdgo.Slice<stdgo._internal.internal.abi.Abi_method.Method> return @:check32 this.type.exportedMethods;
    public var fieldAlign(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_fieldAlign():() -> stdgo.GoInt return @:check32 this.type.fieldAlign;
    public var funcType(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_functype.FuncType>;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_funcType():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_functype.FuncType> return @:check32 this.type.funcType;
    public var gcSlice(get, never) : (stdgo.GoUIntptr, stdgo.GoUIntptr) -> stdgo.Slice<stdgo.GoUInt8>;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_gcSlice():(stdgo.GoUIntptr, stdgo.GoUIntptr) -> stdgo.Slice<stdgo.GoUInt8> return @:check32 this.type.gcSlice;
    public var hasName(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_hasName():() -> Bool return @:check32 this.type.hasName;
    public var ifaceIndir(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_ifaceIndir():() -> Bool return @:check32 this.type.ifaceIndir;
    public var interfaceType(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType>;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_interfaceType():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType> return @:check32 this.type.interfaceType;
    public var isDirectIface(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_isDirectIface():() -> Bool return @:check32 this.type.isDirectIface;
    public var kind(get, never) : () -> stdgo._internal.internal.abi.Abi_kind.Kind;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_kind():() -> stdgo._internal.internal.abi.Abi_kind.Kind return @:check32 this.type.kind;
    public var len(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_len():() -> stdgo.GoInt return @:check32 this.type.len;
    public var mapType(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_maptype.MapType>;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_mapType():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_maptype.MapType> return @:check32 this.type.mapType;
    public var numMethod(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_numMethod():() -> stdgo.GoInt return @:check32 this.type.numMethod;
    public var pointers(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_pointers():() -> Bool return @:check32 this.type.pointers;
    public var size(get, never) : () -> stdgo.GoUIntptr;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_size():() -> stdgo.GoUIntptr return @:check32 this.type.size;
    public var structType(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_structtype.StructType>;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_structType():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_structtype.StructType> return @:check32 this.type.structType;
    public var uncommon(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_uncommontype.UncommonType>;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_uncommon():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_uncommontype.UncommonType> return @:check32 this.type.uncommon;
    public function __copy__() {
        return new MapType(type, key, elem, bucket, hasher, keySize, valueSize, bucketSize, flags);
    }
}

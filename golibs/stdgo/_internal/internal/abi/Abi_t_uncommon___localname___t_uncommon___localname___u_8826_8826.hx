package stdgo._internal.internal.abi;
import stdgo._internal.unsafe.Unsafe;
@:structInit class T_uncommon___localname___T_uncommon___localname___u_8826_8826 {
    @:embedded
    public var mapType : stdgo._internal.internal.abi.Abi_maptype.MapType = ({} : stdgo._internal.internal.abi.Abi_maptype.MapType);
    public var _u : stdgo._internal.internal.abi.Abi_uncommontype.UncommonType = ({} : stdgo._internal.internal.abi.Abi_uncommontype.UncommonType);
    public function new(?mapType:stdgo._internal.internal.abi.Abi_maptype.MapType, ?_u:stdgo._internal.internal.abi.Abi_uncommontype.UncommonType) {
        if (mapType != null) this.mapType = mapType;
        if (_u != null) this._u = _u;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "mapType", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotabidotabi_maptypedotmaptype.__type__stdgodot_internaldotinternaldotabidotAbi_maptypedotMapType }, optional : false }, { name : "_u", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotabidotabi_uncommontypedotuncommontype.__type__stdgodot_internaldotinternaldotabidotAbi_uncommontypedotUncommonType }, optional : false }])));
    public var align(get, never) : () -> stdgo.GoInt;
    @:embedded
    public function get_align():() -> stdgo.GoInt return @:check32 this.mapType.align;
    public var arrayType(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_arraytype.ArrayType>;
    @:embedded
    public function get_arrayType():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_arraytype.ArrayType> return @:check32 this.mapType.arrayType;
    public var chanDir(get, never) : () -> stdgo._internal.internal.abi.Abi_chandir.ChanDir;
    @:embedded
    public function get_chanDir():() -> stdgo._internal.internal.abi.Abi_chandir.ChanDir return @:check32 this.mapType.chanDir;
    public var common(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>;
    @:embedded
    public function get_common():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> return @:check32 this.mapType.common;
    public var exportedMethods(get, never) : () -> stdgo.Slice<stdgo._internal.internal.abi.Abi_method.Method>;
    @:embedded
    public function get_exportedMethods():() -> stdgo.Slice<stdgo._internal.internal.abi.Abi_method.Method> return @:check32 this.mapType.exportedMethods;
    public var fieldAlign(get, never) : () -> stdgo.GoInt;
    @:embedded
    public function get_fieldAlign():() -> stdgo.GoInt return @:check32 this.mapType.fieldAlign;
    public var funcType(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_functype.FuncType>;
    @:embedded
    public function get_funcType():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_functype.FuncType> return @:check32 this.mapType.funcType;
    public var gcSlice(get, never) : (stdgo.GoUIntptr, stdgo.GoUIntptr) -> stdgo.Slice<stdgo.GoUInt8>;
    @:embedded
    public function get_gcSlice():(stdgo.GoUIntptr, stdgo.GoUIntptr) -> stdgo.Slice<stdgo.GoUInt8> return @:check32 this.mapType.gcSlice;
    public var hasName(get, never) : () -> Bool;
    @:embedded
    public function get_hasName():() -> Bool return @:check32 this.mapType.hasName;
    public var hashMightPanic(get, never) : () -> Bool;
    @:embedded
    public function get_hashMightPanic():() -> Bool return @:check32 this.mapType.hashMightPanic;
    public var ifaceIndir(get, never) : () -> Bool;
    @:embedded
    public function get_ifaceIndir():() -> Bool return @:check32 this.mapType.ifaceIndir;
    public var indirectElem(get, never) : () -> Bool;
    @:embedded
    public function get_indirectElem():() -> Bool return @:check32 this.mapType.indirectElem;
    public var indirectKey(get, never) : () -> Bool;
    @:embedded
    public function get_indirectKey():() -> Bool return @:check32 this.mapType.indirectKey;
    public var interfaceType(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType>;
    @:embedded
    public function get_interfaceType():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType> return @:check32 this.mapType.interfaceType;
    public var isDirectIface(get, never) : () -> Bool;
    @:embedded
    public function get_isDirectIface():() -> Bool return @:check32 this.mapType.isDirectIface;
    public var kind(get, never) : () -> stdgo._internal.internal.abi.Abi_kind.Kind;
    @:embedded
    public function get_kind():() -> stdgo._internal.internal.abi.Abi_kind.Kind return @:check32 this.mapType.kind;
    public var len(get, never) : () -> stdgo.GoInt;
    @:embedded
    public function get_len():() -> stdgo.GoInt return @:check32 this.mapType.len;
    public var needKeyUpdate(get, never) : () -> Bool;
    @:embedded
    public function get_needKeyUpdate():() -> Bool return @:check32 this.mapType.needKeyUpdate;
    public var numMethod(get, never) : () -> stdgo.GoInt;
    @:embedded
    public function get_numMethod():() -> stdgo.GoInt return @:check32 this.mapType.numMethod;
    public var pointers(get, never) : () -> Bool;
    @:embedded
    public function get_pointers():() -> Bool return @:check32 this.mapType.pointers;
    public var reflexiveKey(get, never) : () -> Bool;
    @:embedded
    public function get_reflexiveKey():() -> Bool return @:check32 this.mapType.reflexiveKey;
    public var size(get, never) : () -> stdgo.GoUIntptr;
    @:embedded
    public function get_size():() -> stdgo.GoUIntptr return @:check32 this.mapType.size;
    public var structType(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_structtype.StructType>;
    @:embedded
    public function get_structType():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_structtype.StructType> return @:check32 this.mapType.structType;
    public var uncommon(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_uncommontype.UncommonType>;
    @:embedded
    public function get_uncommon():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_uncommontype.UncommonType> return @:check32 this.mapType.uncommon;
    public function __copy__() {
        return new T_uncommon___localname___T_uncommon___localname___u_8826_8826(mapType, _u);
    }
}

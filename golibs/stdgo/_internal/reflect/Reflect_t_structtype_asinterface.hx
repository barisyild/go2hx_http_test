package stdgo._internal.reflect;
class T_structType_asInterface {
    @:keep
    public dynamic function fieldByName(_name:stdgo.GoString):{ var _0 : stdgo._internal.reflect.Reflect_structfield.StructField; var _1 : Bool; } return @:_0 __self__.value.fieldByName(_name);
    @:keep
    public dynamic function fieldByNameFunc(_match:stdgo.GoString -> Bool):{ var _0 : stdgo._internal.reflect.Reflect_structfield.StructField; var _1 : Bool; } return @:_0 __self__.value.fieldByNameFunc(_match);
    @:keep
    public dynamic function fieldByIndex(_index:stdgo.Slice<stdgo.GoInt>):stdgo._internal.reflect.Reflect_structfield.StructField return @:_0 __self__.value.fieldByIndex(_index);
    @:keep
    public dynamic function field(_i:stdgo.GoInt):stdgo._internal.reflect.Reflect_structfield.StructField return @:_0 __self__.value.field(_i);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function uncommon():stdgo.Ref<stdgo._internal.internal.abi.Abi_uncommontype.UncommonType> return @:_0 __self__.value.uncommon();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function size():stdgo.GoUIntptr return @:_0 __self__.value.size();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function pointers():Bool return @:_0 __self__.value.pointers();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function numMethod():stdgo.GoInt return @:_0 __self__.value.numMethod();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function mapType():stdgo.Ref<stdgo._internal.internal.abi.Abi_maptype.MapType> return @:_0 __self__.value.mapType();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function len():stdgo.GoInt return @:_0 __self__.value.len();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function kind():stdgo._internal.internal.abi.Abi_kind.Kind return @:_0 __self__.value.kind();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function key():stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> return @:_0 __self__.value.key();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function isDirectIface():Bool return @:_0 __self__.value.isDirectIface();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType> return @:_0 __self__.value.interfaceType();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function ifaceIndir():Bool return @:_0 __self__.value.ifaceIndir();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function hasName():Bool return @:_0 __self__.value.hasName();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function gcSlice(_0:stdgo.GoUIntptr, _1:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.gcSlice(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function funcType():stdgo.Ref<stdgo._internal.internal.abi.Abi_functype.FuncType> return @:_0 __self__.value.funcType();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function fieldAlign():stdgo.GoInt return @:_0 __self__.value.fieldAlign();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Abi_method.Method> return @:_0 __self__.value.exportedMethods();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function elem():stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> return @:_0 __self__.value.elem();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function common():stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> return @:_0 __self__.value.common();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function chanDir():stdgo._internal.internal.abi.Abi_chandir.ChanDir return @:_0 __self__.value.chanDir();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function arrayType():stdgo.Ref<stdgo._internal.internal.abi.Abi_arraytype.ArrayType> return @:_0 __self__.value.arrayType();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function align():stdgo.GoInt return @:_0 __self__.value.align();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.reflect.Reflect_t_structtypepointer.T_structTypePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

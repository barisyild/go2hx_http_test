package stdgo._internal.reflect;
class T_interfaceType_asInterface {
    @:keep
    public dynamic function methodByName(_name:stdgo.GoString):{ var _0 : stdgo._internal.reflect.Reflect_method.Method; var _1 : Bool; } return @:_0 __self__.value.methodByName(_name);
    @:keep
    public dynamic function numMethod():stdgo.GoInt return @:_0 __self__.value.numMethod();
    @:keep
    public dynamic function method(_i:stdgo.GoInt):stdgo._internal.reflect.Reflect_method.Method return @:_0 __self__.value.method(_i);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function uncommon():stdgo.Ref<stdgo._internal.internal.abi.Abi_uncommontype.UncommonType> return @:_0 __self__.value.uncommon();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function structType():stdgo.Ref<stdgo._internal.internal.abi.Abi_structtype.StructType> return @:_0 __self__.value.structType();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function size():stdgo.GoUIntptr return @:_0 __self__.value.size();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function pointers():Bool return @:_0 __self__.value.pointers();
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
    var __self__ : stdgo._internal.reflect.Reflect_t_interfacetypepointer.T_interfaceTypePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

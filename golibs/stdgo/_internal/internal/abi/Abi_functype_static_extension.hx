package stdgo._internal.internal.abi;
import stdgo._internal.unsafe.Unsafe;
@:keep @:allow(stdgo._internal.internal.abi.Abi.FuncType_asInterface) class FuncType_static_extension {
    @:keep
    @:tdfield
    static public function isVariadic( _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_functype.FuncType>):Bool {
        @:recv var _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_functype.FuncType> = _t;
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L539"
        return ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).outCount & (32768 : stdgo.GoUInt16) : stdgo.GoUInt16) != ((0 : stdgo.GoUInt16));
    }
    @:keep
    @:tdfield
    static public function outSlice( _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_functype.FuncType>):stdgo.Slice<stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>> {
        @:recv var _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_functype.FuncType> = _t;
        var _outCount = @:assignType (_t.numOut() : stdgo.GoUInt16);
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L528"
        if (_outCount == ((0 : stdgo.GoUInt16))) {
            //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L529"
            return (null : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>>);
        };
        var _uadd = @:assignType (stdgo._internal.unsafe.Unsafe_sizeof.sizeof(new stdgo.AnyInterface((_t : stdgo._internal.internal.abi.Abi_functype.FuncType), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.invalidType))) : stdgo.GoUIntptr);
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L532"
        if (((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type.tFlag & (1 : stdgo._internal.internal.abi.Abi_tflag.TFlag) : stdgo._internal.internal.abi.Abi_tflag.TFlag) != ((0 : stdgo._internal.internal.abi.Abi_tflag.TFlag))) {
            _uadd = (_uadd + (stdgo._internal.unsafe.Unsafe_sizeof.sizeof(new stdgo.AnyInterface((new stdgo._internal.internal.abi.Abi_uncommontype.UncommonType() : stdgo._internal.internal.abi.Abi_uncommontype.UncommonType), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.invalidType)))) : stdgo.GoUIntptr);
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L535"
        return ((stdgo._internal.internal.abi.Abi__addchecked._addChecked((new stdgo.AnyInterface(_t, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))) : stdgo._internal.unsafe.Unsafe.UnsafePointer), _uadd, ("outCount > 0" : stdgo.GoString)).__convert__(stdgo._internal.internal.reflect.GoType.invalidType) : stdgo.Ref<stdgo.GoArray<stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>>>).__slice__((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inCount, ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inCount + _outCount : stdgo.GoUInt16), ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inCount + _outCount : stdgo.GoUInt16)) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>>);
    }
    @:keep
    @:tdfield
    static public function inSlice( _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_functype.FuncType>):stdgo.Slice<stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>> {
        @:recv var _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_functype.FuncType> = _t;
        var _uadd = @:assignType (stdgo._internal.unsafe.Unsafe_sizeof.sizeof(new stdgo.AnyInterface((_t : stdgo._internal.internal.abi.Abi_functype.FuncType), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.invalidType))) : stdgo.GoUIntptr);
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L518"
        if (((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type.tFlag & (1 : stdgo._internal.internal.abi.Abi_tflag.TFlag) : stdgo._internal.internal.abi.Abi_tflag.TFlag) != ((0 : stdgo._internal.internal.abi.Abi_tflag.TFlag))) {
            _uadd = (_uadd + (stdgo._internal.unsafe.Unsafe_sizeof.sizeof(new stdgo.AnyInterface((new stdgo._internal.internal.abi.Abi_uncommontype.UncommonType() : stdgo._internal.internal.abi.Abi_uncommontype.UncommonType), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.invalidType)))) : stdgo.GoUIntptr);
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L521"
        if ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inCount == ((0 : stdgo.GoUInt16))) {
            //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L522"
            return (null : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>>);
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L524"
        return ((stdgo._internal.internal.abi.Abi__addchecked._addChecked((new stdgo.AnyInterface(_t, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))) : stdgo._internal.unsafe.Unsafe.UnsafePointer), _uadd, ("t.inCount > 0" : stdgo.GoString)).__convert__(stdgo._internal.internal.reflect.GoType.invalidType) : stdgo.Ref<stdgo.GoArray<stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>>>).__slice__(0, (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inCount, (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inCount) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>>);
    }
    @:keep
    @:tdfield
    static public function out( _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_functype.FuncType>, _i:stdgo.GoInt):stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> {
        @:recv var _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_functype.FuncType> = _t;
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L513"
        return (_t.outSlice()[(_i : stdgo.GoInt)]);
    }
    @:keep
    @:tdfield
    static public function numOut( _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_functype.FuncType>):stdgo.GoInt {
        @:recv var _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_functype.FuncType> = _t;
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L509"
        return (((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).outCount & (32767 : stdgo.GoUInt16) : stdgo.GoUInt16) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function numIn( _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_functype.FuncType>):stdgo.GoInt {
        @:recv var _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_functype.FuncType> = _t;
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L505"
        return ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inCount : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function in_( _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_functype.FuncType>, _i:stdgo.GoInt):stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> {
        @:recv var _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_functype.FuncType> = _t;
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L501"
        return _t.inSlice()[(_i : stdgo.GoInt)];
    }
    @:embedded
    @:embeddededffieldsffun
    public static function uncommon( __self__:stdgo._internal.internal.abi.Abi_functype.FuncType):stdgo.Ref<stdgo._internal.internal.abi.Abi_uncommontype.UncommonType> return @:_5 __self__.uncommon();
    @:embedded
    @:embeddededffieldsffun
    public static function structType( __self__:stdgo._internal.internal.abi.Abi_functype.FuncType):stdgo.Ref<stdgo._internal.internal.abi.Abi_structtype.StructType> return @:_5 __self__.structType();
    @:embedded
    @:embeddededffieldsffun
    public static function size( __self__:stdgo._internal.internal.abi.Abi_functype.FuncType):stdgo.GoUIntptr return @:_5 __self__.size();
    @:embedded
    @:embeddededffieldsffun
    public static function pointers( __self__:stdgo._internal.internal.abi.Abi_functype.FuncType):Bool return @:_5 __self__.pointers();
    @:embedded
    @:embeddededffieldsffun
    public static function numMethod( __self__:stdgo._internal.internal.abi.Abi_functype.FuncType):stdgo.GoInt return @:_5 __self__.numMethod();
    @:embedded
    @:embeddededffieldsffun
    public static function mapType( __self__:stdgo._internal.internal.abi.Abi_functype.FuncType):stdgo.Ref<stdgo._internal.internal.abi.Abi_maptype.MapType> return @:_5 __self__.mapType();
    @:embedded
    @:embeddededffieldsffun
    public static function len( __self__:stdgo._internal.internal.abi.Abi_functype.FuncType):stdgo.GoInt return @:_5 __self__.len();
    @:embedded
    @:embeddededffieldsffun
    public static function kind( __self__:stdgo._internal.internal.abi.Abi_functype.FuncType):stdgo._internal.internal.abi.Abi_kind.Kind return @:_5 __self__.kind();
    @:embedded
    @:embeddededffieldsffun
    public static function key( __self__:stdgo._internal.internal.abi.Abi_functype.FuncType):stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> return @:_5 __self__.key();
    @:embedded
    @:embeddededffieldsffun
    public static function isDirectIface( __self__:stdgo._internal.internal.abi.Abi_functype.FuncType):Bool return @:_5 __self__.isDirectIface();
    @:embedded
    @:embeddededffieldsffun
    public static function interfaceType( __self__:stdgo._internal.internal.abi.Abi_functype.FuncType):stdgo.Ref<stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType> return @:_5 __self__.interfaceType();
    @:embedded
    @:embeddededffieldsffun
    public static function ifaceIndir( __self__:stdgo._internal.internal.abi.Abi_functype.FuncType):Bool return @:_5 __self__.ifaceIndir();
    @:embedded
    @:embeddededffieldsffun
    public static function hasName( __self__:stdgo._internal.internal.abi.Abi_functype.FuncType):Bool return @:_5 __self__.hasName();
    @:embedded
    @:embeddededffieldsffun
    public static function gcSlice( __self__:stdgo._internal.internal.abi.Abi_functype.FuncType, _0:stdgo.GoUIntptr, _1:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8> return @:_5 __self__.gcSlice(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function funcType( __self__:stdgo._internal.internal.abi.Abi_functype.FuncType):stdgo.Ref<stdgo._internal.internal.abi.Abi_functype.FuncType> return @:_5 __self__.funcType();
    @:embedded
    @:embeddededffieldsffun
    public static function fieldAlign( __self__:stdgo._internal.internal.abi.Abi_functype.FuncType):stdgo.GoInt return @:_5 __self__.fieldAlign();
    @:embedded
    @:embeddededffieldsffun
    public static function exportedMethods( __self__:stdgo._internal.internal.abi.Abi_functype.FuncType):stdgo.Slice<stdgo._internal.internal.abi.Abi_method.Method> return @:_5 __self__.exportedMethods();
    @:embedded
    @:embeddededffieldsffun
    public static function elem( __self__:stdgo._internal.internal.abi.Abi_functype.FuncType):stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> return @:_5 __self__.elem();
    @:embedded
    @:embeddededffieldsffun
    public static function common( __self__:stdgo._internal.internal.abi.Abi_functype.FuncType):stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> return @:_5 __self__.common();
    @:embedded
    @:embeddededffieldsffun
    public static function chanDir( __self__:stdgo._internal.internal.abi.Abi_functype.FuncType):stdgo._internal.internal.abi.Abi_chandir.ChanDir return @:_5 __self__.chanDir();
    @:embedded
    @:embeddededffieldsffun
    public static function arrayType( __self__:stdgo._internal.internal.abi.Abi_functype.FuncType):stdgo.Ref<stdgo._internal.internal.abi.Abi_arraytype.ArrayType> return @:_5 __self__.arrayType();
    @:embedded
    @:embeddededffieldsffun
    public static function align( __self__:stdgo._internal.internal.abi.Abi_functype.FuncType):stdgo.GoInt return @:_5 __self__.align();
}

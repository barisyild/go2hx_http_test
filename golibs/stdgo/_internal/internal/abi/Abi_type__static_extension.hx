package stdgo._internal.internal.abi;
import stdgo._internal.unsafe.Unsafe;
@:keep @:allow(stdgo._internal.internal.abi.Abi.Type__asInterface) class Type__static_extension {
    @:keep
    @:tdfield
    static public function key( _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>):stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> {
        @:recv var _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> = _t;
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L472"
        if (_t.kind() == ((21u32 : stdgo._internal.internal.abi.Abi_kind.Kind))) {
            //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L473"
            return ((new stdgo.AnyInterface(_t, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.GoType.invalidType) : stdgo.Ref<stdgo._internal.internal.abi.Abi_maptype.MapType>).key;
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L475"
        return null;
    }
    @:keep
    @:tdfield
    static public function numMethod( _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>):stdgo.GoInt {
        @:recv var _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> = _t;
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L430"
        if (_t.kind() == ((20u32 : stdgo._internal.internal.abi.Abi_kind.Kind))) {
            var _tt = ((new stdgo.AnyInterface(_t, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.GoType.invalidType) : stdgo.Ref<stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType>);
            //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L432"
            return _tt.numMethod();
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L434"
        return (_t.exportedMethods().length);
    }
    @:keep
    @:tdfield
    static public function exportedMethods( _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>):stdgo.Slice<stdgo._internal.internal.abi.Abi_method.Method> {
        @:recv var _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> = _t;
        var _ut = _t.uncommon();
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L423"
        if (({
            final value = _ut;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L424"
            return (null : stdgo.Slice<stdgo._internal.internal.abi.Abi_method.Method>);
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L426"
        return _ut.exportedMethods();
    }
    @:keep
    @:tdfield
    static public function fieldAlign( _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>):stdgo.GoInt {
        @:recv var _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> = _t;
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L413"
        return ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).fieldAlign_ : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function align( _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>):stdgo.GoInt {
        @:recv var _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> = _t;
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L411"
        return ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).align_ : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function size( _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>):stdgo.GoUIntptr {
        @:recv var _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> = _t;
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L408"
        return (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).size_;
    }
    @:keep
    @:tdfield
    static public function interfaceType( _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>):stdgo.Ref<stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType> {
        @:recv var _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> = _t;
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L401"
        if (_t.kind() != ((20u32 : stdgo._internal.internal.abi.Abi_kind.Kind))) {
            //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L402"
            return null;
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L404"
        return ((new stdgo.AnyInterface(_t, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.GoType.invalidType) : stdgo.Ref<stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType>);
    }
    @:keep
    @:tdfield
    static public function funcType( _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>):stdgo.Ref<stdgo._internal.internal.abi.Abi_functype.FuncType> {
        @:recv var _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> = _t;
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L393"
        if (_t.kind() != ((19u32 : stdgo._internal.internal.abi.Abi_kind.Kind))) {
            //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L394"
            return null;
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L396"
        return ((new stdgo.AnyInterface(_t, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.GoType.invalidType) : stdgo.Ref<stdgo._internal.internal.abi.Abi_functype.FuncType>);
    }
    @:keep
    @:tdfield
    static public function arrayType( _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>):stdgo.Ref<stdgo._internal.internal.abi.Abi_arraytype.ArrayType> {
        @:recv var _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> = _t;
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L385"
        if (_t.kind() != ((17u32 : stdgo._internal.internal.abi.Abi_kind.Kind))) {
            //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L386"
            return null;
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L388"
        return ((new stdgo.AnyInterface(_t, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.GoType.invalidType) : stdgo.Ref<stdgo._internal.internal.abi.Abi_arraytype.ArrayType>);
    }
    @:keep
    @:tdfield
    static public function mapType( _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>):stdgo.Ref<stdgo._internal.internal.abi.Abi_maptype.MapType> {
        @:recv var _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> = _t;
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L377"
        if (_t.kind() != ((21u32 : stdgo._internal.internal.abi.Abi_kind.Kind))) {
            //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L378"
            return null;
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L380"
        return ((new stdgo.AnyInterface(_t, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.GoType.invalidType) : stdgo.Ref<stdgo._internal.internal.abi.Abi_maptype.MapType>);
    }
    @:keep
    @:tdfield
    static public function structType( _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>):stdgo.Ref<stdgo._internal.internal.abi.Abi_structtype.StructType> {
        @:recv var _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> = _t;
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L369"
        if (_t.kind() != ((25u32 : stdgo._internal.internal.abi.Abi_kind.Kind))) {
            //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L370"
            return null;
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L372"
        return ((new stdgo.AnyInterface(_t, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.GoType.invalidType) : stdgo.Ref<stdgo._internal.internal.abi.Abi_structtype.StructType>);
    }
    @:keep
    @:tdfield
    static public function elem( _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>):stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> {
        @:recv var _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> = _t;
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L347"
        {
            final __value__ = _t.kind();
            if (__value__ == ((17u32 : stdgo._internal.internal.abi.Abi_kind.Kind))) {
                var _tt = ((new stdgo.AnyInterface(_t, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.GoType.invalidType) : stdgo.Ref<stdgo._internal.internal.abi.Abi_arraytype.ArrayType>);
                //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L350"
                return (@:checkr _tt ?? throw stdgo.Error._nullPointerDereference.__underlying__()).elem;
            } else if (__value__ == ((18u32 : stdgo._internal.internal.abi.Abi_kind.Kind))) {
                var _tt = ((new stdgo.AnyInterface(_t, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.GoType.invalidType) : stdgo.Ref<stdgo._internal.internal.abi.Abi_chantype.ChanType>);
                //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L353"
                return (@:checkr _tt ?? throw stdgo.Error._nullPointerDereference.__underlying__()).elem;
            } else if (__value__ == ((21u32 : stdgo._internal.internal.abi.Abi_kind.Kind))) {
                var _tt = ((new stdgo.AnyInterface(_t, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.GoType.invalidType) : stdgo.Ref<stdgo._internal.internal.abi.Abi_maptype.MapType>);
                //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L356"
                return (@:checkr _tt ?? throw stdgo.Error._nullPointerDereference.__underlying__()).elem;
            } else if (__value__ == ((22u32 : stdgo._internal.internal.abi.Abi_kind.Kind))) {
                var _tt = ((new stdgo.AnyInterface(_t, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.GoType.invalidType) : stdgo.Ref<stdgo._internal.internal.abi.Abi_ptrtype.PtrType>);
                //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L359"
                return (@:checkr _tt ?? throw stdgo.Error._nullPointerDereference.__underlying__()).elem;
            } else if (__value__ == ((23u32 : stdgo._internal.internal.abi.Abi_kind.Kind))) {
                var _tt = ((new stdgo.AnyInterface(_t, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.GoType.invalidType) : stdgo.Ref<stdgo._internal.internal.abi.Abi_slicetype.SliceType>);
                //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L362"
                return (@:checkr _tt ?? throw stdgo.Error._nullPointerDereference.__underlying__()).elem;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L364"
        return null;
    }
    @:keep
    @:tdfield
    static public function uncommon( _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>):stdgo.Ref<stdgo._internal.internal.abi.Abi_uncommontype.UncommonType> {
        @:recv var _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> = _t;
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L288"
        if (((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tFlag & (1 : stdgo._internal.internal.abi.Abi_tflag.TFlag) : stdgo._internal.internal.abi.Abi_tflag.TFlag) == ((0 : stdgo._internal.internal.abi.Abi_tflag.TFlag))) {
            //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L289"
            return null;
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L291"
        {
            final __value__ = _t.kind();
            if (__value__ == ((25u32 : stdgo._internal.internal.abi.Abi_kind.Kind))) {
                //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L293"
                return (stdgo.Go.setRef(((new stdgo.AnyInterface(_t, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.GoType.invalidType) : stdgo.Ref<stdgo._internal.internal.abi.Abi_t_structtypeuncommon.T_structTypeUncommon>)._u, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotabidotabi_uncommontypedotuncommontype.__type__stdgodot_internaldotinternaldotabidotAbi_uncommontypedotUncommonType })) : stdgo.Ref<stdgo._internal.internal.abi.Abi_uncommontype.UncommonType>);
            } else if (__value__ == ((22u32 : stdgo._internal.internal.abi.Abi_kind.Kind))) {
                {};
                //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L299"
                return (stdgo.Go.setRef(((new stdgo.AnyInterface(_t, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.GoType.invalidType) : stdgo.Ref<stdgo._internal.internal.abi.Abi_t_uncommon___localname___u_8324.T_uncommon___localname___u_8324>)._u, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotabidotabi_uncommontypedotuncommontype.__type__stdgodot_internaldotinternaldotabidotAbi_uncommontypedotUncommonType })) : stdgo.Ref<stdgo._internal.internal.abi.Abi_uncommontype.UncommonType>);
            } else if (__value__ == ((19u32 : stdgo._internal.internal.abi.Abi_kind.Kind))) {
                {};
                //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L305"
                return (stdgo.Go.setRef(((new stdgo.AnyInterface(_t, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.GoType.invalidType) : stdgo.Ref<stdgo._internal.internal.abi.Abi_t_uncommon___localname___u_8423.T_uncommon___localname___u_8423>)._u, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotabidotabi_uncommontypedotuncommontype.__type__stdgodot_internaldotinternaldotabidotAbi_uncommontypedotUncommonType })) : stdgo.Ref<stdgo._internal.internal.abi.Abi_uncommontype.UncommonType>);
            } else if (__value__ == ((23u32 : stdgo._internal.internal.abi.Abi_kind.Kind))) {
                {};
                //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L311"
                return (stdgo.Go.setRef(((new stdgo.AnyInterface(_t, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.GoType.invalidType) : stdgo.Ref<stdgo._internal.internal.abi.Abi_t_uncommon___localname___u_8524.T_uncommon___localname___u_8524>)._u, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotabidotabi_uncommontypedotuncommontype.__type__stdgodot_internaldotinternaldotabidotAbi_uncommontypedotUncommonType })) : stdgo.Ref<stdgo._internal.internal.abi.Abi_uncommontype.UncommonType>);
            } else if (__value__ == ((17u32 : stdgo._internal.internal.abi.Abi_kind.Kind))) {
                {};
                //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L317"
                return (stdgo.Go.setRef(((new stdgo.AnyInterface(_t, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.GoType.invalidType) : stdgo.Ref<stdgo._internal.internal.abi.Abi_t_uncommon___localname___u_8626.T_uncommon___localname___u_8626>)._u, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotabidotabi_uncommontypedotuncommontype.__type__stdgodot_internaldotinternaldotabidotAbi_uncommontypedotUncommonType })) : stdgo.Ref<stdgo._internal.internal.abi.Abi_uncommontype.UncommonType>);
            } else if (__value__ == ((18u32 : stdgo._internal.internal.abi.Abi_kind.Kind))) {
                {};
                //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L323"
                return (stdgo.Go.setRef(((new stdgo.AnyInterface(_t, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.GoType.invalidType) : stdgo.Ref<stdgo._internal.internal.abi.Abi_t_uncommon___localname___u_8727.T_uncommon___localname___u_8727>)._u, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotabidotabi_uncommontypedotuncommontype.__type__stdgodot_internaldotinternaldotabidotAbi_uncommontypedotUncommonType })) : stdgo.Ref<stdgo._internal.internal.abi.Abi_uncommontype.UncommonType>);
            } else if (__value__ == ((21u32 : stdgo._internal.internal.abi.Abi_kind.Kind))) {
                {};
                //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L329"
                return (stdgo.Go.setRef(((new stdgo.AnyInterface(_t, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.GoType.invalidType) : stdgo.Ref<stdgo._internal.internal.abi.Abi_t_uncommon___localname___u_8826.T_uncommon___localname___u_8826>)._u, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotabidotabi_uncommontypedotuncommontype.__type__stdgodot_internaldotinternaldotabidotAbi_uncommontypedotUncommonType })) : stdgo.Ref<stdgo._internal.internal.abi.Abi_uncommontype.UncommonType>);
            } else if (__value__ == ((20u32 : stdgo._internal.internal.abi.Abi_kind.Kind))) {
                {};
                //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L335"
                return (stdgo.Go.setRef(((new stdgo.AnyInterface(_t, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.GoType.invalidType) : stdgo.Ref<stdgo._internal.internal.abi.Abi_t_uncommon___localname___u_8930.T_uncommon___localname___u_8930>)._u, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotabidotabi_uncommontypedotuncommontype.__type__stdgodot_internaldotinternaldotabidotAbi_uncommontypedotUncommonType })) : stdgo.Ref<stdgo._internal.internal.abi.Abi_uncommontype.UncommonType>);
            } else {
                {};
                //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L341"
                return (stdgo.Go.setRef(((new stdgo.AnyInterface(_t, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.GoType.invalidType) : stdgo.Ref<stdgo._internal.internal.abi.Abi_t_uncommon___localname___u_9033.T_uncommon___localname___u_9033>)._u, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotabidotabi_uncommontypedotuncommontype.__type__stdgodot_internaldotinternaldotabidotAbi_uncommontypedotUncommonType })) : stdgo.Ref<stdgo._internal.internal.abi.Abi_uncommontype.UncommonType>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function chanDir( _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>):stdgo._internal.internal.abi.Abi_chandir.ChanDir {
        @:recv var _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> = _t;
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L279"
        if (_t.kind() == ((18u32 : stdgo._internal.internal.abi.Abi_kind.Kind))) {
            var _ch = ((new stdgo.AnyInterface(_t, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.GoType.invalidType) : stdgo.Ref<stdgo._internal.internal.abi.Abi_chantype.ChanType>);
            //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L281"
            return (@:checkr _ch ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dir;
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L283"
        return (0 : stdgo._internal.internal.abi.Abi_chandir.ChanDir);
    }
    @:keep
    @:tdfield
    static public function common( _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>):stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> {
        @:recv var _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> = _t;
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L253"
        return _t;
    }
    @:keep
    @:tdfield
    static public function len( _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>):stdgo.GoInt {
        @:recv var _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> = _t;
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L246"
        if (_t.kind() == ((17u32 : stdgo._internal.internal.abi.Abi_kind.Kind))) {
            //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L247"
            return (((new stdgo.AnyInterface(_t, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.GoType.invalidType) : stdgo.Ref<stdgo._internal.internal.abi.Abi_arraytype.ArrayType>).len : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L249"
        return (0 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function gcSlice( _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>, _begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> = _t;
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L182"
        return (stdgo._internal.internal.abi.Abi__unsafeslicefor._unsafeSliceFor((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).gCData, (_end : stdgo.GoInt)).__slice__(_begin) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function isDirectIface( _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>):Bool {
        @:recv var _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> = _t;
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L178"
        return ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).kind_ & (32 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8));
    }
    @:keep
    @:tdfield
    static public function ifaceIndir( _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>):Bool {
        @:recv var _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> = _t;
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L173"
        return ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).kind_ & (32 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((0 : stdgo.GoUInt8));
    }
    @:keep
    @:tdfield
    static public function pointers( _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>):Bool {
        @:recv var _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> = _t;
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L169"
        return (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).ptrBytes != ((new stdgo.GoUIntptr(0) : stdgo.GoUIntptr));
    }
    @:keep
    @:tdfield
    static public function hasName( _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>):Bool {
        @:recv var _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> = _t;
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L166"
        return ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tFlag & (4 : stdgo._internal.internal.abi.Abi_tflag.TFlag) : stdgo._internal.internal.abi.Abi_tflag.TFlag) != ((0 : stdgo._internal.internal.abi.Abi_tflag.TFlag));
    }
    @:keep
    @:tdfield
    static public function kind( _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>):stdgo._internal.internal.abi.Abi_kind.Kind {
        @:recv var _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> = _t;
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L163"
        return (((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).kind_ & (31 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo._internal.internal.abi.Abi_kind.Kind);
    }
}

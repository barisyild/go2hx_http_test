package _internal;
var _bufPool : _internal.Interface17.T_ = ({ new_ : function():stdgo.AnyInterface {
    //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface17.go#L16"
    return new stdgo.AnyInterface(stdgo.Go.pointer(("" : stdgo.GoString)), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) })));
} } : _internal.Interface17.T_);
@:keep class T_mapInterface_static_extension {
    @:interfacetypeffun
    static public function _compare(t:_internal.Interface17.T_mapInterface, _new_:stdgo.AnyInterface):Void t._compare(_new_);
}
@:interface typedef T_mapInterface = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function _compare(_new_:stdgo.AnyInterface):Void;
};
@:structInit @:using(_internal.Interface17.T__static_extension) @:using(_internal.Interface17.T__static_extension) class T_ {
    public var new_ : () -> stdgo.AnyInterface = null;
    public function new(?new_:() -> stdgo.AnyInterface) {
        if (new_ != null) this.new_ = new_;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "new_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [stdgo._internal.internal.reflect.GoType.interfaceType(true, [])] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false }])));
    public function __copy__() {
        return new T_(new_);
    }
}
function main():Void {
        _internal.Interface17._bufPool;
    }
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = _internal.Interface17._bufPool;
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
class T__asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface17.T_Pointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Interface17.T__static_extension) @:using(_internal.Interface17.T_Pointer_static_extension) typedef T_Pointer = stdgo.Pointer<_internal.Interface17.T_>;
@:keep @:allow(_internal.Interface17.T__asInterface) class T__static_extension {

}
class T_Pointer_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface17.T_PointerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Interface17.T_Pointer_static_extension) typedef T_PointerPointer = stdgo.Pointer<_internal.Interface17.T_Pointer>;
@:keep @:allow(_internal.Interface17.T_Pointer_asInterface) class T_Pointer_static_extension {

}

package _internal;
@:keep class T_gcmAble_static_extension {
    @:interfacetypeffun
    static public function newGCM(t:_internal.Interface19.T_gcmAble, _nonceSize:stdgo.GoInt, _tagSize:stdgo.GoInt):{ var _0 : stdgo._internal.crypto.cipher.Cipher_aead.AEAD; var _1 : stdgo.Error; } return t.newGCM(_nonceSize, _tagSize);
}
@:interface typedef T_gcmAble = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function newGCM(_nonceSize:stdgo.GoInt, _tagSize:stdgo.GoInt):{ var _0 : stdgo._internal.crypto.cipher.Cipher_aead.AEAD; var _1 : stdgo.Error; };
};
@:structInit @:using(_internal.Interface19.T_testBlock_static_extension) @:using(_internal.Interface19.T_testBlock_static_extension) class T_testBlock {
    public function new() {}
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([])));
    public function __copy__() {
        return new T_testBlock();
    }
}
@:structInit @:using(_internal.Interface19.T_testAEAD_static_extension) @:using(_internal.Interface19.T_testAEAD_static_extension) class T_testAEAD {
    public function new() {}
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([])));
    public function __copy__() {
        return new T_testAEAD();
    }
}
function main():Void {
        var _b = @:assignType (stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.Interface19.T_testBlock() : _internal.Interface19.T_testBlock), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotinterface19dott_testblock.__type___internaldotInterface19dotT_testBlock })) : stdgo.Ref<_internal.Interface19.T_testBlock>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotinterface19dott_testblock.__type___internaldotInterface19dotT_testBlock })) : stdgo._internal.crypto.cipher.Cipher_block.Block);
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface19.go#L7"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = _b;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _internal.gotype.Gotype___type___internaldotinterface19dott_gcmable.__type___internaldotInterface19dotT_gcmAble) : _internal.Interface19.T_gcmAble), _1 : true };
            } catch(__exception__) {
                { _0 : (null : _internal.Interface19.T_gcmAble), _1 : false };
            }, __0 = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface19.go#L8"
                throw new stdgo.AnyInterface(("testBlock does not implement the gcmAble interface" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
        };
    }
class T_testBlock_asInterface {
    @:keep
    public dynamic function newGCM(_0:stdgo.GoInt, _1:stdgo.GoInt):{ var _0 : stdgo._internal.crypto.cipher.Cipher_aead.AEAD; var _1 : stdgo.Error; } return @:_0 __self__.value.newGCM(_0, _1);
    @:keep
    public dynamic function decrypt(_a:stdgo.Slice<stdgo.GoUInt8>, _b:stdgo.Slice<stdgo.GoUInt8>):Void @:_0 __self__.value.decrypt(_a, _b);
    @:keep
    public dynamic function encrypt(_a:stdgo.Slice<stdgo.GoUInt8>, _b:stdgo.Slice<stdgo.GoUInt8>):Void @:_0 __self__.value.encrypt(_a, _b);
    @:keep
    public dynamic function blockSize():stdgo.GoInt return @:_0 __self__.value.blockSize();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface19.T_testBlockPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Interface19.T_testBlock_static_extension) @:using(_internal.Interface19.T_testBlockPointer_static_extension) typedef T_testBlockPointer = stdgo.Pointer<_internal.Interface19.T_testBlock>;
@:keep @:allow(_internal.Interface19.T_testBlock_asInterface) class T_testBlock_static_extension {
    @:keep
    @:tdfield
    static public function newGCM( _:stdgo.Ref<_internal.Interface19.T_testBlock>, _0:stdgo.GoInt, _1:stdgo.GoInt):{ var _0 : stdgo._internal.crypto.cipher.Cipher_aead.AEAD; var _1 : stdgo.Error; } {
        @:recv var _:stdgo.Ref<_internal.Interface19.T_testBlock> = _;
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface19.go#L20"
        return { _0 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.Interface19.T_testAEAD() : _internal.Interface19.T_testAEAD), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotinterface19dott_testaead.__type___internaldotInterface19dotT_testAEAD })) : stdgo.Ref<_internal.Interface19.T_testAEAD>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotinterface19dott_testaead.__type___internaldotInterface19dotT_testAEAD })), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function decrypt( _:stdgo.Ref<_internal.Interface19.T_testBlock>, _a:stdgo.Slice<stdgo.GoUInt8>, _b:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _:stdgo.Ref<_internal.Interface19.T_testBlock> = _;
    }
    @:keep
    @:tdfield
    static public function encrypt( _:stdgo.Ref<_internal.Interface19.T_testBlock>, _a:stdgo.Slice<stdgo.GoUInt8>, _b:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _:stdgo.Ref<_internal.Interface19.T_testBlock> = _;
    }
    @:keep
    @:tdfield
    static public function blockSize( _:stdgo.Ref<_internal.Interface19.T_testBlock>):stdgo.GoInt {
        @:recv var _:stdgo.Ref<_internal.Interface19.T_testBlock> = _;
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface19.go#L16"
        return (0 : stdgo.GoInt);
    }
}
class T_testAEAD_asInterface {
    @:keep
    public dynamic function inAESPackage():Bool return @:_0 __self__.value.inAESPackage();
    @:keep
    public dynamic function open(_a:stdgo.Slice<stdgo.GoUInt8>, _b:stdgo.Slice<stdgo.GoUInt8>, _c:stdgo.Slice<stdgo.GoUInt8>, _d:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.open(_a, _b, _c, _d);
    @:keep
    public dynamic function seal(_a:stdgo.Slice<stdgo.GoUInt8>, _b:stdgo.Slice<stdgo.GoUInt8>, _c:stdgo.Slice<stdgo.GoUInt8>, _d:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.seal(_a, _b, _c, _d);
    @:keep
    public dynamic function overhead():stdgo.GoInt return @:_0 __self__.value.overhead();
    @:keep
    public dynamic function nonceSize():stdgo.GoInt return @:_0 __self__.value.nonceSize();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface19.T_testAEADPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Interface19.T_testAEAD_static_extension) @:using(_internal.Interface19.T_testAEADPointer_static_extension) typedef T_testAEADPointer = stdgo.Pointer<_internal.Interface19.T_testAEAD>;
@:keep @:allow(_internal.Interface19.T_testAEAD_asInterface) class T_testAEAD_static_extension {
    @:keep
    @:tdfield
    static public function inAESPackage( _:stdgo.Ref<_internal.Interface19.T_testAEAD>):Bool {
        @:recv var _:stdgo.Ref<_internal.Interface19.T_testAEAD> = _;
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface19.go#L30"
        return true;
    }
    @:keep
    @:tdfield
    static public function open( _:stdgo.Ref<_internal.Interface19.T_testAEAD>, _a:stdgo.Slice<stdgo.GoUInt8>, _b:stdgo.Slice<stdgo.GoUInt8>, _c:stdgo.Slice<stdgo.GoUInt8>, _d:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _:stdgo.Ref<_internal.Interface19.T_testAEAD> = _;
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface19.go#L29"
        return { _0 : (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function seal( _:stdgo.Ref<_internal.Interface19.T_testAEAD>, _a:stdgo.Slice<stdgo.GoUInt8>, _b:stdgo.Slice<stdgo.GoUInt8>, _c:stdgo.Slice<stdgo.GoUInt8>, _d:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _:stdgo.Ref<_internal.Interface19.T_testAEAD> = _;
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface19.go#L28"
        return (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function overhead( _:stdgo.Ref<_internal.Interface19.T_testAEAD>):stdgo.GoInt {
        @:recv var _:stdgo.Ref<_internal.Interface19.T_testAEAD> = _;
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface19.go#L27"
        return (0 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function nonceSize( _:stdgo.Ref<_internal.Interface19.T_testAEAD>):stdgo.GoInt {
        @:recv var _:stdgo.Ref<_internal.Interface19.T_testAEAD> = _;
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface19.go#L26"
        return (0 : stdgo.GoInt);
    }
}
class T_testBlockPointer_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface19.T_testBlockPointerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Interface19.T_testBlockPointer_static_extension) typedef T_testBlockPointerPointer = stdgo.Pointer<_internal.Interface19.T_testBlockPointer>;
@:keep @:allow(_internal.Interface19.T_testBlockPointer_asInterface) class T_testBlockPointer_static_extension {

}
class T_testAEADPointer_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface19.T_testAEADPointerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Interface19.T_testAEADPointer_static_extension) typedef T_testAEADPointerPointer = stdgo.Pointer<_internal.Interface19.T_testAEADPointer>;
@:keep @:allow(_internal.Interface19.T_testAEADPointer_asInterface) class T_testAEADPointer_static_extension {

}

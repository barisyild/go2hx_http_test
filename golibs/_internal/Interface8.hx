package _internal;
@:named @:using(_internal.Interface8.T_fileSize_static_extension) @:using(_internal.Interface8.T_fileSize_static_extension) typedef T_fileSize = stdgo.GoString;
function main():Void {
        var __tmp__ = _internal.Interface8._t(), _x:stdgo.GoInt = __tmp__._0, __0:stdgo.Error = __tmp__._1;
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface8.go#L11"
        if (_x != ((0 : stdgo.GoInt))) {
            //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface8.go#L12"
            throw new stdgo.AnyInterface(("wrong value" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
    }
function _t():{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _x:_internal.Interface8.T_fileSize = (stdgo.Go.str() : _internal.Interface8.T_fileSize);
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface8.go#L18"
        return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface(_x, _internal.gotype.Gotype___type___internaldotinterface8dott_filesize.__type___internaldotInterface8dotT_fileSize) };
    }
class T_fileSize_asInterface {
    @:keep
    public dynamic function error():stdgo.GoString return @:_0 __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface8.T_fileSizePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Interface8.T_fileSize_static_extension) @:using(_internal.Interface8.T_fileSizePointer_static_extension) typedef T_fileSizePointer = stdgo.Pointer<_internal.Interface8.T_fileSize>;
@:keep @:allow(_internal.Interface8.T_fileSize_asInterface) class T_fileSize_static_extension {
    @:keep
    @:tdfield
    static public function error( _:_internal.Interface8.T_fileSize):stdgo.GoString {
        @:recv var _:_internal.Interface8.T_fileSize = _;
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface8.go#L6"
        return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
    }
}
class T_fileSizePointer_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface8.T_fileSizePointerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Interface8.T_fileSizePointer_static_extension) typedef T_fileSizePointerPointer = stdgo.Pointer<_internal.Interface8.T_fileSizePointer>;
@:keep @:allow(_internal.Interface8.T_fileSizePointer_asInterface) class T_fileSizePointer_static_extension {

}

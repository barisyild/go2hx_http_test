package _internal.githubdotcom.go2hx.go4hx.testbed;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.fmt.Fmt;
@:named @:using(_internal.githubdotcom.go2hx.go4hx.testbed.Testbed.SE_static_extension) @:using(_internal.githubdotcom.go2hx.go4hx.testbed.Testbed.SE_static_extension) typedef SE = stdgo.Slice<stdgo.AnyInterface>;
function main():Void {
        var _fmts = @:assignType (("%]d" : stdgo.GoString) : stdgo.GoString);
        var _val = @:assignType (new stdgo.Slice<stdgo.AnyInterface>(2, 2, ...[new stdgo.AnyInterface((2 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((1 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))]) : _internal.githubdotcom.go2hx.go4hx.testbed.SE);
        //"file:///Users/o/Documents/GitHub/forks/go2hx/testbed/main.go#L13"
        stdgo.Go.println((stdgo._internal.reflect.Reflect_typeof.typeOf(_val[(1 : stdgo.GoInt)]).kind().string() : stdgo.GoString));
        var _s = @:assignType (stdgo._internal.fmt.Fmt_sprintf.sprintf(_fmts?.__copy__(), _val[(0 : stdgo.GoInt)], _val[(1 : stdgo.GoInt)])?.__copy__() : stdgo.GoString);
        //"file:///Users/o/Documents/GitHub/forks/go2hx/testbed/main.go#L15"
        stdgo.Go.println(_s);
        //"file:///Users/o/Documents/GitHub/forks/go2hx/testbed/main.go#L16"
        if (_s != (("%!](int=2)d%!(EXTRA int=1)" : stdgo.GoString))) {
            //"file:///Users/o/Documents/GitHub/forks/go2hx/testbed/main.go#L17"
            throw new stdgo.AnyInterface(("incorrect string" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
    }
class SE_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.githubdotcom.go2hx.go4hx.testbed.Testbed.SEPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.githubdotcom.go2hx.go4hx.testbed.Testbed.SE_static_extension) @:using(_internal.githubdotcom.go2hx.go4hx.testbed.Testbed.SEPointer_static_extension) typedef SEPointer = stdgo.Pointer<_internal.githubdotcom.go2hx.go4hx.testbed.Testbed.SE>;
@:keep @:allow(_internal.githubdotcom.go2hx.go4hx.testbed.Testbed.SE_asInterface) class SE_static_extension {

}
class SEPointer_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.githubdotcom.go2hx.go4hx.testbed.Testbed.SEPointerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.githubdotcom.go2hx.go4hx.testbed.Testbed.SEPointer_static_extension) typedef SEPointerPointer = stdgo.Pointer<_internal.githubdotcom.go2hx.go4hx.testbed.Testbed.SEPointer>;
@:keep @:allow(_internal.githubdotcom.go2hx.go4hx.testbed.Testbed.SEPointer_asInterface) class SEPointer_static_extension {

}

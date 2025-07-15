package _internal;
@:named @:using(_internal.Interface10.T_stringValue_static_extension) @:using(_internal.Interface10.T_stringValue_static_extension) typedef T_stringValue = stdgo.GoString;
function _newStringValue(_val:stdgo.GoString, _p:stdgo.Pointer<stdgo.GoString>):stdgo.Pointer<_internal.Interface10.T_stringValue> {
        _p.value = _val?.__copy__();
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface10.go#L7"
        return new stdgo.Pointer<_internal.Interface10.T_stringValue>(() -> (_p.value : _internal.Interface10.T_stringValue), v -> (_p.value = (v : stdgo.GoString) : _internal.Interface10.T_stringValue));
    }
function main():Void {}
class T_stringValue_asInterface {
    @:keep
    @:pointer
    public dynamic function string():stdgo.GoString return @:_0 __self__.string();
    @:keep
    @:pointer
    public dynamic function get():stdgo.AnyInterface return @:_0 __self__.get();
    @:keep
    @:pointer
    public dynamic function set(_val:stdgo.GoString):stdgo.Error return @:_0 __self__.set(_val);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface10.T_stringValuePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Interface10.T_stringValue_static_extension) @:using(_internal.Interface10.T_stringValuePointer_static_extension) typedef T_stringValuePointer = stdgo.Pointer<_internal.Interface10.T_stringValue>;
@:keep @:allow(_internal.Interface10.T_stringValue_asInterface) class T_stringValue_static_extension {
    @:keep
    @:pointer
    @:tdfield
    static public function string( _s:stdgo.Pointer<_internal.Interface10.T_stringValue>):stdgo.GoString {
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface10.go#L17"
        return (_s.value : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:pointer
    @:tdfield
    static public function get( _s:stdgo.Pointer<_internal.Interface10.T_stringValue>):stdgo.AnyInterface {
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface10.go#L15"
        return new stdgo.AnyInterface((_s.value : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
    }
    @:keep
    @:pointer
    @:tdfield
    static public function set( _s:stdgo.Pointer<_internal.Interface10.T_stringValue>, _val:stdgo.GoString):stdgo.Error {
        _s.value = (_val : _internal.Interface10.T_stringValue);
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface10.go#L12"
        return (null : stdgo.Error);
    }
}
class T_stringValuePointer_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface10.T_stringValuePointerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Interface10.T_stringValuePointer_static_extension) typedef T_stringValuePointerPointer = stdgo.Pointer<_internal.Interface10.T_stringValuePointer>;
@:keep @:allow(_internal.Interface10.T_stringValuePointer_asInterface) class T_stringValuePointer_static_extension {

}

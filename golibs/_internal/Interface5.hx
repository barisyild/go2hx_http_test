package _internal;
@:structInit @:using(_internal.Interface5.T_x_static_extension) @:using(_internal.Interface5.T_x_static_extension) class T_x {
    @:embedded
    public var _int : stdgo.GoInt = 0;
    public function new(?_int:stdgo.GoInt) {
        if (_int != null) this._int = _int;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_int", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new T_x(_int);
    }
}
function main():Void {
        var _y = @:assignType (new _internal.Interface5.T_x((20 : stdgo.GoInt)) : _internal.Interface5.T_x);
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface5.go#L5"
        _y._t();
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface5.go#L6"
        if (_y._int != ((10 : stdgo.GoInt))) {
            //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface5.go#L7"
            throw new stdgo.AnyInterface(("wrong value" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
    }
function _ca(_y:_internal.Interface5.T_x):stdgo.Error {
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface5.go#L12"
        return stdgo.Go.asInterface(_y, _internal.gotype.Gotype___type___internaldotinterface5dott_x.__type___internaldotInterface5dotT_x);
    }
class T_x_asInterface {
    @:keep
    public dynamic function _t():Void @:_0 __self__.value._t();
    @:keep
    public dynamic function error():stdgo.GoString return @:_0 __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface5.T_xPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Interface5.T_x_static_extension) @:using(_internal.Interface5.T_xPointer_static_extension) typedef T_xPointer = stdgo.Pointer<_internal.Interface5.T_x>;
@:keep @:allow(_internal.Interface5.T_x_asInterface) class T_x_static_extension {
    @:keep
    @:tdfield
    static public function _t( _y:stdgo.Ref<_internal.Interface5.T_x>):Void {
        @:recv var _y:stdgo.Ref<_internal.Interface5.T_x> = _y;
        {
            var __tmp__ = (new _internal.Interface5.T_x((10 : stdgo.GoInt)) : _internal.Interface5.T_x);
            var x = (_y : _internal.Interface5.T_x);
            x._int = __tmp__?._int;
        };
    }
    @:keep
    @:tdfield
    static public function error( _y:_internal.Interface5.T_x):stdgo.GoString {
        @:recv var _y:_internal.Interface5.T_x = _y?.__copy__();
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface5.go#L16"
        return ("h" : stdgo.GoString);
    }
}
class T_xPointer_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface5.T_xPointerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Interface5.T_xPointer_static_extension) typedef T_xPointerPointer = stdgo.Pointer<_internal.Interface5.T_xPointer>;
@:keep @:allow(_internal.Interface5.T_xPointer_asInterface) class T_xPointer_static_extension {

}

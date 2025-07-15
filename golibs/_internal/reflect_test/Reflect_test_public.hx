package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_public_static_extension.Public_static_extension) @:using(_internal.reflect_test.Reflect_test_public_static_extension.Public_static_extension) class Public {
    public var x : stdgo.GoInt = 0;
    public var y : stdgo.Pointer<stdgo.Pointer<stdgo.GoInt>> = (null : stdgo.Pointer<stdgo.Pointer<stdgo.GoInt>>);
    @:embedded
    public var _private : _internal.reflect_test.Reflect_test_t_private.T_private = ({} : _internal.reflect_test.Reflect_test_t_private.T_private);
    public function new(?x:stdgo.GoInt, ?y:stdgo.Pointer<stdgo.Pointer<stdgo.GoInt>>, ?_private:_internal.reflect_test.Reflect_test_t_private.T_private) {
        if (x != null) this.x = x;
        if (y != null) this.y = y;
        if (_private != null) this._private = _private;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "x", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "y", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }) }, optional : false }, { name : "_private", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_privatedott_private.__type___internaldotreflect_testdotReflect_test_t_privatedotT_private }, optional : false }])));
    public var p(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_p():() -> Void return @:check32 this._private.p;
    public function __copy__() {
        return new Public(x, y, _private);
    }
}
